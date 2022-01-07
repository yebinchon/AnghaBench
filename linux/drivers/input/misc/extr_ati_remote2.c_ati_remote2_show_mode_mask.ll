; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_show_mode_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_show_mode_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.ati_remote2 = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ati_remote2_show_mode_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote2_show_mode_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.ati_remote2*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.usb_device* @to_usb_device(%struct.device* %10)
  store %struct.usb_device* %11, %struct.usb_device** %7, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %13 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %12, i32 0)
  store %struct.usb_interface* %13, %struct.usb_interface** %8, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %15 = call %struct.ati_remote2* @usb_get_intfdata(%struct.usb_interface* %14)
  store %struct.ati_remote2* %15, %struct.ati_remote2** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.ati_remote2*, %struct.ati_remote2** %9, align 8
  %18 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  ret i32 %20
}

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local %struct.ati_remote2* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
