; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_led_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.wiimote_data = type { %struct.TYPE_3__, %struct.led_classdev** }
%struct.TYPE_3__ = type { i32, i32 }

@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @wiimod_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimod_led_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wiimote_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %12 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.wiimote_data* @dev_to_wii(%struct.device* %16)
  store %struct.wiimote_data* %17, %struct.wiimote_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %67, %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %70

21:                                               ; preds = %18
  %22 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %23 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %22, i32 0, i32 1
  %24 = load %struct.led_classdev**, %struct.led_classdev*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %24, i64 %26
  %28 = load %struct.led_classdev*, %struct.led_classdev** %27, align 8
  %29 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %30 = icmp eq %struct.led_classdev* %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @WIIPROTO_FLAG_LED(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %36 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %41 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @LED_OFF, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %31
  %48 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = call i32 @wiiproto_req_leds(%struct.wiimote_data* %48, i32 %52)
  br label %60

54:                                               ; preds = %31
  %55 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @wiiproto_req_leds(%struct.wiimote_data* %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %62 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  br label %70

66:                                               ; preds = %21
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %18

70:                                               ; preds = %60, %18
  ret void
}

declare dso_local %struct.wiimote_data* @dev_to_wii(%struct.device*) #1

declare dso_local i32 @WIIPROTO_FLAG_LED(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wiiproto_req_leds(%struct.wiimote_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
