; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qsfp.c_one_qsfp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qsfp.c_one_qsfp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@QSFP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @one_qsfp_write(%struct.hfi1_pportdata* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_pportdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hfi1_devdata*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %16 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %15, i32 0, i32 0
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  store %struct.hfi1_devdata* %17, %struct.hfi1_devdata** %12, align 8
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %19 = call i32 @qsfp_resource(%struct.hfi1_devdata* %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @QSFP_WAIT, align 4
  %23 = call i32 @acquire_chip_resource(%struct.hfi1_devdata* %20, i32 %21, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %39

28:                                               ; preds = %5
  %29 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @qsfp_write(%struct.hfi1_pportdata* %29, i32 %30, i32 %31, i8* %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @release_chip_resource(%struct.hfi1_devdata* %35, i32 %36)
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %28, %26
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @qsfp_resource(%struct.hfi1_devdata*) #1

declare dso_local i32 @acquire_chip_resource(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @qsfp_write(%struct.hfi1_pportdata*, i32, i32, i8*, i32) #1

declare dso_local i32 @release_chip_resource(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
