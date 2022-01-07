; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-gpio.c_gpio_trig_gpio_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-gpio.c_gpio_trig_gpio_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }
%struct.gpio_trig_data = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"couldn't read gpio number\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"ledtrig-gpio\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"request_irq failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gpio_trig_gpio_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gpio_trig_gpio_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.led_classdev*, align 8
  %11 = alloca %struct.gpio_trig_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.led_classdev* @led_trigger_get_led(%struct.device* %14)
  store %struct.led_classdev* %15, %struct.led_classdev** %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.gpio_trig_data* @led_trigger_get_drvdata(%struct.device* %16)
  store %struct.gpio_trig_data* %17, %struct.gpio_trig_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %104

27:                                               ; preds = %4
  %28 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %29 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %5, align 8
  br label %104

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @gpio_is_valid(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %35
  %40 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %41 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @gpio_is_valid(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %47 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gpio_to_irq(i32 %48)
  %50 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %51 = call i32 @free_irq(i32 %49, %struct.led_classdev* %50)
  br label %52

52:                                               ; preds = %45, %39
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %55 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %5, align 8
  br label %104

57:                                               ; preds = %35
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @gpio_to_irq(i32 %58)
  %60 = load i32, i32* @IRQF_ONESHOT, align 4
  %61 = load i32, i32* @IRQF_SHARED, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %68 = call i32 @request_threaded_irq(i32 %59, i32* null, i32 (i32, %struct.led_classdev*)* @gpio_trig_irq, i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.led_classdev* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %57
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %94

75:                                               ; preds = %57
  %76 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %77 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @gpio_is_valid(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %83 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @gpio_to_irq(i32 %84)
  %86 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %87 = call i32 @free_irq(i32 %85, %struct.led_classdev* %86)
  br label %88

88:                                               ; preds = %81, %75
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %91 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %93 = call i32 @gpio_trig_irq(i32 0, %struct.led_classdev* %92)
  br label %94

94:                                               ; preds = %88, %71
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  br label %102

100:                                              ; preds = %94
  %101 = load i64, i64* %9, align 8
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi i64 [ %99, %97 ], [ %101, %100 ]
  store i64 %103, i64* %5, align 8
  br label %104

104:                                              ; preds = %102, %52, %33, %22
  %105 = load i64, i64* %5, align 8
  ret i64 %105
}

declare dso_local %struct.led_classdev* @led_trigger_get_led(%struct.device*) #1

declare dso_local %struct.gpio_trig_data* @led_trigger_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @free_irq(i32, %struct.led_classdev*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32 (i32, %struct.led_classdev*)*, i32, i8*, %struct.led_classdev*) #1

declare dso_local i32 @gpio_trig_irq(i32, %struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
