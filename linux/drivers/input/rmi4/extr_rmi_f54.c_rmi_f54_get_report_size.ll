; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_get_report_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_get_report_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f54_data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rmi_device* }
%struct.rmi_device = type { i32 }
%struct.rmi_driver_data = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.f54_data*)* @rmi_f54_get_report_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rmi_f54_get_report_size(%struct.f54_data* %0) #0 {
  %2 = alloca %struct.f54_data*, align 8
  %3 = alloca %struct.rmi_device*, align 8
  %4 = alloca %struct.rmi_driver_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.f54_data* %0, %struct.f54_data** %2, align 8
  %8 = load %struct.f54_data*, %struct.f54_data** %2, align 8
  %9 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.rmi_device*, %struct.rmi_device** %11, align 8
  store %struct.rmi_device* %12, %struct.rmi_device** %3, align 8
  %13 = load %struct.rmi_device*, %struct.rmi_device** %3, align 8
  %14 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %13, i32 0, i32 0
  %15 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %14)
  store %struct.rmi_driver_data* %15, %struct.rmi_driver_data** %4, align 8
  %16 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %4, align 8
  %17 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.f54_data*, %struct.f54_data** %2, align 8
  %23 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  br label %26

26:                                               ; preds = %21, %20
  %27 = phi i64 [ %18, %20 ], [ %25, %21 ]
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %4, align 8
  %30 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.f54_data*, %struct.f54_data** %2, align 8
  %36 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %34, %33
  %40 = phi i64 [ %31, %33 ], [ %38, %34 ]
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load %struct.f54_data*, %struct.f54_data** %2, align 8
  %43 = load %struct.f54_data*, %struct.f54_data** %2, align 8
  %44 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @rmi_f54_get_reptype(%struct.f54_data* %42, i32 %45)
  switch i32 %46, label %59 [
    i32 132, label %47
    i32 133, label %52
    i32 129, label %52
    i32 128, label %52
    i32 131, label %52
    i32 130, label %52
  ]

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %7, align 8
  br label %60

52:                                               ; preds = %39, %39, %39, %39, %39
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %55, %57
  store i64 %58, i64* %7, align 8
  br label %60

59:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %59, %52, %47
  %61 = load i64, i64* %7, align 8
  ret i64 %61
}

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rmi_f54_get_reptype(%struct.f54_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
