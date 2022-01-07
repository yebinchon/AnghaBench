; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.wm831x_status = type { i32, i32, i64 }

@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @wm831x_status_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_status_brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm831x_status*, align 8
  %6 = alloca i64, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %8 = call %struct.wm831x_status* @to_wm831x_status(%struct.led_classdev* %7)
  store %struct.wm831x_status* %8, %struct.wm831x_status** %5, align 8
  %9 = load %struct.wm831x_status*, %struct.wm831x_status** %5, align 8
  %10 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.wm831x_status*, %struct.wm831x_status** %5, align 8
  %15 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @LED_OFF, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.wm831x_status*, %struct.wm831x_status** %5, align 8
  %21 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.wm831x_status*, %struct.wm831x_status** %5, align 8
  %24 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %23, i32 0, i32 1
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.wm831x_status*, %struct.wm831x_status** %5, align 8
  %28 = call i32 @wm831x_status_set(%struct.wm831x_status* %27)
  ret i32 0
}

declare dso_local %struct.wm831x_status* @to_wm831x_status(%struct.led_classdev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wm831x_status_set(%struct.wm831x_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
