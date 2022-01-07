; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_unregister_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_unregister_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_led = type { i32 }
%struct.lp55xx_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lp55xx_unregister_leds(%struct.lp55xx_led* %0, %struct.lp55xx_chip* %1) #0 {
  %3 = alloca %struct.lp55xx_led*, align 8
  %4 = alloca %struct.lp55xx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp55xx_led*, align 8
  store %struct.lp55xx_led* %0, %struct.lp55xx_led** %3, align 8
  store %struct.lp55xx_chip* %1, %struct.lp55xx_chip** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %10 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = load %struct.lp55xx_led*, %struct.lp55xx_led** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %14, i64 %16
  store %struct.lp55xx_led* %17, %struct.lp55xx_led** %6, align 8
  %18 = load %struct.lp55xx_led*, %struct.lp55xx_led** %6, align 8
  %19 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %18, i32 0, i32 0
  %20 = call i32 @led_classdev_unregister(i32* %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

24:                                               ; preds = %7
  ret void
}

declare dso_local i32 @led_classdev_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
