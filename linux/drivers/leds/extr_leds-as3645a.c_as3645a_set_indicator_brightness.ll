; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_set_indicator_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_set_indicator_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.as3645a = type { i32 }

@AS_MODE_INDICATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @as3645a_set_indicator_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3645a_set_indicator_brightness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.as3645a*, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %9 = call %struct.as3645a* @iled_cdev_to_as3645a(%struct.led_classdev* %8)
  store %struct.as3645a* %9, %struct.as3645a** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.as3645a*, %struct.as3645a** %6, align 8
  %12 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.as3645a*, %struct.as3645a** %6, align 8
  %14 = call i32 @as3645a_set_timeout(%struct.as3645a* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.as3645a*, %struct.as3645a** %6, align 8
  %21 = load i32, i32* @AS_MODE_INDICATOR, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @as3645a_set_control(%struct.as3645a* %20, i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.as3645a* @iled_cdev_to_as3645a(%struct.led_classdev*) #1

declare dso_local i32 @as3645a_set_timeout(%struct.as3645a*) #1

declare dso_local i32 @as3645a_set_control(%struct.as3645a*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
