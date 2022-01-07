; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_dev_cntr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_dev_cntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cntr_entry = type { i32 }
%struct.hfi1_devdata = type { i32* }

@dev_cntrs = common dso_local global %struct.cntr_entry* null, align 8
@CNTR_INVALID_VL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_dev_cntr(%struct.hfi1_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cntr_entry*, align 8
  %8 = alloca i32*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cntr_entry*, %struct.cntr_entry** @dev_cntrs, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %9, i64 %11
  store %struct.cntr_entry* %12, %struct.cntr_entry** %7, align 8
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %14 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.cntr_entry*, %struct.cntr_entry** %7, align 8
  %17 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  store i32* %20, i32** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @CNTR_INVALID_VL, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %8, align 8
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %31 = load %struct.cntr_entry*, %struct.cntr_entry** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @read_dev_port_cntr(%struct.hfi1_devdata* %30, %struct.cntr_entry* %31, i32* %32, %struct.hfi1_devdata* %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @read_dev_port_cntr(%struct.hfi1_devdata*, %struct.cntr_entry*, i32*, %struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
