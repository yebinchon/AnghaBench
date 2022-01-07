; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_led_get_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_led_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hid_device = type { i32 }
%struct.sony_sc = type { i32, i32*, %struct.led_classdev** }

@.str = private unnamed_addr constant [16 x i8] c"No device data\0A\00", align 1
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @sony_led_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_led_get_brightness(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.sony_sc*, align 8
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
  %16 = call %struct.sony_sc* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.sony_sc* %16, %struct.sony_sc** %6, align 8
  %17 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %18 = icmp ne %struct.sony_sc* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %21 = call i32 @hid_err(%struct.hid_device* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @LED_OFF, align 4
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %49, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %27 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %32 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %33 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %32, i32 0, i32 2
  %34 = load %struct.led_classdev**, %struct.led_classdev*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %34, i64 %36
  %38 = load %struct.led_classdev*, %struct.led_classdev** %37, align 8
  %39 = icmp eq %struct.led_classdev* %31, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.sony_sc*, %struct.sony_sc** %6, align 8
  %42 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %54

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %24

52:                                               ; preds = %24
  %53 = load i32, i32* @LED_OFF, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %40, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.sony_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
