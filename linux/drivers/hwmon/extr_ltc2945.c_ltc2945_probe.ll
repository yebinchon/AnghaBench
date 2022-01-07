; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.regmap = type { i32 }

@ltc2945_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@LTC2945_FAULT = common dso_local global i32 0, align 4
@ltc2945_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ltc2945_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2945_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.regmap*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %11, i32* @ltc2945_regmap_config)
  store %struct.regmap* %12, %struct.regmap** %8, align 8
  %13 = load %struct.regmap*, %struct.regmap** %8, align 8
  %14 = call i64 @IS_ERR(%struct.regmap* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.regmap*, %struct.regmap** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.regmap* %19)
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.regmap*, %struct.regmap** %8, align 8
  %23 = load i32, i32* @LTC2945_FAULT, align 4
  %24 = call i32 @regmap_write(%struct.regmap* %22, i32 %23, i32 0)
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.regmap*, %struct.regmap** %8, align 8
  %30 = load i32, i32* @ltc2945_groups, align 4
  %31 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %25, i32 %28, %struct.regmap* %29, i32 %30)
  store %struct.device* %31, %struct.device** %7, align 8
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %21, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.regmap*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
