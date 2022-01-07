; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_switch_to_dj_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_switch_to_dj_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dj_receiver_dev = type { i64, %struct.hid_device* }
%struct.hid_device = type { i32 }
%struct.dj_report = type { i32, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@recvr_type_dj = common dso_local global i64 0, align 8
@REPORT_ID_DJ_SHORT = common dso_local global i32 0, align 4
@REPORT_TYPE_CMD_SWITCH = common dso_local global i32 0, align 4
@CMD_SWITCH_PARAM_DEVBITFIELD = common dso_local global i64 0, align 8
@CMD_SWITCH_PARAM_TIMEOUT_SECONDS = common dso_local global i64 0, align 8
@HIDPP_REPORT_SHORT_LENGTH = common dso_local global i32 0, align 4
@REPORT_ID_HIDPP_SHORT = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dj_receiver_dev*, i32)* @logi_dj_recv_switch_to_dj_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logi_dj_recv_switch_to_dj_mode(%struct.dj_receiver_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dj_receiver_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.dj_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.dj_receiver_dev* %0, %struct.dj_receiver_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %4, align 8
  %11 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %10, i32 0, i32 1
  %12 = load %struct.hid_device*, %struct.hid_device** %11, align 8
  store %struct.hid_device* %12, %struct.hid_device** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dj_report* @kzalloc(i32 24, i32 %13)
  store %struct.dj_report* %14, %struct.dj_report** %7, align 8
  %15 = load %struct.dj_report*, %struct.dj_report** %7, align 8
  %16 = icmp ne %struct.dj_report* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %81

20:                                               ; preds = %2
  %21 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %4, align 8
  %22 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @recvr_type_dj, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load i32, i32* @REPORT_ID_DJ_SHORT, align 4
  %28 = load %struct.dj_report*, %struct.dj_report** %7, align 8
  %29 = getelementptr inbounds %struct.dj_report, %struct.dj_report* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dj_report*, %struct.dj_report** %7, align 8
  %31 = getelementptr inbounds %struct.dj_report, %struct.dj_report* %30, i32 0, i32 0
  store i32 255, i32* %31, align 8
  %32 = load i32, i32* @REPORT_TYPE_CMD_SWITCH, align 4
  %33 = load %struct.dj_report*, %struct.dj_report** %7, align 8
  %34 = getelementptr inbounds %struct.dj_report, %struct.dj_report* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.dj_report*, %struct.dj_report** %7, align 8
  %36 = getelementptr inbounds %struct.dj_report, %struct.dj_report* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @CMD_SWITCH_PARAM_DEVBITFIELD, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 63, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.dj_report*, %struct.dj_report** %7, align 8
  %42 = getelementptr inbounds %struct.dj_report, %struct.dj_report* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @CMD_SWITCH_PARAM_TIMEOUT_SECONDS, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %40, i32* %45, align 4
  %46 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %4, align 8
  %47 = load %struct.dj_report*, %struct.dj_report** %7, align 8
  %48 = call i32 @logi_dj_recv_send_report(%struct.dj_receiver_dev* %46, %struct.dj_report* %47)
  store i32 %48, i32* %9, align 4
  %49 = call i32 @msleep(i32 50)
  br label %50

50:                                               ; preds = %26, %20
  %51 = load %struct.dj_report*, %struct.dj_report** %7, align 8
  %52 = bitcast %struct.dj_report* %51 to i32*
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @HIDPP_REPORT_SHORT_LENGTH, align 4
  %55 = call i32 @memset(i32* %53, i32 0, i32 %54)
  %56 = load i32, i32* @REPORT_ID_HIDPP_SHORT, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 255, i32* %60, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 128, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32 0, i32* %64, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32 0, i32* %66, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  store i32 9, i32* %68, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  store i32 0, i32* %70, align 4
  %71 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %72 = load i32, i32* @REPORT_ID_HIDPP_SHORT, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @HIDPP_REPORT_SHORT_LENGTH, align 4
  %75 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %76 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %77 = call i32 @hid_hw_raw_request(%struct.hid_device* %71, i32 %72, i32* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.dj_report*, %struct.dj_report** %7, align 8
  %79 = call i32 @kfree(%struct.dj_report* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %50, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.dj_report* @kzalloc(i32, i32) #1

declare dso_local i32 @logi_dj_recv_send_report(%struct.dj_receiver_dev*, %struct.dj_report*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.dj_report*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
