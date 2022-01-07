; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc1403.c_emc1403_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc1403.c_emc1403_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32, i32 }
%struct.thermal_data = type { i32**, i32, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@emc1403_regmap_config = common dso_local global i32 0, align 4
@emc1404_group = common dso_local global i32 0, align 4
@emc1403_group = common dso_local global i32 0, align 4
@emc1402_group = common dso_local global i32 0, align 4
@emc1402_alarm_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s Thermal chip found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @emc1403_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emc1403_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.thermal_data*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.thermal_data* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.thermal_data* %11, %struct.thermal_data** %6, align 8
  %12 = load %struct.thermal_data*, %struct.thermal_data** %6, align 8
  %13 = icmp eq %struct.thermal_data* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = call %struct.device* @devm_regmap_init_i2c(%struct.i2c_client* %18, i32* @emc1403_regmap_config)
  %20 = load %struct.thermal_data*, %struct.thermal_data** %6, align 8
  %21 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %20, i32 0, i32 2
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.thermal_data*, %struct.thermal_data** %6, align 8
  %23 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %22, i32 0, i32 2
  %24 = load %struct.device*, %struct.device** %23, align 8
  %25 = call i64 @IS_ERR(%struct.device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.thermal_data*, %struct.thermal_data** %6, align 8
  %29 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %28, i32 0, i32 2
  %30 = load %struct.device*, %struct.device** %29, align 8
  %31 = call i32 @PTR_ERR(%struct.device* %30)
  store i32 %31, i32* %3, align 4
  br label %88

32:                                               ; preds = %17
  %33 = load %struct.thermal_data*, %struct.thermal_data** %6, align 8
  %34 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %54 [
    i32 128, label %39
    i32 129, label %44
    i32 130, label %49
  ]

39:                                               ; preds = %32
  %40 = load %struct.thermal_data*, %struct.thermal_data** %6, align 8
  %41 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 2
  store i32* @emc1404_group, i32** %43, align 8
  br label %44

44:                                               ; preds = %32, %39
  %45 = load %struct.thermal_data*, %struct.thermal_data** %6, align 8
  %46 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  store i32* @emc1403_group, i32** %48, align 8
  br label %49

49:                                               ; preds = %32, %44
  %50 = load %struct.thermal_data*, %struct.thermal_data** %6, align 8
  %51 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  store i32* @emc1402_group, i32** %53, align 8
  br label %54

54:                                               ; preds = %49, %32
  %55 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 130
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.thermal_data*, %struct.thermal_data** %6, align 8
  %61 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  store i32* @emc1402_alarm_group, i32** %63, align 8
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.thermal_data*, %struct.thermal_data** %6, align 8
  %71 = load %struct.thermal_data*, %struct.thermal_data** %6, align 8
  %72 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %71, i32 0, i32 0
  %73 = load i32**, i32*** %72, align 8
  %74 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %66, i32 %69, %struct.thermal_data* %70, i32** %73)
  store %struct.device* %74, %struct.device** %7, align 8
  %75 = load %struct.device*, %struct.device** %7, align 8
  %76 = call i64 @IS_ERR(%struct.device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = call i32 @PTR_ERR(%struct.device* %79)
  store i32 %80, i32* %3, align 4
  br label %88

81:                                               ; preds = %64
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %85 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %78, %27, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.thermal_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.device* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i32, %struct.thermal_data*, i32**) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
