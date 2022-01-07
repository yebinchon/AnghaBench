; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_timer_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_timer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i64, i64, i64, i64, i32, i32 }
%struct.timer_list = type { i32 }

@blink_timer = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i64 0, align 8
@LED_BLINK_SW = common dso_local global i32 0, align 4
@LED_BLINK_ONESHOT_STOP = common dso_local global i32 0, align 4
@LED_BLINK_BRIGHTNESS_CHANGE = common dso_local global i32 0, align 4
@LED_BLINK_ONESHOT = common dso_local global i32 0, align 4
@LED_BLINK_INVERT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@led_cdev = common dso_local global %struct.led_classdev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @led_timer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_timer_function(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %7 = ptrtoint %struct.led_classdev* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @blink_timer, align 4
  %10 = call %struct.led_classdev* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.led_classdev* %10, %struct.led_classdev** %3, align 8
  %11 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %12 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %17 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %22 = load i64, i64* @LED_OFF, align 8
  %23 = call i32 @led_set_brightness_nosleep(%struct.led_classdev* %21, i64 %22)
  %24 = load i32, i32* @LED_BLINK_SW, align 4
  %25 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %26 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %25, i32 0, i32 5
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  br label %112

28:                                               ; preds = %15
  %29 = load i32, i32* @LED_BLINK_ONESHOT_STOP, align 4
  %30 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %31 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %30, i32 0, i32 5
  %32 = call i64 @test_and_clear_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @LED_BLINK_SW, align 4
  %36 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %37 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %36, i32 0, i32 5
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  br label %112

39:                                               ; preds = %28
  %40 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %41 = call i64 @led_get_brightness(%struct.led_classdev* %40)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @LED_BLINK_BRIGHTNESS_CHANGE, align 4
  %46 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %47 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %46, i32 0, i32 5
  %48 = call i64 @test_and_clear_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %52 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %4, align 8
  br label %58

54:                                               ; preds = %44
  %55 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %56 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %60 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %5, align 8
  br label %70

62:                                               ; preds = %39
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %65 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* @LED_OFF, align 8
  store i64 %66, i64* %4, align 8
  %67 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %68 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %62, %58
  %71 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @led_set_brightness_nosleep(%struct.led_classdev* %71, i64 %72)
  %74 = load i32, i32* @LED_BLINK_ONESHOT, align 4
  %75 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %76 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %75, i32 0, i32 5
  %77 = call i64 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %70
  %80 = load i32, i32* @LED_BLINK_INVERT, align 4
  %81 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %82 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %81, i32 0, i32 5
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i64, i64* %4, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @LED_BLINK_ONESHOT_STOP, align 4
  %90 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %91 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %90, i32 0, i32 5
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %88, %85
  br label %103

94:                                               ; preds = %79
  %95 = load i64, i64* %4, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @LED_BLINK_ONESHOT_STOP, align 4
  %99 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %100 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %99, i32 0, i32 5
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  br label %102

102:                                              ; preds = %97, %94
  br label %103

103:                                              ; preds = %102, %93
  br label %104

104:                                              ; preds = %103, %70
  %105 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %106 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %105, i32 0, i32 4
  %107 = load i64, i64* @jiffies, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @msecs_to_jiffies(i64 %108)
  %110 = add nsw i64 %107, %109
  %111 = call i32 @mod_timer(i32* %106, i64 %110)
  br label %112

112:                                              ; preds = %104, %34, %20
  ret void
}

declare dso_local %struct.led_classdev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @led_set_brightness_nosleep(%struct.led_classdev*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @led_get_brightness(%struct.led_classdev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
