; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lochnagar-hwmon.c_lochnagar_hwmon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lochnagar-hwmon.c_lochnagar_hwmon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.lochnagar_hwmon = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No register map found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Lochnagar\00", align 1
@lochnagar_chip_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lochnagar_hwmon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_hwmon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.lochnagar_hwmon*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.lochnagar_hwmon* @devm_kzalloc(%struct.device* %10, i32 16, i32 %11)
  store %struct.lochnagar_hwmon* %12, %struct.lochnagar_hwmon** %6, align 8
  %13 = load %struct.lochnagar_hwmon*, %struct.lochnagar_hwmon** %6, align 8
  %14 = icmp ne %struct.lochnagar_hwmon* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %61

18:                                               ; preds = %1
  %19 = load %struct.lochnagar_hwmon*, %struct.lochnagar_hwmon** %6, align 8
  %20 = getelementptr inbounds %struct.lochnagar_hwmon, %struct.lochnagar_hwmon* %19, i32 0, i32 2
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_get_regmap(i32 %24, i32* null)
  %26 = load %struct.lochnagar_hwmon*, %struct.lochnagar_hwmon** %6, align 8
  %27 = getelementptr inbounds %struct.lochnagar_hwmon, %struct.lochnagar_hwmon* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.lochnagar_hwmon*, %struct.lochnagar_hwmon** %6, align 8
  %29 = getelementptr inbounds %struct.lochnagar_hwmon, %struct.lochnagar_hwmon* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %18
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %61

37:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.lochnagar_hwmon*, %struct.lochnagar_hwmon** %6, align 8
  %41 = getelementptr inbounds %struct.lochnagar_hwmon, %struct.lochnagar_hwmon* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.lochnagar_hwmon*, %struct.lochnagar_hwmon** %6, align 8
  %47 = getelementptr inbounds %struct.lochnagar_hwmon, %struct.lochnagar_hwmon* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 96, i32* %51, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.lochnagar_hwmon*, %struct.lochnagar_hwmon** %6, align 8
  %58 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.lochnagar_hwmon* %57, i32* @lochnagar_chip_info, i32* null)
  store %struct.device* %58, %struct.device** %5, align 8
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %32, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.lochnagar_hwmon* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i8*, %struct.lochnagar_hwmon*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
