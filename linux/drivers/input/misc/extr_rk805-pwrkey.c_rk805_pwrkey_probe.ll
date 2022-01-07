; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_rk805-pwrkey.c_rk805_pwrkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_rk805-pwrkey.c_rk805_pwrkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.input_dev = type { i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Can't allocate power button\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rk805 pwrkey\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"rk805_pwrkey/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@pwrkey_fall_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"rk805_pwrkey_fall\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Can't register fall irq: %d\0A\00", align 1
@pwrkey_rise_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"rk805_pwrkey_rise\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Can't register rise irq: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't register power button: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk805_pwrkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk805_pwrkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.input_dev* @devm_input_allocate_device(i32* %9)
  store %struct.input_dev* %10, %struct.input_dev** %4, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = icmp ne %struct.input_dev* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %99

19:                                               ; preds = %1
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  %22 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @BUS_HOST, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %29 = load i32, i32* @EV_KEY, align 4
  %30 = load i32, i32* @KEY_POWER, align 4
  %31 = call i32 @input_set_capability(%struct.input_dev* %28, i32 %29, i32 %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call i32 @platform_get_irq(%struct.platform_device* %32, i32 0)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %99

38:                                               ; preds = %19
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i32 @platform_get_irq(%struct.platform_device* %39, i32 1)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %99

45:                                               ; preds = %38
  %46 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @pwrkey_fall_irq, align 4
  %50 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %51 = load i32, i32* @IRQF_ONESHOT, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %54 = call i32 @devm_request_any_context_irq(i32* %47, i32 %48, i32 %49, i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.input_dev* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %99

63:                                               ; preds = %45
  %64 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @pwrkey_rise_irq, align 4
  %68 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %69 = load i32, i32* @IRQF_ONESHOT, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %72 = call i32 @devm_request_any_context_irq(i32* %65, i32 %66, i32 %67, i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), %struct.input_dev* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %63
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %99

81:                                               ; preds = %63
  %82 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %83 = call i32 @input_register_device(%struct.input_dev* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %99

92:                                               ; preds = %81
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %95 = call i32 @platform_set_drvdata(%struct.platform_device* %93, %struct.input_dev* %94)
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @device_init_wakeup(i32* %97, i32 1)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %92, %86, %75, %57, %43, %36, %13
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_any_context_irq(i32*, i32, i32, i32, i8*, %struct.input_dev*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.input_dev*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
