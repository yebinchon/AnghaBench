; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-bigbenff.c_bigben_get_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-bigbenff.c_bigben_get_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hid_device = type { i32 }
%struct.bigben_device = type { i32, %struct.led_classdev** }

@.str = private unnamed_addr constant [16 x i8] c"no device data\0A\00", align 1
@LED_OFF = common dso_local global i32 0, align 4
@NUM_LEDS = common dso_local global i32 0, align 4
@LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @bigben_get_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bigben_get_led(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.bigben_device*, align 8
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %8 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %9 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.hid_device* @to_hid_device(%struct.device* %13)
  store %struct.hid_device* %14, %struct.hid_device** %5, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %16 = call %struct.bigben_device* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.bigben_device* %16, %struct.bigben_device** %6, align 8
  %17 = load %struct.bigben_device*, %struct.bigben_device** %6, align 8
  %18 = icmp ne %struct.bigben_device* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %21 = call i32 @hid_err(%struct.hid_device* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @LED_OFF, align 4
  store i32 %22, i32* %2, align 4
  br label %58

23:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %53, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NUM_LEDS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %30 = load %struct.bigben_device*, %struct.bigben_device** %6, align 8
  %31 = getelementptr inbounds %struct.bigben_device, %struct.bigben_device* %30, i32 0, i32 1
  %32 = load %struct.led_classdev**, %struct.led_classdev*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %32, i64 %34
  %36 = load %struct.led_classdev*, %struct.led_classdev** %35, align 8
  %37 = icmp eq %struct.led_classdev* %29, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %28
  %39 = load %struct.bigben_device*, %struct.bigben_device** %6, align 8
  %40 = getelementptr inbounds %struct.bigben_device, %struct.bigben_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @LED_ON, align 4
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @LED_OFF, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %2, align 4
  br label %58

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %24

56:                                               ; preds = %24
  %57 = load i32, i32* @LED_OFF, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %50, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.bigben_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
