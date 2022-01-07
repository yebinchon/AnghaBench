; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_query_hidpp_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_query_hidpp_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dj_receiver_dev = type { i32 }

@logi_dj_recv_query_hidpp_devices.template = internal constant [7 x i32] [i32 128, i32 131, i32 129, i32 130, i32 132, i32 0, i32 0], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dj_receiver_dev*)* @logi_dj_recv_query_hidpp_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logi_dj_recv_query_hidpp_devices(%struct.dj_receiver_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dj_receiver_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.dj_receiver_dev* %0, %struct.dj_receiver_dev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32* @kmemdup(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @logi_dj_recv_query_hidpp_devices.template, i64 0, i64 0), i32 28, i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %15 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %19 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %20 = call i32 @hid_hw_raw_request(i32 %16, i32 128, i32* %17, i32 28, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  br label %28

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @hid_hw_raw_request(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
