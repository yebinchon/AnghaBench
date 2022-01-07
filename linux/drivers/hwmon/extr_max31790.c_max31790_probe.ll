; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31790.c_max31790_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max31790_data = type { i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max31790_chip_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max31790_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31790_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.max31790_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %18 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.max31790_data* @devm_kzalloc(%struct.device* %26, i32 16, i32 %27)
  store %struct.max31790_data* %28, %struct.max31790_data** %8, align 8
  %29 = load %struct.max31790_data*, %struct.max31790_data** %8, align 8
  %30 = icmp ne %struct.max31790_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %57

34:                                               ; preds = %25
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.max31790_data*, %struct.max31790_data** %8, align 8
  %37 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %36, i32 0, i32 1
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.max31790_data*, %struct.max31790_data** %8, align 8
  %39 = getelementptr inbounds %struct.max31790_data, %struct.max31790_data* %38, i32 0, i32 0
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.max31790_data*, %struct.max31790_data** %8, align 8
  %43 = call i32 @max31790_init_client(%struct.i2c_client* %41, %struct.max31790_data* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %57

48:                                               ; preds = %34
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.max31790_data*, %struct.max31790_data** %8, align 8
  %54 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %49, i32 %52, %struct.max31790_data* %53, i32* @max31790_chip_info, i32* null)
  store %struct.device* %54, %struct.device** %9, align 8
  %55 = load %struct.device*, %struct.device** %9, align 8
  %56 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %48, %46, %31, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.max31790_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @max31790_init_client(%struct.i2c_client*, %struct.max31790_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i32, %struct.max31790_data*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
