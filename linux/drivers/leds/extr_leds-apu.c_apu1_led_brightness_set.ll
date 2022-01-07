; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-apu.c_apu1_led_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-apu.c_apu1_led_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.led_classdev = type { i32 }
%struct.apu_led_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@apu_led = common dso_local global %struct.TYPE_4__* null, align 8
@APU1_LEDON = common dso_local global i32 0, align 4
@APU1_LEDOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @apu1_led_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apu1_led_brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.apu_led_priv*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %7 = call %struct.apu_led_priv* @cdev_to_priv(%struct.led_classdev* %6)
  store %struct.apu_led_priv* %7, %struct.apu_led_priv** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apu_led, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @APU1_LEDON, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @APU1_LEDOFF, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = load %struct.apu_led_priv*, %struct.apu_led_priv** %5, align 8
  %20 = getelementptr inbounds %struct.apu_led_priv, %struct.apu_led_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iowrite8(i32 %18, i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apu_led, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  ret void
}

declare dso_local %struct.apu_led_priv* @cdev_to_priv(%struct.led_classdev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
