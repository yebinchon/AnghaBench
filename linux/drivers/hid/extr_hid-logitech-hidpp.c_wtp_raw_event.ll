; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hidpp_device = type { i32, i32, %struct.wtp_data* }
%struct.wtp_data = type { i32 }
%struct.hidpp_report = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hidpp_touchpad_raw_xy = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Received HID report of bad size (%d)\00", align 1
@HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@EVENT_TOUCHPAD_RAW_XY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32*, i32)* @wtp_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wtp_raw_event(%struct.hid_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hidpp_device*, align 8
  %9 = alloca %struct.wtp_data*, align 8
  %10 = alloca %struct.hidpp_report*, align 8
  %11 = alloca %struct.hidpp_touchpad_raw_xy, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %13 = call %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.hidpp_device* %13, %struct.hidpp_device** %8, align 8
  %14 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %15 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %14, i32 0, i32 2
  %16 = load %struct.wtp_data*, %struct.wtp_data** %15, align 8
  store %struct.wtp_data* %16, %struct.wtp_data** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.hidpp_report*
  store %struct.hidpp_report* %18, %struct.hidpp_report** %10, align 8
  %19 = load %struct.wtp_data*, %struct.wtp_data** %9, align 8
  %20 = icmp ne %struct.wtp_data* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %23 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %3
  store i32 1, i32* %4, align 4
  br label %112

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %111 [
    i32 2, label %31
    i32 128, label %87
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @hid_err(%struct.hid_device* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 1, i32* %4, align 4
  br label %112

38:                                               ; preds = %31
  %39 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %40 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %38
  %46 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %47 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @EV_KEY, align 4
  %50 = load i32, i32* @BTN_LEFT, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @input_event(i32 %48, i32 %49, i32 %50, i32 %58)
  %60 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %61 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @EV_KEY, align 4
  %64 = load i32, i32* @BTN_RIGHT, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 2
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @input_event(i32 %62, i32 %63, i32 %64, i32 %72)
  %74 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %75 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @input_sync(i32 %76)
  store i32 0, i32* %4, align 4
  br label %112

78:                                               ; preds = %38
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 21
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %112

82:                                               ; preds = %78
  %83 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 7
  %86 = call i32 @wtp_mouse_raw_xy_event(%struct.hidpp_device* %83, i32* %85)
  store i32 %86, i32* %4, align 4
  br label %112

87:                                               ; preds = %27
  %88 = load %struct.hidpp_report*, %struct.hidpp_report** %10, align 8
  %89 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.wtp_data*, %struct.wtp_data** %9, align 8
  %93 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %87
  %97 = load %struct.hidpp_report*, %struct.hidpp_report** %10, align 8
  %98 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @EVENT_TOUCHPAD_RAW_XY, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %87
  store i32 1, i32* %4, align 4
  br label %112

104:                                              ; preds = %96
  %105 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = call i32 @hidpp_touchpad_raw_xy_event(%struct.hidpp_device* %105, i32* %107, %struct.hidpp_touchpad_raw_xy* %11)
  %109 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %110 = call i32 @wtp_send_raw_xy_event(%struct.hidpp_device* %109, %struct.hidpp_touchpad_raw_xy* %11)
  store i32 0, i32* %4, align 4
  br label %112

111:                                              ; preds = %27
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %104, %103, %82, %81, %45, %34, %26
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @wtp_mouse_raw_xy_event(%struct.hidpp_device*, i32*) #1

declare dso_local i32 @hidpp_touchpad_raw_xy_event(%struct.hidpp_device*, i32*, %struct.hidpp_touchpad_raw_xy*) #1

declare dso_local i32 @wtp_send_raw_xy_event(%struct.hidpp_device*, %struct.hidpp_touchpad_raw_xy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
