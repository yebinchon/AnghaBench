; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-koneplus.c_koneplus_set_actual_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-koneplus.c_koneplus_set_actual_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.koneplus_actual_profile = type { i32, i32, i32 }

@KONEPLUS_COMMAND_ACTUAL_PROFILE = common dso_local global i32 0, align 4
@KONEPLUS_SIZE_ACTUAL_PROFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32)* @koneplus_set_actual_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @koneplus_set_actual_profile(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.koneplus_actual_profile, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @KONEPLUS_COMMAND_ACTUAL_PROFILE, align 4
  %7 = getelementptr inbounds %struct.koneplus_actual_profile, %struct.koneplus_actual_profile* %5, i32 0, i32 2
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @KONEPLUS_SIZE_ACTUAL_PROFILE, align 4
  %9 = getelementptr inbounds %struct.koneplus_actual_profile, %struct.koneplus_actual_profile* %5, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.koneplus_actual_profile, %struct.koneplus_actual_profile* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %13 = load i32, i32* @KONEPLUS_COMMAND_ACTUAL_PROFILE, align 4
  %14 = load i32, i32* @KONEPLUS_SIZE_ACTUAL_PROFILE, align 4
  %15 = call i32 @roccat_common2_send_with_status(%struct.usb_device* %12, i32 %13, %struct.koneplus_actual_profile* %5, i32 %14)
  ret i32 %15
}

declare dso_local i32 @roccat_common2_send_with_status(%struct.usb_device*, i32, %struct.koneplus_actual_profile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
