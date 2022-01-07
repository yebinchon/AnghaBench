; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9055-hwmon.c_da9055_hwmon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9055-hwmon.c_da9055_hwmon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.da9055_hwmon = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"HWMON\00", align 1
@da9055_auxadc_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"adc-irq\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"DA9055 ADC IRQ failed ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"da9055\00", align 1
@da9055_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9055_hwmon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_hwmon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da9055_hwmon*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.da9055_hwmon* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.da9055_hwmon* %13, %struct.da9055_hwmon** %5, align 8
  %14 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %5, align 8
  %15 = icmp ne %struct.da9055_hwmon* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %5, align 8
  %21 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %20, i32 0, i32 3
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %5, align 8
  %24 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %23, i32 0, i32 2
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %5, align 8
  %27 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %26, i32 0, i32 1
  %28 = call i32 @init_completion(i32* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_2__* @dev_get_drvdata(i32 %32)
  %34 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %5, align 8
  %35 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %34, i32 0, i32 0
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i32 @platform_get_irq_byname(%struct.platform_device* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %19
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %70

42:                                               ; preds = %19
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @da9055_auxadc_irq, align 4
  %47 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %48 = load i32, i32* @IRQF_ONESHOT, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %5, align 8
  %51 = call i32 @devm_request_threaded_irq(%struct.device* %44, i32 %45, i32* null, i32 %46, i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.da9055_hwmon* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %42
  %55 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %5, align 8
  %56 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %70

63:                                               ; preds = %42
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %5, align 8
  %66 = load i32, i32* @da9055_groups, align 4
  %67 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.da9055_hwmon* %65, i32 %66)
  store %struct.device* %67, %struct.device** %6, align 8
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %63, %54, %40, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.da9055_hwmon* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.TYPE_2__* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.da9055_hwmon*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i8*, %struct.da9055_hwmon*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
