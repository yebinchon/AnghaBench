; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_lcd.c_picolcd_set_contrast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_lcd.c_picolcd_set_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.picolcd_data = type { i32, i32, i32, i32 }
%struct.hid_report = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@REPORT_CONTRAST = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PICOLCD_FAILED = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32)* @picolcd_set_contrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @picolcd_set_contrast(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lcd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.picolcd_data*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i64, align 8
  store %struct.lcd_device* %0, %struct.lcd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %10 = call %struct.picolcd_data* @lcd_get_data(%struct.lcd_device* %9)
  store %struct.picolcd_data* %10, %struct.picolcd_data** %6, align 8
  %11 = load i32, i32* @REPORT_CONTRAST, align 4
  %12 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %13 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hid_report* @picolcd_out_report(i32 %11, i32 %14)
  store %struct.hid_report* %15, %struct.hid_report** %7, align 8
  %16 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %17 = icmp ne %struct.hid_report* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %20 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %25 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %23, %18, %2
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %71

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 255
  %38 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %39 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %41 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %40, i32 0, i32 2
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %45 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %50 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @hid_set_field(%struct.TYPE_2__* %48, i32 0, i32 %51)
  %53 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %54 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PICOLCD_FAILED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %35
  %60 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %61 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %64 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %65 = call i32 @hid_hw_request(i32 %62, %struct.hid_report* %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %35
  %67 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %68 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %67, i32 0, i32 2
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %32
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.picolcd_data* @lcd_get_data(%struct.lcd_device*) #1

declare dso_local %struct.hid_report* @picolcd_out_report(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_set_field(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @hid_hw_request(i32, %struct.hid_report*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
