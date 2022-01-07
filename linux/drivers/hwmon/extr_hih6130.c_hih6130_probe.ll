; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_hih6130.c_hih6130_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_hih6130.c_hih6130_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.hih6130 = type { i32, i32, %struct.i2c_client* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"adapter does not support true I2C\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_QUICK = common dso_local global i32 0, align 4
@hih6130_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @hih6130_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hih6130_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.hih6130*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I2C_FUNC_I2C, align 4
  %15 = call i32 @i2c_check_functionality(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 2
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.hih6130* @devm_kzalloc(%struct.device* %24, i32 16, i32 %25)
  store %struct.hih6130* %26, %struct.hih6130** %7, align 8
  %27 = load %struct.hih6130*, %struct.hih6130** %7, align 8
  %28 = icmp ne %struct.hih6130* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %58

32:                                               ; preds = %23
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.hih6130*, %struct.hih6130** %7, align 8
  %35 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %34, i32 0, i32 2
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.hih6130*, %struct.hih6130** %7, align 8
  %37 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %36, i32 0, i32 1
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I2C_FUNC_SMBUS_QUICK, align 4
  %43 = call i32 @i2c_check_functionality(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = load %struct.hih6130*, %struct.hih6130** %7, align 8
  %47 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %32
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hih6130*, %struct.hih6130** %7, align 8
  %54 = load i32, i32* @hih6130_groups, align 4
  %55 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %49, i32 %52, %struct.hih6130* %53, i32 %54)
  store %struct.device* %55, %struct.device** %8, align 8
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %48, %29, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.hih6130* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.hih6130*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
