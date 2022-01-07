; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64 }
%struct.hidpp_device = type { i32 }

@HID_GROUP_LOGITECH_27MHZ_DEVICE = common dso_local global i64 0, align 8
@HIDPP_QUIRK_HIDPP_CONSUMER_VENDOR_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @hidpp_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hidpp_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hidpp_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %10 = call %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.hidpp_device* %10, %struct.hidpp_device** %8, align 8
  %11 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %12 = icmp ne %struct.hidpp_device* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %4, align 8
  br label %35

15:                                               ; preds = %3
  %16 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %17 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HID_GROUP_LOGITECH_27MHZ_DEVICE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %23 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HIDPP_QUIRK_HIDPP_CONSUMER_VENDOR_KEYS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21, %15
  %29 = load %struct.hidpp_device*, %struct.hidpp_device** %8, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @hidpp10_consumer_keys_report_fixup(%struct.hidpp_device* %29, i32* %30, i32* %31)
  store i32* %32, i32** %6, align 8
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %4, align 8
  br label %35

35:                                               ; preds = %33, %13
  %36 = load i32*, i32** %4, align 8
  ret i32* %36
}

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32* @hidpp10_consumer_keys_report_fixup(%struct.hidpp_device*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
