; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_dev_cntr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_dev_cntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cntr_entry = type { i32 }
%struct.hfi1_devdata = type { i32* }

@dev_cntrs = common dso_local global %struct.cntr_entry* null, align 8
@CNTR_INVALID_VL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_dev_cntr(%struct.hfi1_devdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cntr_entry*, align 8
  %10 = alloca i32*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.cntr_entry*, %struct.cntr_entry** @dev_cntrs, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %11, i64 %13
  store %struct.cntr_entry* %14, %struct.cntr_entry** %9, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %19 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32* %22, i32** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CNTR_INVALID_VL, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %10, align 8
  br label %31

31:                                               ; preds = %26, %4
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %33 = load %struct.cntr_entry*, %struct.cntr_entry** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @write_dev_port_cntr(%struct.hfi1_devdata* %32, %struct.cntr_entry* %33, i32* %34, %struct.hfi1_devdata* %35, i32 %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @write_dev_port_cntr(%struct.hfi1_devdata*, %struct.cntr_entry*, i32*, %struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
