; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_palmas-pwrbutton.c_palmas_pwron_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_palmas-pwrbutton.c_palmas_pwron_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.palmas = type { i32 }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.palmas_pwron = type { i32, i32, %struct.input_dev*, %struct.palmas* }
%struct.palmas_pwron_config = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Can't allocate power button\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"palmas_pwron\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"palmas_pwron/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@PALMAS_LPK_TIME_MASK = common dso_local global i32 0, align 4
@PALMAS_PWRON_DEBOUNCE_MASK = common dso_local global i32 0, align 4
@PALMAS_PMU_CONTROL_BASE = common dso_local global i32 0, align 4
@PALMAS_LONG_PRESS_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"LONG_PRESS_KEY_UPDATE failed: %d\0A\00", align 1
@palmas_power_button_work = common dso_local global i32 0, align 4
@pwron_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Can't get IRQ for pwron: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Can't register power button: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @palmas_pwron_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_pwron_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.palmas*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.palmas_pwron*, align 8
  %8 = alloca %struct.palmas_pwron_config, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.palmas* @dev_get_drvdata(i32 %14)
  store %struct.palmas* %15, %struct.palmas** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 @palmas_pwron_params_ofinit(%struct.device* %18, %struct.palmas_pwron_config* %8)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.palmas_pwron* @kzalloc(i32 24, i32 %20)
  store %struct.palmas_pwron* %21, %struct.palmas_pwron** %7, align 8
  %22 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %23 = icmp ne %struct.palmas_pwron* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %140

27:                                               ; preds = %1
  %28 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %28, %struct.input_dev** %6, align 8
  %29 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %30 = icmp ne %struct.input_dev* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %136

36:                                               ; preds = %27
  %37 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.device* %41, %struct.device** %44, align 8
  %45 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %46 = load i32, i32* @EV_KEY, align 4
  %47 = load i32, i32* @KEY_POWER, align 4
  %48 = call i32 @input_set_capability(%struct.input_dev* %45, i32 %46, i32 %47)
  %49 = getelementptr inbounds %struct.palmas_pwron_config, %struct.palmas_pwron_config* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PALMAS_LPK_TIME_MASK, align 4
  %52 = call i32 @__ffs(i32 %51)
  %53 = shl i32 %50, %52
  store i32 %53, i32* %9, align 4
  %54 = getelementptr inbounds %struct.palmas_pwron_config, %struct.palmas_pwron_config* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PALMAS_PWRON_DEBOUNCE_MASK, align 4
  %57 = call i32 @__ffs(i32 %56)
  %58 = shl i32 %55, %57
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load %struct.palmas*, %struct.palmas** %4, align 8
  %62 = load i32, i32* @PALMAS_PMU_CONTROL_BASE, align 4
  %63 = load i32, i32* @PALMAS_LONG_PRESS_KEY, align 4
  %64 = load i32, i32* @PALMAS_LPK_TIME_MASK, align 4
  %65 = load i32, i32* @PALMAS_PWRON_DEBOUNCE_MASK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @palmas_update_bits(%struct.palmas* %61, i32 %62, i32 %63, i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %36
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %133

75:                                               ; preds = %36
  %76 = load %struct.palmas*, %struct.palmas** %4, align 8
  %77 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %78 = getelementptr inbounds %struct.palmas_pwron, %struct.palmas_pwron* %77, i32 0, i32 3
  store %struct.palmas* %76, %struct.palmas** %78, align 8
  %79 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %80 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %81 = getelementptr inbounds %struct.palmas_pwron, %struct.palmas_pwron* %80, i32 0, i32 2
  store %struct.input_dev* %79, %struct.input_dev** %81, align 8
  %82 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %83 = getelementptr inbounds %struct.palmas_pwron, %struct.palmas_pwron* %82, i32 0, i32 1
  %84 = load i32, i32* @palmas_power_button_work, align 4
  %85 = call i32 @INIT_DELAYED_WORK(i32* %83, i32 %84)
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = call i32 @platform_get_irq(%struct.platform_device* %86, i32 0)
  %88 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %89 = getelementptr inbounds %struct.palmas_pwron, %struct.palmas_pwron* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %91 = getelementptr inbounds %struct.palmas_pwron, %struct.palmas_pwron* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @pwron_irq, align 4
  %94 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %95 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @IRQF_ONESHOT, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = call i32 @dev_name(%struct.device* %99)
  %101 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %102 = call i32 @request_threaded_irq(i32 %92, i32* null, i32 %93, i32 %98, i32 %100, %struct.palmas_pwron* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %75
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %133

109:                                              ; preds = %75
  %110 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %111 = call i32 @input_register_device(%struct.input_dev* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  br label %124

118:                                              ; preds = %109
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %121 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.palmas_pwron* %120)
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = call i32 @device_init_wakeup(%struct.device* %122, i32 1)
  store i32 0, i32* %2, align 4
  br label %140

124:                                              ; preds = %114
  %125 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %126 = getelementptr inbounds %struct.palmas_pwron, %struct.palmas_pwron* %125, i32 0, i32 1
  %127 = call i32 @cancel_delayed_work_sync(i32* %126)
  %128 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %129 = getelementptr inbounds %struct.palmas_pwron, %struct.palmas_pwron* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %132 = call i32 @free_irq(i32 %130, %struct.palmas_pwron* %131)
  br label %133

133:                                              ; preds = %124, %105, %71
  %134 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %135 = call i32 @input_free_device(%struct.input_dev* %134)
  br label %136

136:                                              ; preds = %133, %31
  %137 = load %struct.palmas_pwron*, %struct.palmas_pwron** %7, align 8
  %138 = call i32 @kfree(%struct.palmas_pwron* %137)
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %118, %24
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.palmas* @dev_get_drvdata(i32) #1

declare dso_local i32 @palmas_pwron_params_ofinit(%struct.device*, %struct.palmas_pwron_config*) #1

declare dso_local %struct.palmas_pwron* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @palmas_update_bits(%struct.palmas*, i32, i32, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.palmas_pwron*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.palmas_pwron*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.palmas_pwron*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.palmas_pwron*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
