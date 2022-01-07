; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_hrw_get_wheel_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_hrw_get_wheel_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }
%struct.hidpp_report = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@HIDPP_PAGE_HIRES_WHEEL = common dso_local global i32 0, align 4
@CMD_HIRES_WHEEL_GET_WHEEL_CAPABILITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Couldn't get wheel multiplier (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*, i32*)* @hidpp_hrw_get_wheel_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_hrw_get_wheel_capability(%struct.hidpp_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hidpp_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hidpp_report, align 8
  store %struct.hidpp_device* %0, %struct.hidpp_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.hidpp_device*, %struct.hidpp_device** %4, align 8
  %11 = load i32, i32* @HIDPP_PAGE_HIRES_WHEEL, align 4
  %12 = call i32 @hidpp_root_get_feature(%struct.hidpp_device* %10, i32 %11, i32* %6, i32* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.hidpp_device*, %struct.hidpp_device** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CMD_HIRES_WHEEL_GET_WHEEL_CAPABILITY, align 4
  %20 = call i32 @hidpp_send_fap_command_sync(%struct.hidpp_device* %17, i32 %18, i32 %19, i32* null, i32 0, %struct.hidpp_report* %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %31

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %9, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %38

31:                                               ; preds = %23, %15
  %32 = load %struct.hidpp_device*, %struct.hidpp_device** %4, align 8
  %33 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @hid_warn(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @hidpp_root_get_feature(%struct.hidpp_device*, i32, i32*, i32*) #1

declare dso_local i32 @hidpp_send_fap_command_sync(%struct.hidpp_device*, i32, i32, i32*, i32, %struct.hidpp_report*) #1

declare dso_local i32 @hid_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
