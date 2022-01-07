; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95245.c_lm95245_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95245.c_lm95245_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm95245_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm95245_regmap_config = common dso_local global i32 0, align 4
@lm95245_chip_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm95245_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95245_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.lm95245_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.lm95245_data* @devm_kzalloc(%struct.device* %12, i32 8, i32 %13)
  store %struct.lm95245_data* %14, %struct.lm95245_data** %7, align 8
  %15 = load %struct.lm95245_data*, %struct.lm95245_data** %7, align 8
  %16 = icmp ne %struct.lm95245_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %21, i32* @lm95245_regmap_config)
  %23 = load %struct.lm95245_data*, %struct.lm95245_data** %7, align 8
  %24 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.lm95245_data*, %struct.lm95245_data** %7, align 8
  %26 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.lm95245_data*, %struct.lm95245_data** %7, align 8
  %32 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %54

35:                                               ; preds = %20
  %36 = load %struct.lm95245_data*, %struct.lm95245_data** %7, align 8
  %37 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %36, i32 0, i32 0
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.lm95245_data*, %struct.lm95245_data** %7, align 8
  %40 = call i32 @lm95245_init_client(%struct.lm95245_data* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %54

45:                                               ; preds = %35
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lm95245_data*, %struct.lm95245_data** %7, align 8
  %51 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %46, i32 %49, %struct.lm95245_data* %50, i32* @lm95245_chip_info, i32* null)
  store %struct.device* %51, %struct.device** %8, align 8
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %43, %30, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.lm95245_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lm95245_init_client(%struct.lm95245_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i32, %struct.lm95245_data*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
