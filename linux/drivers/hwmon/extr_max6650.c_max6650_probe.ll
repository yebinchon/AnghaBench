; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.thermal_cooling_device = type { i32 }
%struct.of_device_id = type { i64 }
%struct.max6650_data = type { i32, i32, %struct.i2c_client* }

@max6650_dt_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max6650_chip_info = common dso_local global i32 0, align 4
@max6650_groups = common dso_local global i32 0, align 4
@CONFIG_THERMAL = common dso_local global i32 0, align 4
@max6650_cooling_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"thermal cooling device register failed: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max6650_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6650_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.thermal_cooling_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca %struct.max6650_data*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load i32, i32* @max6650_dt_match, align 4
  %15 = call i32 @of_match_ptr(i32 %14)
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.of_device_id* @of_match_device(i32 %15, %struct.device* %16)
  store %struct.of_device_id* %17, %struct.of_device_id** %8, align 8
  %18 = load %struct.device*, %struct.device** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.max6650_data* @devm_kzalloc(%struct.device* %18, i32 16, i32 %19)
  store %struct.max6650_data* %20, %struct.max6650_data** %9, align 8
  %21 = load %struct.max6650_data*, %struct.max6650_data** %9, align 8
  %22 = icmp ne %struct.max6650_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %96

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.max6650_data*, %struct.max6650_data** %9, align 8
  %29 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %28, i32 0, i32 2
  store %struct.i2c_client* %27, %struct.i2c_client** %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.max6650_data*, %struct.max6650_data** %9, align 8
  %32 = call i32 @i2c_set_clientdata(%struct.i2c_client* %30, %struct.max6650_data* %31)
  %33 = load %struct.max6650_data*, %struct.max6650_data** %9, align 8
  %34 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %37 = icmp ne %struct.of_device_id* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %40 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  br label %47

43:                                               ; preds = %26
  %44 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %45 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i32 [ %42, %38 ], [ %46, %43 ]
  %49 = load %struct.max6650_data*, %struct.max6650_data** %9, align 8
  %50 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.max6650_data*, %struct.max6650_data** %9, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = call i32 @max6650_init_client(%struct.max6650_data* %51, %struct.i2c_client* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %3, align 4
  br label %96

58:                                               ; preds = %47
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.max6650_data*, %struct.max6650_data** %9, align 8
  %64 = load i32, i32* @max6650_groups, align 4
  %65 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %59, i32 %62, %struct.max6650_data* %63, i32* @max6650_chip_info, i32 %64)
  store %struct.device* %65, %struct.device** %10, align 8
  %66 = load %struct.device*, %struct.device** %10, align 8
  %67 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %96

72:                                               ; preds = %58
  %73 = load i32, i32* @CONFIG_THERMAL, align 4
  %74 = call i64 @IS_ENABLED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load %struct.device*, %struct.device** %7, align 8
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.max6650_data*, %struct.max6650_data** %9, align 8
  %85 = call %struct.thermal_cooling_device* @devm_thermal_of_cooling_device_register(%struct.device* %77, i32 %80, i32 %83, %struct.max6650_data* %84, i32* @max6650_cooling_ops)
  store %struct.thermal_cooling_device* %85, %struct.thermal_cooling_device** %6, align 8
  %86 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  %87 = call i64 @IS_ERR(%struct.thermal_cooling_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %76
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  %92 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %91)
  %93 = call i32 @dev_warn(%struct.device* %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %89, %76
  br label %95

95:                                               ; preds = %94, %72
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %70, %56, %23
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local %struct.max6650_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max6650_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @max6650_init_client(%struct.max6650_data*, %struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i32, %struct.max6650_data*, i32*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.thermal_cooling_device* @devm_thermal_of_cooling_device_register(%struct.device*, i32, i32, %struct.max6650_data*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_cooling_device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_cooling_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
