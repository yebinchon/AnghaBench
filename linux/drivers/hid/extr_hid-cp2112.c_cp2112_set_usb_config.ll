; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_set_usb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_set_usb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.cp2112_usb_config_report = type { i64 }

@CP2112_USB_CONFIG = common dso_local global i64 0, align 8
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error writing usb config: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.cp2112_usb_config_report*)* @cp2112_set_usb_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp2112_set_usb_config(%struct.hid_device* %0, %struct.cp2112_usb_config_report* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.cp2112_usb_config_report*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.cp2112_usb_config_report* %1, %struct.cp2112_usb_config_report** %5, align 8
  %7 = load %struct.cp2112_usb_config_report*, %struct.cp2112_usb_config_report** %5, align 8
  %8 = getelementptr inbounds %struct.cp2112_usb_config_report, %struct.cp2112_usb_config_report* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CP2112_USB_CONFIG, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %15 = load %struct.cp2112_usb_config_report*, %struct.cp2112_usb_config_report** %5, align 8
  %16 = bitcast %struct.cp2112_usb_config_report* %15 to i32*
  %17 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %18 = call i32 @cp2112_hid_output(%struct.hid_device* %14, i32* %16, i32 8, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 8
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @hid_err(%struct.hid_device* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %30, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cp2112_hid_output(%struct.hid_device*, i32*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
