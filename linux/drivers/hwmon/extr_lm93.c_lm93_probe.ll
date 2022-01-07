; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm93_data = type { void (%struct.lm93_data*, %struct.i2c_client.0*)*, i32, %struct.i2c_client* }
%struct.i2c_client.0 = type opaque

@LM93_SMBUS_FUNC_FULL = common dso_local global i32 0, align 4
@disable_block = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"using SMBus block data transactions\0A\00", align 1
@LM93_SMBUS_FUNC_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"disabled SMBus block data transactions\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"detect failed, smbus byte and/or word data not supported!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm93_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm93_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm93_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.lm93_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.lm93_data*, %struct.i2c_client*)*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @i2c_get_functionality(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @LM93_SMBUS_FUNC_FULL, align 4
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @LM93_SMBUS_FUNC_FULL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @disable_block, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @dev_dbg(%struct.device* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store void (%struct.lm93_data*, %struct.i2c_client*)* @lm93_update_client_full, void (%struct.lm93_data*, %struct.i2c_client*)** %10, align 8
  br label %43

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @LM93_SMBUS_FUNC_MIN, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @LM93_SMBUS_FUNC_MIN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32 @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store void (%struct.lm93_data*, %struct.i2c_client*)* @lm93_update_client_min, void (%struct.lm93_data*, %struct.i2c_client*)** %10, align 8
  br label %42

37:                                               ; preds = %28
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %74

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.lm93_data* @devm_kzalloc(%struct.device* %44, i32 24, i32 %45)
  store %struct.lm93_data* %46, %struct.lm93_data** %7, align 8
  %47 = load %struct.lm93_data*, %struct.lm93_data** %7, align 8
  %48 = icmp ne %struct.lm93_data* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %74

52:                                               ; preds = %43
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load %struct.lm93_data*, %struct.lm93_data** %7, align 8
  %55 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %54, i32 0, i32 2
  store %struct.i2c_client* %53, %struct.i2c_client** %55, align 8
  %56 = load void (%struct.lm93_data*, %struct.i2c_client*)*, void (%struct.lm93_data*, %struct.i2c_client*)** %10, align 8
  %57 = bitcast void (%struct.lm93_data*, %struct.i2c_client*)* %56 to void (%struct.lm93_data*, %struct.i2c_client.0*)*
  %58 = load %struct.lm93_data*, %struct.lm93_data** %7, align 8
  %59 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %58, i32 0, i32 0
  store void (%struct.lm93_data*, %struct.i2c_client.0*)* %57, void (%struct.lm93_data*, %struct.i2c_client.0*)** %59, align 8
  %60 = load %struct.lm93_data*, %struct.lm93_data** %7, align 8
  %61 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %60, i32 0, i32 1
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = call i32 @lm93_init_client(%struct.i2c_client* %63)
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lm93_data*, %struct.lm93_data** %7, align 8
  %70 = load i32, i32* @lm93_groups, align 4
  %71 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %65, i32 %68, %struct.lm93_data* %69, i32 %70)
  store %struct.device* %71, %struct.device** %8, align 8
  %72 = load %struct.device*, %struct.device** %8, align 8
  %73 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %52, %49, %37
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @i2c_get_functionality(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local void @lm93_update_client_full(%struct.lm93_data*, %struct.i2c_client*) #1

declare dso_local void @lm93_update_client_min(%struct.lm93_data*, %struct.i2c_client*) #1

declare dso_local %struct.lm93_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lm93_init_client(%struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.lm93_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
