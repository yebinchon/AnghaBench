; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_lm80_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm80.c_lm80_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm80_data = type { i32**, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@f_min = common dso_local global i64 0, align 8
@lm80_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm80_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm80_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.lm80_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.lm80_data* @devm_kzalloc(%struct.device* %12, i32 24, i32 %13)
  store %struct.lm80_data* %14, %struct.lm80_data** %8, align 8
  %15 = load %struct.lm80_data*, %struct.lm80_data** %8, align 8
  %16 = icmp ne %struct.lm80_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.lm80_data*, %struct.lm80_data** %8, align 8
  %23 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %22, i32 0, i32 2
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.lm80_data*, %struct.lm80_data** %8, align 8
  %25 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32 @lm80_init_client(%struct.i2c_client* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @LM80_REG_FAN_MIN(i32 1)
  %31 = call i32 @lm80_read_value(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %70

36:                                               ; preds = %20
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.lm80_data*, %struct.lm80_data** %8, align 8
  %39 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load i64, i64* @f_min, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %37, i32* %44, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = call i32 @LM80_REG_FAN_MIN(i32 2)
  %47 = call i32 @lm80_read_value(%struct.i2c_client* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %70

52:                                               ; preds = %36
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.lm80_data*, %struct.lm80_data** %8, align 8
  %55 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* @f_min, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %53, i32* %60, align 4
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lm80_data*, %struct.lm80_data** %8, align 8
  %66 = load i32, i32* @lm80_groups, align 4
  %67 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %61, i32 %64, %struct.lm80_data* %65, i32 %66)
  store %struct.device* %67, %struct.device** %7, align 8
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %52, %50, %34, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.lm80_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lm80_init_client(%struct.i2c_client*) #1

declare dso_local i32 @lm80_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM80_REG_FAN_MIN(i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.lm80_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
