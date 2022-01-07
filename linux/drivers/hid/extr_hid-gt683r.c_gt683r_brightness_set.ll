; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gt683r.c_gt683r_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gt683r.c_gt683r_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hid_device = type { i32 }
%struct.gt683r_led = type { i32*, i32, %struct.led_classdev* }

@GT683R_LED_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @gt683r_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gt683r_brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.gt683r_led*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %10 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.hid_device* @to_hid_device(%struct.device* %14)
  store %struct.hid_device* %15, %struct.hid_device** %7, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %17 = call %struct.gt683r_led* @hid_get_drvdata(%struct.hid_device* %16)
  store %struct.gt683r_led* %17, %struct.gt683r_led** %8, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %33, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GT683R_LED_COUNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %24 = load %struct.gt683r_led*, %struct.gt683r_led** %8, align 8
  %25 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %24, i32 0, i32 2
  %26 = load %struct.led_classdev*, %struct.led_classdev** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %26, i64 %28
  %30 = icmp eq %struct.led_classdev* %23, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %36

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %18

36:                                               ; preds = %31, %18
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @GT683R_LED_COUNT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.gt683r_led*, %struct.gt683r_led** %8, align 8
  %43 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = load %struct.gt683r_led*, %struct.gt683r_led** %8, align 8
  %49 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %48, i32 0, i32 1
  %50 = call i32 @schedule_work(i32* %49)
  br label %51

51:                                               ; preds = %40, %36
  ret void
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.gt683r_led* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
