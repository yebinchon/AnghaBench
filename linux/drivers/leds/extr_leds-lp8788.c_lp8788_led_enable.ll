; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8788.c_lp8788_led_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8788.c_lp8788_led_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_led = type { i32, i32 }

@LP8788_ISINK_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8788_led*, i32, i32)* @lp8788_led_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_led_enable(%struct.lp8788_led* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lp8788_led*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lp8788_led* %0, %struct.lp8788_led** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.lp8788_led*, %struct.lp8788_led** %4, align 8
  %16 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LP8788_ISINK_CTRL, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @lp8788_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.lp8788_led*, %struct.lp8788_led** %4, align 8
  %27 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @lp8788_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
