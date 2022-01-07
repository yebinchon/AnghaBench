; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, i32, i32*, i32*, i32 }
%struct.pattern_trig_data = type { i32, i32, i32, %struct.led_classdev*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Hardware pattern ops validation failed\0A\00", align 1
@pattern_trig_timer_function = common dso_local global i32 0, align 4
@LED_INIT_DEFAULT_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @pattern_trig_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pattern_trig_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.pattern_trig_data*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.pattern_trig_data* @kzalloc(i32 32, i32 %5)
  store %struct.pattern_trig_data* %6, %struct.pattern_trig_data** %4, align 8
  %7 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %8 = icmp ne %struct.pattern_trig_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %14 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %21 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = xor i32 %19, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %12
  %30 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %31 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %35 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %37 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %29, %12
  %39 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %40 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %42 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 4
  %43 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %44 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %43, i32 0, i32 4
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %47 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %48 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %47, i32 0, i32 3
  store %struct.led_classdev* %46, %struct.led_classdev** %48, align 8
  %49 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %50 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %51 = call i32 @led_set_trigger_data(%struct.led_classdev* %49, %struct.pattern_trig_data* %50)
  %52 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %53 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %52, i32 0, i32 2
  %54 = load i32, i32* @pattern_trig_timer_function, align 4
  %55 = call i32 @timer_setup(i32* %53, i32 %54, i32 0)
  %56 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %57 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %59 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LED_INIT_DEFAULT_TRIGGER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %38
  %65 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %66 = call i32 @pattern_init(%struct.led_classdev* %65)
  %67 = load i32, i32* @LED_INIT_DEFAULT_TRIGGER, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %70 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %64, %38
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %9
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.pattern_trig_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @led_set_trigger_data(%struct.led_classdev*, %struct.pattern_trig_data*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @pattern_init(%struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
