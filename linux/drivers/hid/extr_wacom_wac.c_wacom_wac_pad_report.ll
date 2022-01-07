; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_pad_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_pad_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.hid_field = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.TYPE_2__, %struct.input_dev* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.input_dev = type { i32 }

@EV_ABS = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@PAD_DEVICE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*, %struct.hid_field*)* @wacom_wac_pad_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_pad_report(%struct.hid_device* %0, %struct.hid_report* %1, %struct.hid_field* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca %struct.wacom*, align 8
  %8 = alloca %struct.wacom_wac*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  store %struct.hid_field* %2, %struct.hid_field** %6, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %12 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.wacom* %12, %struct.wacom** %7, align 8
  %13 = load %struct.wacom*, %struct.wacom** %7, align 8
  %14 = getelementptr inbounds %struct.wacom, %struct.wacom* %13, i32 0, i32 0
  store %struct.wacom_wac* %14, %struct.wacom_wac** %8, align 8
  %15 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %16 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %15, i32 0, i32 1
  %17 = load %struct.input_dev*, %struct.input_dev** %16, align 8
  store %struct.input_dev* %17, %struct.input_dev** %9, align 8
  %18 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %19 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %25 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %3
  %30 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %31 = load i32, i32* @EV_ABS, align 4
  %32 = load i32, i32* @ABS_MISC, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @PAD_DEVICE_ID, align 4
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = call i32 @input_event(%struct.input_dev* %30, i32 %31, i32 %32, i32 %39)
  %41 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %42 = call i32 @input_sync(%struct.input_dev* %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %47 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49, %3
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
