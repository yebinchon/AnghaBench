; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_leds.c_picolcd_led_get_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_leds.c_picolcd_led_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hid_device = type { i32 }
%struct.picolcd_data = type { i32, %struct.led_classdev** }

@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @picolcd_led_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @picolcd_led_get_brightness(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.picolcd_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %9 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.hid_device* @to_hid_device(%struct.device* %13)
  store %struct.hid_device* %14, %struct.hid_device** %4, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %16 = call %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.picolcd_data* %16, %struct.picolcd_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %38, %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %22 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %23 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %22, i32 0, i32 1
  %24 = load %struct.led_classdev**, %struct.led_classdev*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %24, i64 %26
  %28 = load %struct.led_classdev*, %struct.led_classdev** %27, align 8
  %29 = icmp eq %struct.led_classdev* %21, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load %struct.picolcd_data*, %struct.picolcd_data** %5, align 8
  %32 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %33, %34
  %36 = and i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %17

41:                                               ; preds = %30, %17
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @LED_FULL, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @LED_OFF, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  ret i32 %49
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
