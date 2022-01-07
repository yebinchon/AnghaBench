; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-nic78bx.c_nic78bx_brightness_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-nic78bx.c_nic78bx_brightness_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.nic78bx_led = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @nic78bx_brightness_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic78bx_brightness_get(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.nic78bx_led*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %6 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %7 = call %struct.nic78bx_led* @to_nic78bx_led(%struct.led_classdev* %6)
  store %struct.nic78bx_led* %7, %struct.nic78bx_led** %3, align 8
  %8 = load %struct.nic78bx_led*, %struct.nic78bx_led** %3, align 8
  %9 = getelementptr inbounds %struct.nic78bx_led, %struct.nic78bx_led* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.nic78bx_led*, %struct.nic78bx_led** %3, align 8
  %15 = getelementptr inbounds %struct.nic78bx_led, %struct.nic78bx_led* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @inb(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.nic78bx_led*, %struct.nic78bx_led** %3, align 8
  %21 = getelementptr inbounds %struct.nic78bx_led, %struct.nic78bx_led* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.nic78bx_led*, %struct.nic78bx_led** %3, align 8
  %28 = getelementptr inbounds %struct.nic78bx_led, %struct.nic78bx_led* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @LED_OFF, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 1, %32 ], [ %34, %33 ]
  ret i32 %36
}

declare dso_local %struct.nic78bx_led* @to_nic78bx_led(%struct.led_classdev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
