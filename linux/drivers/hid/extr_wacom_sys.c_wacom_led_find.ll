; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_led = type { i32 }
%struct.wacom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.wacom_group_leds* }
%struct.wacom_group_leds = type { i32, %struct.wacom_led* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wacom_led* @wacom_led_find(%struct.wacom* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wacom_led*, align 8
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wacom_group_leds*, align 8
  store %struct.wacom* %0, %struct.wacom** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.wacom*, %struct.wacom** %5, align 8
  %11 = getelementptr inbounds %struct.wacom, %struct.wacom* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp uge i32 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.wacom_led* null, %struct.wacom_led** %4, align 8
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.wacom*, %struct.wacom** %5, align 8
  %18 = getelementptr inbounds %struct.wacom, %struct.wacom* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.wacom_group_leds*, %struct.wacom_group_leds** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wacom_group_leds, %struct.wacom_group_leds* %20, i64 %22
  store %struct.wacom_group_leds* %23, %struct.wacom_group_leds** %8, align 8
  %24 = load %struct.wacom_group_leds*, %struct.wacom_group_leds** %8, align 8
  %25 = getelementptr inbounds %struct.wacom_group_leds, %struct.wacom_group_leds* %24, i32 0, i32 1
  %26 = load %struct.wacom_led*, %struct.wacom_led** %25, align 8
  %27 = icmp ne %struct.wacom_led* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store %struct.wacom_led* null, %struct.wacom_led** %4, align 8
  br label %41

29:                                               ; preds = %16
  %30 = load %struct.wacom_group_leds*, %struct.wacom_group_leds** %8, align 8
  %31 = getelementptr inbounds %struct.wacom_group_leds, %struct.wacom_group_leds* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = urem i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.wacom_group_leds*, %struct.wacom_group_leds** %8, align 8
  %36 = getelementptr inbounds %struct.wacom_group_leds, %struct.wacom_group_leds* %35, i32 0, i32 1
  %37 = load %struct.wacom_led*, %struct.wacom_led** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %37, i64 %39
  store %struct.wacom_led* %40, %struct.wacom_led** %4, align 8
  br label %41

41:                                               ; preds = %29, %28, %15
  %42 = load %struct.wacom_led*, %struct.wacom_led** %4, align 8
  ret %struct.wacom_led* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
