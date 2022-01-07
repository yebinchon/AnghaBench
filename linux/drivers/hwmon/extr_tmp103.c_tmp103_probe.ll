; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp103.c_tmp103_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp103.c_tmp103_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.regmap = type { i32 }

@tmp103_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@TMP103_CONF_REG = common dso_local global i32 0, align 4
@TMP103_CONFIG_MASK = common dso_local global i32 0, align 4
@TMP103_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"error writing config register\0A\00", align 1
@tmp103_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tmp103_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp103_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %12, i32* @tmp103_regmap_config)
  store %struct.regmap* %13, %struct.regmap** %8, align 8
  %14 = load %struct.regmap*, %struct.regmap** %8, align 8
  %15 = call i64 @IS_ERR(%struct.regmap* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.regmap*, %struct.regmap** %8, align 8
  %21 = call i32 @PTR_ERR(%struct.regmap* %20)
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.regmap*, %struct.regmap** %8, align 8
  %24 = load i32, i32* @TMP103_CONF_REG, align 4
  %25 = load i32, i32* @TMP103_CONFIG_MASK, align 4
  %26 = load i32, i32* @TMP103_CONFIG, align 4
  %27 = call i32 @regmap_update_bits(%struct.regmap* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %48

35:                                               ; preds = %22
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.regmap*, %struct.regmap** %8, align 8
  %38 = call i32 @i2c_set_clientdata(%struct.i2c_client* %36, %struct.regmap* %37)
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.regmap*, %struct.regmap** %8, align 8
  %44 = load i32, i32* @tmp103_groups, align 4
  %45 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %39, i32 %42, %struct.regmap* %43, i32 %44)
  store %struct.device* %45, %struct.device** %7, align 8
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %35, %30, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.regmap*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.regmap*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
