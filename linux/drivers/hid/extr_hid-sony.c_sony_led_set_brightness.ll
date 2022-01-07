; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_led_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_led_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hid_device = type { i32 }
%struct.sony_sc = type { i32, i32, i32*, i64*, i64*, %struct.led_classdev** }

@.str = private unnamed_addr constant [16 x i8] c"No device data\0A\00", align 1
@SIXAXIS_CONTROLLER_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @sony_led_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_led_set_brightness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.sony_sc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %11 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.hid_device* @to_hid_device(%struct.device* %15)
  store %struct.hid_device* %16, %struct.hid_device** %6, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %18 = call %struct.sony_sc* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.sony_sc* %18, %struct.sony_sc** %7, align 8
  %19 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %20 = icmp ne %struct.sony_sc* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %23 = call i32 @hid_err(%struct.hid_device* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %107

24:                                               ; preds = %2
  %25 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %26 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SIXAXIS_CONTROLLER_USB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %104, %24
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %37 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %107

40:                                               ; preds = %34
  %41 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %42 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %43 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %42, i32 0, i32 5
  %44 = load %struct.led_classdev**, %struct.led_classdev*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %44, i64 %46
  %48 = load %struct.led_classdev*, %struct.led_classdev** %47, align 8
  %49 = icmp eq %struct.led_classdev* %41, %48
  br i1 %49, label %50, label %103

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %56 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %54, %61
  br i1 %62, label %81, label %63

63:                                               ; preds = %53
  %64 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %65 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %64, i32 0, i32 4
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %63
  %73 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %74 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %72, %63, %53, %50
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %84 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %90 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %89, i32 0, i32 4
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 0, i64* %94, align 8
  %95 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %96 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %95, i32 0, i32 3
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 0, i64* %100, align 8
  %101 = load %struct.sony_sc*, %struct.sony_sc** %7, align 8
  %102 = call i32 @sony_set_leds(%struct.sony_sc* %101)
  br label %107

103:                                              ; preds = %72, %40
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %34

107:                                              ; preds = %21, %81, %34
  ret void
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.sony_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @sony_set_leds(%struct.sony_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
