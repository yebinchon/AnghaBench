; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_leds_brightness_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_leds_brightness_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_led = type { i32, i32, %struct.wacom* }
%struct.wacom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@LED_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wacom_leds_brightness_get(%struct.wacom_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom_led*, align 8
  %4 = alloca %struct.wacom*, align 8
  store %struct.wacom_led* %0, %struct.wacom_led** %3, align 8
  %5 = load %struct.wacom_led*, %struct.wacom_led** %3, align 8
  %6 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %5, i32 0, i32 2
  %7 = load %struct.wacom*, %struct.wacom** %6, align 8
  store %struct.wacom* %7, %struct.wacom** %4, align 8
  %8 = load %struct.wacom*, %struct.wacom** %4, align 8
  %9 = getelementptr inbounds %struct.wacom, %struct.wacom* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.wacom_led*, %struct.wacom_led** %3, align 8
  %15 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @LED_FULL, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load %struct.wacom*, %struct.wacom** %4, align 8
  %20 = getelementptr inbounds %struct.wacom, %struct.wacom* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %18, %22
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %1
  %25 = load %struct.wacom*, %struct.wacom** %4, align 8
  %26 = getelementptr inbounds %struct.wacom, %struct.wacom* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.wacom_led*, %struct.wacom_led** %3, align 8
  %32 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LED_FULL, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load %struct.wacom*, %struct.wacom** %4, align 8
  %37 = getelementptr inbounds %struct.wacom, %struct.wacom* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %35, %39
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %24
  %42 = load i32, i32* @LED_FULL, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %30, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
