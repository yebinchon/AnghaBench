; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_kbd_wmi_led_control_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_kbd_wmi_led_control_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@CONFIG_ASUS_WMI = common dso_local global i32 0, align 4
@ASUS_WMI_METHODID_DSTS = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_KBD_BACKLIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"WMI backlight check: rc %d value %x\00", align 1
@ASUS_WMI_DSTS_PRESENCE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @asus_kbd_wmi_led_control_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_kbd_wmi_led_control_present(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %6 = load i32, i32* @CONFIG_ASUS_WMI, align 4
  %7 = call i32 @IS_ENABLED(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* @ASUS_WMI_METHODID_DSTS, align 4
  %12 = load i32, i32* @ASUS_WMI_DEVID_KBD_BACKLIGHT, align 4
  %13 = call i32 @asus_wmi_evaluate_method(i32 %11, i32 %12, i32 0, i32* %4)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @hid_dbg(%struct.hid_device* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %29

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ASUS_WMI_DSTS_PRESENCE_BIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %20, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @asus_wmi_evaluate_method(i32, i32, i32, i32*) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
