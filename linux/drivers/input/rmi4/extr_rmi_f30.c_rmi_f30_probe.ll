; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f30.c_rmi_f30_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f30.c_rmi_f30_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, %struct.rmi_device* }
%struct.rmi_device = type { i32 }
%struct.rmi_device_platform_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rmi_driver_data = type { i64 }
%struct.f30_data = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"F30: no input device found, ignoring\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*)* @rmi_f30_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f30_probe(%struct.rmi_function* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmi_function*, align 8
  %4 = alloca %struct.rmi_device*, align 8
  %5 = alloca %struct.rmi_device_platform_data*, align 8
  %6 = alloca %struct.rmi_driver_data*, align 8
  %7 = alloca %struct.f30_data*, align 8
  %8 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %3, align 8
  %9 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %10 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %9, i32 0, i32 1
  %11 = load %struct.rmi_device*, %struct.rmi_device** %10, align 8
  store %struct.rmi_device* %11, %struct.rmi_device** %4, align 8
  %12 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %13 = call %struct.rmi_device_platform_data* @rmi_get_platform_data(%struct.rmi_device* %12)
  store %struct.rmi_device_platform_data* %13, %struct.rmi_device_platform_data** %5, align 8
  %14 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %15 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %14, i32 0, i32 0
  %16 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %15)
  store %struct.rmi_driver_data* %16, %struct.rmi_driver_data** %6, align 8
  %17 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %5, align 8
  %18 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

23:                                               ; preds = %1
  %24 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %25 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %30 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %29, i32 0, i32 0
  %31 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %62

34:                                               ; preds = %23
  %35 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %36 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.f30_data* @devm_kzalloc(i32* %36, i32 8, i32 %37)
  store %struct.f30_data* %38, %struct.f30_data** %7, align 8
  %39 = load %struct.f30_data*, %struct.f30_data** %7, align 8
  %40 = icmp ne %struct.f30_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %62

44:                                               ; preds = %34
  %45 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %46 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.f30_data*, %struct.f30_data** %7, align 8
  %49 = getelementptr inbounds %struct.f30_data, %struct.f30_data* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %51 = load %struct.f30_data*, %struct.f30_data** %7, align 8
  %52 = call i32 @rmi_f30_initialize(%struct.rmi_function* %50, %struct.f30_data* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %62

57:                                               ; preds = %44
  %58 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %59 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %58, i32 0, i32 0
  %60 = load %struct.f30_data*, %struct.f30_data** %7, align 8
  %61 = call i32 @dev_set_drvdata(i32* %59, %struct.f30_data* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %55, %41, %28, %22
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.rmi_device_platform_data* @rmi_get_platform_data(%struct.rmi_device*) #1

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.f30_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @rmi_f30_initialize(%struct.rmi_function*, %struct.f30_data*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.f30_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
