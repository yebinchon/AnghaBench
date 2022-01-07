; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_backlight.c_picolcd_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_backlight.c_picolcd_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.picolcd_data = type { i32, i64, i32, i32, i32 }
%struct.hid_report = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@REPORT_BRIGHTNESS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@PICOLCD_FAILED = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @picolcd_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @picolcd_set_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.picolcd_data*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca i64, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.picolcd_data* @bl_get_data(%struct.backlight_device* %7)
  store %struct.picolcd_data* %8, %struct.picolcd_data** %4, align 8
  %9 = load i32, i32* @REPORT_BRIGHTNESS, align 4
  %10 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %11 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.hid_report* @picolcd_out_report(i32 %9, i32 %12)
  store %struct.hid_report* %13, %struct.hid_report** %5, align 8
  %14 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %15 = icmp ne %struct.hid_report* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %18 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %23 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %21, %16, %1
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %87

33:                                               ; preds = %21
  %34 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %35 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 255
  %39 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %40 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %42 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %46 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %48 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %47, i32 0, i32 3
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %52 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %57 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %33
  %62 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %63 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  br label %66

65:                                               ; preds = %33
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ %64, %61 ], [ 0, %65 ]
  %68 = call i32 @hid_set_field(%struct.TYPE_4__* %55, i32 0, i32 %67)
  %69 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %70 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PICOLCD_FAILED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %66
  %76 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %77 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %80 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %81 = call i32 @hid_hw_request(i32 %78, %struct.hid_report* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %66
  %83 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %84 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %83, i32 0, i32 3
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %30
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.picolcd_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local %struct.hid_report* @picolcd_out_report(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_set_field(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @hid_hw_request(i32, %struct.hid_report*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
