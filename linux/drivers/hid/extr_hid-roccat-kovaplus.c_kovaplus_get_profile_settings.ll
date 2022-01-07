; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_get_profile_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_get_profile_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.kovaplus_profile_settings = type { i32 }

@KOVAPLUS_CONTROL_REQUEST_PROFILE_SETTINGS = common dso_local global i32 0, align 4
@KOVAPLUS_COMMAND_PROFILE_SETTINGS = common dso_local global i32 0, align 4
@KOVAPLUS_SIZE_PROFILE_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.kovaplus_profile_settings*, i32)* @kovaplus_get_profile_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kovaplus_get_profile_settings(%struct.usb_device* %0, %struct.kovaplus_profile_settings* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.kovaplus_profile_settings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.kovaplus_profile_settings* %1, %struct.kovaplus_profile_settings** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @KOVAPLUS_CONTROL_REQUEST_PROFILE_SETTINGS, align 4
  %12 = call i32 @kovaplus_select_profile(%struct.usb_device* %9, i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %19 = load i32, i32* @KOVAPLUS_COMMAND_PROFILE_SETTINGS, align 4
  %20 = load %struct.kovaplus_profile_settings*, %struct.kovaplus_profile_settings** %6, align 8
  %21 = load i32, i32* @KOVAPLUS_SIZE_PROFILE_SETTINGS, align 4
  %22 = call i32 @roccat_common2_receive(%struct.usb_device* %18, i32 %19, %struct.kovaplus_profile_settings* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @kovaplus_select_profile(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @roccat_common2_receive(%struct.usb_device*, i32, %struct.kovaplus_profile_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
