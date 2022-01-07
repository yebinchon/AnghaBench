; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_led_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_led_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.wiimote_data = type { %struct.TYPE_3__, %struct.led_classdev** }
%struct.TYPE_3__ = type { i32, i32 }

@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @wiimod_led_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimod_led_get(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.wiimote_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %8 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %9 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.wiimote_data* @dev_to_wii(%struct.device* %13)
  store %struct.wiimote_data* %14, %struct.wiimote_data** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %48, %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %51

18:                                               ; preds = %15
  %19 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %20 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %19, i32 0, i32 1
  %21 = load %struct.led_classdev**, %struct.led_classdev*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %21, i64 %23
  %25 = load %struct.led_classdev*, %struct.led_classdev** %24, align 8
  %26 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %27 = icmp eq %struct.led_classdev* %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %18
  %29 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %30 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %35 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @WIIPROTO_FLAG_LED(i32 %39)
  %41 = and i32 %37, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %43 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %51

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %15

51:                                               ; preds = %28, %15
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @LED_FULL, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @LED_OFF, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  ret i32 %59
}

declare dso_local %struct.wiimote_data* @dev_to_wii(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WIIPROTO_FLAG_LED(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
