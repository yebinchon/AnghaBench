; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g760a.c_g760a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g760a.c_g760a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.g760a_data = type { i32, i32, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@G760A_DEFAULT_FAN_DIV = common dso_local global i32 0, align 4
@G760A_DEFAULT_CLK = common dso_local global i32 0, align 4
@g760a_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @g760a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g760a_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.g760a_data*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %15 = call i32 @i2c_check_functionality(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.g760a_data* @devm_kzalloc(%struct.device* %21, i32 24, i32 %22)
  store %struct.g760a_data* %23, %struct.g760a_data** %7, align 8
  %24 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %25 = icmp ne %struct.g760a_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %32 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %31, i32 0, i32 3
  store %struct.i2c_client* %30, %struct.i2c_client** %32, align 8
  %33 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %34 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %33, i32 0, i32 2
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load i32, i32* @G760A_DEFAULT_FAN_DIV, align 4
  %37 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %38 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @G760A_DEFAULT_CLK, align 4
  %40 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %41 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.g760a_data*, %struct.g760a_data** %7, align 8
  %47 = load i32, i32* @g760a_groups, align 4
  %48 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %42, i32 %45, %struct.g760a_data* %46, i32 %47)
  store %struct.device* %48, %struct.device** %8, align 8
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %29, %26, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.g760a_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.g760a_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
