; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-axp288.c_axp288_get_id_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-axp288.c_axp288_get_id_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_extcon_info = type { i32, i64 }

@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@USB_ROLE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp288_extcon_info*)* @axp288_get_id_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_get_id_pin(%struct.axp288_extcon_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axp288_extcon_info*, align 8
  %4 = alloca i32, align 4
  store %struct.axp288_extcon_info* %0, %struct.axp288_extcon_info** %3, align 8
  %5 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %6 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %11 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @EXTCON_USB_HOST, align 4
  %14 = call i64 @extcon_get_state(i64 %12, i32 %13)
  %15 = icmp sle i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %19 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @usb_role_switch_get_role(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @USB_ROLE_HOST, align 4
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @extcon_get_state(i64, i32) #1

declare dso_local i32 @usb_role_switch_get_role(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
