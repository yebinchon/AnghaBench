; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_tc654_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_tc654_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tc654_data = type { i32, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TC654_REG_CONFIG = common dso_local global i32 0, align 4
@tc654_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tc654_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc654_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tc654_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = call i32 @i2c_check_functionality(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.tc654_data* @devm_kzalloc(%struct.device* %22, i32 16, i32 %23)
  store %struct.tc654_data* %24, %struct.tc654_data** %7, align 8
  %25 = load %struct.tc654_data*, %struct.tc654_data** %7, align 8
  %26 = icmp ne %struct.tc654_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %21
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.tc654_data*, %struct.tc654_data** %7, align 8
  %33 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %32, i32 0, i32 2
  store %struct.i2c_client* %31, %struct.i2c_client** %33, align 8
  %34 = load %struct.tc654_data*, %struct.tc654_data** %7, align 8
  %35 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @TC654_REG_CONFIG, align 4
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.tc654_data*, %struct.tc654_data** %7, align 8
  %47 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tc654_data*, %struct.tc654_data** %7, align 8
  %53 = load i32, i32* @tc654_groups, align 4
  %54 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %48, i32 %51, %struct.tc654_data* %52, i32 %53)
  store %struct.device* %54, %struct.device** %8, align 8
  %55 = load %struct.device*, %struct.device** %8, align 8
  %56 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %44, %42, %27, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.tc654_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.tc654_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
