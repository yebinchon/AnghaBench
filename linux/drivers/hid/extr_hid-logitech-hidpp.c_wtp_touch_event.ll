; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_touch_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_touch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32, %struct.wtp_data* }
%struct.wtp_data = type { i64, i64 }
%struct.hidpp_touchpad_raw_xy_finger = type { i64, i64, i64, i64, i32, i64 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidpp_device*, %struct.hidpp_touchpad_raw_xy_finger*)* @wtp_touch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wtp_touch_event(%struct.hidpp_device* %0, %struct.hidpp_touchpad_raw_xy_finger* %1) #0 {
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca %struct.hidpp_touchpad_raw_xy_finger*, align 8
  %5 = alloca %struct.wtp_data*, align 8
  %6 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  store %struct.hidpp_touchpad_raw_xy_finger* %1, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %7 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %8 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %7, i32 0, i32 1
  %9 = load %struct.wtp_data*, %struct.wtp_data** %8, align 8
  store %struct.wtp_data* %9, %struct.wtp_data** %5, align 8
  %10 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %11 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %16 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  br label %88

20:                                               ; preds = %14
  %21 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %22 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %25 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @input_mt_get_slot_by_key(i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %29 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @input_mt_slot(i32 %30, i32 %31)
  %33 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %34 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MT_TOOL_FINGER, align 4
  %37 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %38 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @input_mt_report_slot_state(i32 %35, i32 %36, i64 %39)
  %41 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %42 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %88

45:                                               ; preds = %20
  %46 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %47 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @EV_ABS, align 4
  %50 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %51 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %52 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @input_event(i32 %48, i32 %49, i32 %50, i64 %53)
  %55 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %56 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EV_ABS, align 4
  %59 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %60 = load %struct.wtp_data*, %struct.wtp_data** %5, align 8
  %61 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %45
  %65 = load %struct.wtp_data*, %struct.wtp_data** %5, align 8
  %66 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %69 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  br label %76

72:                                               ; preds = %45
  %73 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %74 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  br label %76

76:                                               ; preds = %72, %64
  %77 = phi i64 [ %71, %64 ], [ %75, %72 ]
  %78 = call i32 @input_event(i32 %57, i32 %58, i32 %59, i64 %77)
  %79 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %80 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @EV_ABS, align 4
  %83 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %84 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %85 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @input_event(i32 %81, i32 %82, i32 %83, i64 %86)
  br label %88

88:                                               ; preds = %19, %76, %20
  ret void
}

declare dso_local i32 @input_mt_get_slot_by_key(i32, i32) #1

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i64) #1

declare dso_local i32 @input_event(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
