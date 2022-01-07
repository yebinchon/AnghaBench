; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_send_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.roccat_common2_control = type { i32, i32, i32 }

@PYRA_CONTROL_REQUEST_PROFILE_SETTINGS = common dso_local global i32 0, align 4
@PYRA_CONTROL_REQUEST_PROFILE_BUTTONS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ROCCAT_COMMON_COMMAND_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32)* @pyra_send_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pyra_send_control(%struct.usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.roccat_common2_control, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @PYRA_CONTROL_REQUEST_PROFILE_SETTINGS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PYRA_CONTROL_REQUEST_PROFILE_BUTTONS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %19, %12
  %26 = load i32, i32* @ROCCAT_COMMON_COMMAND_CONTROL, align 4
  %27 = getelementptr inbounds %struct.roccat_common2_control, %struct.roccat_common2_control* %8, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.roccat_common2_control, %struct.roccat_common2_control* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.roccat_common2_control, %struct.roccat_common2_control* %8, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %33 = load i32, i32* @ROCCAT_COMMON_COMMAND_CONTROL, align 4
  %34 = call i32 @roccat_common2_send(%struct.usb_device* %32, i32 %33, %struct.roccat_common2_control* %8, i32 12)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %25, %22
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @roccat_common2_send(%struct.usb_device*, i32, %struct.roccat_common2_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
