; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ss4200.c_set_power_light_amber_noblink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ss4200.c_set_power_light_amber_noblink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nasgpio_led = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"power:amber:power\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"power:blue:power\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"setting blue off and amber on\0A\00", align 1
@LED_OFF = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_power_light_amber_noblink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_power_light_amber_noblink() #0 {
  %1 = alloca %struct.nasgpio_led*, align 8
  %2 = alloca %struct.nasgpio_led*, align 8
  %3 = call %struct.nasgpio_led* @get_led_named(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.nasgpio_led* %3, %struct.nasgpio_led** %1, align 8
  %4 = call %struct.nasgpio_led* @get_led_named(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store %struct.nasgpio_led* %4, %struct.nasgpio_led** %2, align 8
  %5 = load %struct.nasgpio_led*, %struct.nasgpio_led** %1, align 8
  %6 = icmp ne %struct.nasgpio_led* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load %struct.nasgpio_led*, %struct.nasgpio_led** %2, align 8
  %9 = icmp ne %struct.nasgpio_led* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %0
  br label %21

11:                                               ; preds = %7
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %13 = load %struct.nasgpio_led*, %struct.nasgpio_led** %2, align 8
  %14 = getelementptr inbounds %struct.nasgpio_led, %struct.nasgpio_led* %13, i32 0, i32 0
  %15 = load i32, i32* @LED_OFF, align 4
  %16 = call i32 @nasgpio_led_set_brightness(i32* %14, i32 %15)
  %17 = load %struct.nasgpio_led*, %struct.nasgpio_led** %1, align 8
  %18 = getelementptr inbounds %struct.nasgpio_led, %struct.nasgpio_led* %17, i32 0, i32 0
  %19 = load i32, i32* @LED_FULL, align 4
  %20 = call i32 @nasgpio_led_set_brightness(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.nasgpio_led* @get_led_named(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nasgpio_led_set_brightness(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
