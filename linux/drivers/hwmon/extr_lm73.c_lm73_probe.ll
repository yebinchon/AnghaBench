; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm73.c_lm73_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm73.c_lm73_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm73_data = type { i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LM73_REG_CTRL = common dso_local global i32 0, align 4
@lm73_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sensor '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm73_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm73_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.lm73_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.lm73_data* @devm_kzalloc(%struct.device* %12, i32 16, i32 %13)
  store %struct.lm73_data* %14, %struct.lm73_data** %8, align 8
  %15 = load %struct.lm73_data*, %struct.lm73_data** %8, align 8
  %16 = icmp ne %struct.lm73_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.lm73_data*, %struct.lm73_data** %8, align 8
  %23 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %22, i32 0, i32 2
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.lm73_data*, %struct.lm73_data** %8, align 8
  %25 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load i32, i32* @LM73_REG_CTRL, align 4
  %29 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %57

34:                                               ; preds = %20
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.lm73_data*, %struct.lm73_data** %8, align 8
  %37 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lm73_data*, %struct.lm73_data** %8, align 8
  %43 = load i32, i32* @lm73_groups, align 4
  %44 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %38, i32 %41, %struct.lm73_data* %42, i32 %43)
  store %struct.device* %44, %struct.device** %7, align 8
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i64 @IS_ERR(%struct.device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i32 @PTR_ERR(%struct.device* %49)
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %34
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_info(%struct.device* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %48, %32, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.lm73_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.lm73_data*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
