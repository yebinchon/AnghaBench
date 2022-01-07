; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_autocenter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_autocenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_device = type { i32*, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { %struct.hid_field* }
%struct.hid_field = type { i32 }

@PID_EFFECT_BLOCK_INDEX = common dso_local global i64 0, align 8
@PID_SPRING = common dso_local global i64 0, align 8
@PID_DURATION = common dso_local global i64 0, align 8
@PID_TRIGGER_BUTTON = common dso_local global i64 0, align 8
@PID_TRIGGER_REPEAT_INT = common dso_local global i64 0, align 8
@PID_GAIN = common dso_local global i64 0, align 8
@PID_DIRECTION_ENABLE = common dso_local global i64 0, align 8
@PID_START_DELAY = common dso_local global i64 0, align 8
@PID_SET_EFFECT = common dso_local global i64 0, align 8
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pidff_device*, i32)* @pidff_autocenter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pidff_autocenter(%struct.pidff_device* %0, i32 %1) #0 {
  %3 = alloca %struct.pidff_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_field*, align 8
  store %struct.pidff_device* %0, %struct.pidff_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %7 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  store %struct.hid_field* %12, %struct.hid_field** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %17 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %18 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pidff_playback_pid(%struct.pidff_device* %16, i32 %19, i32 0)
  br label %114

21:                                               ; preds = %2
  %22 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %23 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %24 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pidff_playback_pid(%struct.pidff_device* %22, i32 %25, i32 1)
  %27 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %28 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.hid_field*, %struct.hid_field** %32, align 8
  %34 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %37 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %35, i32* %43, align 4
  %44 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %45 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @PID_SPRING, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %51 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %49, i32* %55, align 4
  %56 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %57 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i64, i64* @PID_DURATION, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %65 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i64, i64* @PID_TRIGGER_BUTTON, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 0, i32* %71, align 4
  %72 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %73 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i64, i64* @PID_TRIGGER_REPEAT_INT, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 0, i32* %79, align 4
  %80 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %81 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i64, i64* @PID_GAIN, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %83
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @pidff_set(%struct.TYPE_6__* %84, i32 %85)
  %87 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %88 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i64, i64* @PID_DIRECTION_ENABLE, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 1, i32* %94, align 4
  %95 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %96 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i64, i64* @PID_START_DELAY, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 0, i32* %102, align 4
  %103 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %104 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %107 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @PID_SET_EFFECT, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %113 = call i32 @hid_hw_request(i32 %105, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %21, %15
  ret void
}

declare dso_local i32 @pidff_playback_pid(%struct.pidff_device*, i32, i32) #1

declare dso_local i32 @pidff_set(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @hid_hw_request(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
