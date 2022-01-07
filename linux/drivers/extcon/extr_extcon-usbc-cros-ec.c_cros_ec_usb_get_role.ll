; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-usbc-cros-ec.c_cros_ec_usb_get_role.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-usbc-cros-ec.c_cros_ec_usb_get_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_extcon_info = type { i32 }
%struct.ec_params_usb_pd_control = type { i32, i32, i32, i32 }
%struct.ec_response_usb_pd_control_v1 = type { i32, i32, i32 }

@USB_PD_CTRL_ROLE_NO_CHANGE = common dso_local global i32 0, align 4
@USB_PD_CTRL_MUX_NO_CHANGE = common dso_local global i32 0, align 4
@USB_PD_CTRL_SWAP_NONE = common dso_local global i32 0, align 4
@EC_CMD_USB_PD_CONTROL = common dso_local global i32 0, align 4
@PD_CTRL_RESP_ENABLED_CONNECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_extcon_info*, i32*)* @cros_ec_usb_get_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_usb_get_role(%struct.cros_ec_extcon_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_extcon_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ec_params_usb_pd_control, align 4
  %7 = alloca %struct.ec_response_usb_pd_control_v1, align 4
  %8 = alloca i32, align 4
  store %struct.cros_ec_extcon_info* %0, %struct.cros_ec_extcon_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %10 = getelementptr inbounds %struct.cros_ec_extcon_info, %struct.cros_ec_extcon_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.ec_params_usb_pd_control, %struct.ec_params_usb_pd_control* %6, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @USB_PD_CTRL_ROLE_NO_CHANGE, align 4
  %14 = getelementptr inbounds %struct.ec_params_usb_pd_control, %struct.ec_params_usb_pd_control* %6, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @USB_PD_CTRL_MUX_NO_CHANGE, align 4
  %16 = getelementptr inbounds %struct.ec_params_usb_pd_control, %struct.ec_params_usb_pd_control* %6, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @USB_PD_CTRL_SWAP_NONE, align 4
  %18 = getelementptr inbounds %struct.ec_params_usb_pd_control, %struct.ec_params_usb_pd_control* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.cros_ec_extcon_info*, %struct.cros_ec_extcon_info** %4, align 8
  %20 = load i32, i32* @EC_CMD_USB_PD_CONTROL, align 4
  %21 = call i32 @cros_ec_pd_command(%struct.cros_ec_extcon_info* %19, i32 %20, i32 1, %struct.ec_params_usb_pd_control* %6, i32 16, %struct.ec_response_usb_pd_control_v1* %7, i32 12)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.ec_response_usb_pd_control_v1, %struct.ec_response_usb_pd_control_v1* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PD_CTRL_RESP_ENABLED_CONNECTED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.ec_response_usb_pd_control_v1, %struct.ec_response_usb_pd_control_v1* %7, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.ec_response_usb_pd_control_v1, %struct.ec_response_usb_pd_control_v1* %7, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %32, %24
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @cros_ec_pd_command(%struct.cros_ec_extcon_info*, i32, i32, %struct.ec_params_usb_pd_control*, i32, %struct.ec_response_usb_pd_control_v1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
