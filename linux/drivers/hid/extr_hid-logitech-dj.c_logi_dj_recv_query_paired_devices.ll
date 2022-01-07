; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_query_paired_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_query_paired_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dj_receiver_dev = type { i64, i32 }
%struct.dj_report = type { i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@recvr_type_dj = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REPORT_ID_DJ_SHORT = common dso_local global i32 0, align 4
@REPORT_TYPE_CMD_GET_PAIRED_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dj_receiver_dev*)* @logi_dj_recv_query_paired_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logi_dj_recv_query_paired_devices(%struct.dj_receiver_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dj_receiver_dev*, align 8
  %4 = alloca %struct.dj_report*, align 8
  %5 = alloca i32, align 4
  store %struct.dj_receiver_dev* %0, %struct.dj_receiver_dev** %3, align 8
  %6 = load i32, i32* @jiffies, align 4
  %7 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %8 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %10 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @recvr_type_dj, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %16 = call i32 @logi_dj_recv_query_hidpp_devices(%struct.dj_receiver_dev* %15)
  store i32 %16, i32* %2, align 4
  br label %40

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dj_report* @kzalloc(i32 12, i32 %18)
  store %struct.dj_report* %19, %struct.dj_report** %4, align 8
  %20 = load %struct.dj_report*, %struct.dj_report** %4, align 8
  %21 = icmp ne %struct.dj_report* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %40

25:                                               ; preds = %17
  %26 = load i32, i32* @REPORT_ID_DJ_SHORT, align 4
  %27 = load %struct.dj_report*, %struct.dj_report** %4, align 8
  %28 = getelementptr inbounds %struct.dj_report, %struct.dj_report* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.dj_report*, %struct.dj_report** %4, align 8
  %30 = getelementptr inbounds %struct.dj_report, %struct.dj_report* %29, i32 0, i32 0
  store i32 255, i32* %30, align 4
  %31 = load i32, i32* @REPORT_TYPE_CMD_GET_PAIRED_DEVICES, align 4
  %32 = load %struct.dj_report*, %struct.dj_report** %4, align 8
  %33 = getelementptr inbounds %struct.dj_report, %struct.dj_report* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %35 = load %struct.dj_report*, %struct.dj_report** %4, align 8
  %36 = call i32 @logi_dj_recv_send_report(%struct.dj_receiver_dev* %34, %struct.dj_report* %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.dj_report*, %struct.dj_report** %4, align 8
  %38 = call i32 @kfree(%struct.dj_report* %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %25, %22, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @logi_dj_recv_query_hidpp_devices(%struct.dj_receiver_dev*) #1

declare dso_local %struct.dj_report* @kzalloc(i32, i32) #1

declare dso_local i32 @logi_dj_recv_send_report(%struct.dj_receiver_dev*, %struct.dj_report*) #1

declare dso_local i32 @kfree(%struct.dj_report*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
