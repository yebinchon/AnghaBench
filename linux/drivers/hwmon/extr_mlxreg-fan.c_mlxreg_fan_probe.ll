; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mlxreg_core_platform_data = type { i32 }
%struct.mlxreg_fan = type { %struct.device*, i32, %struct.device* }

@.str = private unnamed_addr constant [30 x i8] c"Failed to get platform data.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"mlxreg_fan\00", align 1
@mlxreg_fan_hwmon_chip_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to register hwmon device\0A\00", align 1
@CONFIG_THERMAL = common dso_local global i32 0, align 4
@mlxreg_fan_cooling_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to register cooling device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mlxreg_fan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_fan_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mlxreg_core_platform_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mlxreg_fan*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.mlxreg_core_platform_data* @dev_get_platdata(%struct.device* %11)
  store %struct.mlxreg_core_platform_data* %12, %struct.mlxreg_core_platform_data** %4, align 8
  %13 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %14 = icmp ne %struct.mlxreg_core_platform_data* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %81

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mlxreg_fan* @devm_kzalloc(%struct.device* %21, i32 24, i32 %22)
  store %struct.mlxreg_fan* %23, %struct.mlxreg_fan** %6, align 8
  %24 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %25 = icmp ne %struct.mlxreg_fan* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %81

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %32 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %31, i32 0, i32 2
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %34 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %37 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %39 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %40 = call i32 @mlxreg_fan_config(%struct.mlxreg_fan* %38, %struct.mlxreg_core_platform_data* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %81

45:                                               ; preds = %29
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %48 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.mlxreg_fan* %47, i32* @mlxreg_fan_hwmon_chip_info, i32* null)
  store %struct.device* %48, %struct.device** %7, align 8
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i64 @IS_ERR(%struct.device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = call i32 @PTR_ERR(%struct.device* %55)
  store i32 %56, i32* %2, align 4
  br label %81

57:                                               ; preds = %45
  %58 = load i32, i32* @CONFIG_THERMAL, align 4
  %59 = call i64 @IS_REACHABLE(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %64 = call %struct.device* @devm_thermal_of_cooling_device_register(%struct.device* %62, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.mlxreg_fan* %63, i32* @mlxreg_fan_cooling_ops)
  %65 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %66 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %65, i32 0, i32 0
  store %struct.device* %64, %struct.device** %66, align 8
  %67 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %68 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %67, i32 0, i32 0
  %69 = load %struct.device*, %struct.device** %68, align 8
  %70 = call i64 @IS_ERR(%struct.device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %61
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %6, align 8
  %76 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %75, i32 0, i32 0
  %77 = load %struct.device*, %struct.device** %76, align 8
  %78 = call i32 @PTR_ERR(%struct.device* %77)
  store i32 %78, i32* %2, align 4
  br label %81

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79, %57
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %72, %52, %43, %26, %15
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.mlxreg_core_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.mlxreg_fan* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mlxreg_fan_config(%struct.mlxreg_fan*, %struct.mlxreg_core_platform_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i8*, %struct.mlxreg_fan*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i64 @IS_REACHABLE(i32) #1

declare dso_local %struct.device* @devm_thermal_of_cooling_device_register(%struct.device*, i32*, i8*, %struct.mlxreg_fan*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
