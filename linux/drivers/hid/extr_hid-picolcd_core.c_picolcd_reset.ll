; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64 }
%struct.picolcd_data = type { i32, i32 }
%struct.hid_report = type { i32, i32* }

@REPORT_RESET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@USB_DEVICE_ID_PICOLCD_BOOTLOADER = common dso_local global i64 0, align 8
@PICOLCD_BOOTLOADER = common dso_local global i32 0, align 4
@PICOLCD_FAILED = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picolcd_reset(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.picolcd_data*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = call %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.picolcd_data* %9, %struct.picolcd_data** %4, align 8
  %10 = load i32, i32* @REPORT_RESET, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %12 = call %struct.hid_report* @picolcd_out_report(i32 %10, %struct.hid_device* %11)
  store %struct.hid_report* %12, %struct.hid_report** %5, align 8
  %13 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %14 = icmp ne %struct.picolcd_data* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %17 = icmp ne %struct.hid_report* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %20 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %15, %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %86

26:                                               ; preds = %18
  %27 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %28 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %27, i32 0, i32 1
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %32 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @USB_DEVICE_ID_PICOLCD_BOOTLOADER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32, i32* @PICOLCD_BOOTLOADER, align 4
  %38 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %39 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %26
  %43 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %44 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hid_set_field(i32 %47, i32 0, i32 1)
  %49 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %50 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PICOLCD_FAILED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %57 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %56, i32 0, i32 1
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %86

62:                                               ; preds = %42
  %63 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %64 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %65 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %66 = call i32 @hid_hw_request(%struct.hid_device* %63, %struct.hid_report* %64, i32 %65)
  %67 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %68 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %67, i32 0, i32 1
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %72 = call i32 @picolcd_check_version(%struct.hid_device* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %86

77:                                               ; preds = %62
  %78 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %79 = call i32 @picolcd_resume_lcd(%struct.picolcd_data* %78)
  %80 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %81 = call i32 @picolcd_resume_backlight(%struct.picolcd_data* %80)
  %82 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %83 = call i32 @picolcd_fb_refresh(%struct.picolcd_data* %82)
  %84 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %85 = call i32 @picolcd_leds_set(%struct.picolcd_data* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %77, %75, %55, %23
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local %struct.hid_report* @picolcd_out_report(i32, %struct.hid_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_set_field(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.hid_report*, i32) #1

declare dso_local i32 @picolcd_check_version(%struct.hid_device*) #1

declare dso_local i32 @picolcd_resume_lcd(%struct.picolcd_data*) #1

declare dso_local i32 @picolcd_resume_backlight(%struct.picolcd_data*) #1

declare dso_local i32 @picolcd_fb_refresh(%struct.picolcd_data*) #1

declare dso_local i32 @picolcd_leds_set(%struct.picolcd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
