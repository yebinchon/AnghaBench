; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_send_raw_xy_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_send_raw_xy_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32, i32 }
%struct.hidpp_touchpad_raw_xy = type { i32, i64, i32, i32* }

@HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidpp_device*, %struct.hidpp_touchpad_raw_xy*)* @wtp_send_raw_xy_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wtp_send_raw_xy_event(%struct.hidpp_device* %0, %struct.hidpp_touchpad_raw_xy* %1) #0 {
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca %struct.hidpp_touchpad_raw_xy*, align 8
  %5 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  store %struct.hidpp_touchpad_raw_xy* %1, %struct.hidpp_touchpad_raw_xy** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %11 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %4, align 8
  %12 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @wtp_touch_event(%struct.hidpp_device* %10, i32* %16)
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %4, align 8
  %23 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %28 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %35 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EV_KEY, align 4
  %38 = load i32, i32* @BTN_LEFT, align 4
  %39 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %4, align 8
  %40 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @input_event(i32 %36, i32 %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %33, %26, %21
  %44 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %4, align 8
  %45 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %4, align 8
  %50 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sle i32 %51, 2
  br i1 %52, label %53, label %62

53:                                               ; preds = %48, %43
  %54 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %55 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @input_mt_sync_frame(i32 %56)
  %58 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %59 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @input_sync(i32 %60)
  br label %62

62:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @wtp_touch_event(%struct.hidpp_device*, i32*) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
