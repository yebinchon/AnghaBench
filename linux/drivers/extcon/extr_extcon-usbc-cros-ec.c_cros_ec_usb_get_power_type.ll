; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-usbc-cros-ec.c_cros_ec_usb_get_power_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-usbc-cros-ec.c_cros_ec_usb_get_power_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_extcon_info = type { i32 }
%struct.ec_params_usb_pd_power_info = type { i32 }
%struct.ec_response_usb_pd_power_info = type { i32 }

@EC_CMD_USB_PD_POWER_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_extcon_info*)* @cros_ec_usb_get_power_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_usb_get_power_type(%struct.cros_ec_extcon_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_extcon_info*, align 8
  %4 = alloca %struct.ec_params_usb_pd_power_info, align 4
  %5 = alloca %struct.ec_response_usb_pd_power_info, align 4
  %6 = alloca i32, align 4
  store %struct.cros_ec_extcon_info* %0, %struct.cros_ec_extcon_info** %3, align 8
  %7 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %3, align 8
  %8 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.ec_params_usb_pd_power_info, %struct.ec_params_usb_pd_power_info* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %3, align 8
  %12 = load i32, i32* @EC_CMD_USB_PD_POWER_INFO, align 4
  %13 = call i32 @cros_ec_pd_command(%struct.cros_ec_extcon_info* %11, i32 %12, i32 0, %struct.ec_params_usb_pd_power_info* %4, i32 4, %struct.ec_response_usb_pd_power_info* %5, i32 4)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @cros_ec_pd_command(%struct.cros_ec_extcon_info*, i32, i32, %struct.ec_params_usb_pd_power_info*, i32, %struct.ec_response_usb_pd_power_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
