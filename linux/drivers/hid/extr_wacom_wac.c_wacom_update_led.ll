; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_update_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_update_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.wacom_led = type { i32, i32 }

@WACOM_24HD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"can't find current LED %d in group %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"can't find next LED in group %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom*, i32, i32, i32)* @wacom_update_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_update_led(%struct.wacom* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wacom_led*, align 8
  %10 = alloca %struct.wacom_led*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.wacom*, %struct.wacom** %5, align 8
  %14 = getelementptr inbounds %struct.wacom, %struct.wacom* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WACOM_24HD, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.wacom*, %struct.wacom** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  call void @wacom_24hd_update_leds(%struct.wacom* %21, i32 %22, i32 %23)
  br label %92

24:                                               ; preds = %4
  %25 = load %struct.wacom*, %struct.wacom** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @wacom_is_led_toggled(%struct.wacom* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.wacom*, %struct.wacom** %5, align 8
  %31 = getelementptr inbounds %struct.wacom, %struct.wacom* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.wacom*, %struct.wacom** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call %struct.wacom_led* @wacom_led_find(%struct.wacom* %39, i32 %40, i32 %41)
  store %struct.wacom_led* %42, %struct.wacom_led** %9, align 8
  %43 = load %struct.wacom_led*, %struct.wacom_led** %9, align 8
  %44 = icmp ne %struct.wacom_led* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %24
  %46 = load %struct.wacom*, %struct.wacom** %5, align 8
  %47 = getelementptr inbounds %struct.wacom, %struct.wacom* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i32, i8*, i32, ...) @hid_err(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %92

52:                                               ; preds = %24
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load %struct.wacom_led*, %struct.wacom_led** %9, align 8
  %57 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  br label %92

58:                                               ; preds = %52
  %59 = load %struct.wacom_led*, %struct.wacom_led** %9, align 8
  %60 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %92

67:                                               ; preds = %63, %58
  %68 = load %struct.wacom*, %struct.wacom** %5, align 8
  %69 = load %struct.wacom_led*, %struct.wacom_led** %9, align 8
  %70 = call %struct.wacom_led* @wacom_led_next(%struct.wacom* %68, %struct.wacom_led* %69)
  store %struct.wacom_led* %70, %struct.wacom_led** %10, align 8
  %71 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %72 = icmp ne %struct.wacom_led* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.wacom*, %struct.wacom** %5, align 8
  %75 = getelementptr inbounds %struct.wacom, %struct.wacom* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i32, i8*, i32, ...) @hid_err(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %92

79:                                               ; preds = %67
  %80 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %81 = load %struct.wacom_led*, %struct.wacom_led** %9, align 8
  %82 = icmp eq %struct.wacom_led* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %92

84:                                               ; preds = %79
  %85 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %86 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %88 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %87, i32 0, i32 1
  %89 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %90 = call i32 @wacom_leds_brightness_get(%struct.wacom_led* %89)
  %91 = call i32 @led_trigger_event(i32* %88, i32 %90)
  br label %92

92:                                               ; preds = %84, %83, %73, %66, %55, %45, %20
  ret void
}

declare dso_local void @wacom_24hd_update_leds(%struct.wacom*, i32, i32) #1

declare dso_local i32 @wacom_is_led_toggled(%struct.wacom*, i32, i32, i32) #1

declare dso_local %struct.wacom_led* @wacom_led_find(%struct.wacom*, i32, i32) #1

declare dso_local i32 @hid_err(i32, i8*, i32, ...) #1

declare dso_local %struct.wacom_led* @wacom_led_next(%struct.wacom*, %struct.wacom_led*) #1

declare dso_local i32 @led_trigger_event(i32*, i32) #1

declare dso_local i32 @wacom_leds_brightness_get(%struct.wacom_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
