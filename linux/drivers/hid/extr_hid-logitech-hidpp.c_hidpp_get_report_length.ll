; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_get_report_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_get_report_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.hid_report_enum* }
%struct.hid_report_enum = type { %struct.hid_report** }
%struct.hid_report = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@HID_OUTPUT_REPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32)* @hidpp_get_report_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_get_report_length(%struct.hid_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_report_enum*, align 8
  %7 = alloca %struct.hid_report*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = load %struct.hid_report_enum*, %struct.hid_report_enum** %9, align 8
  %11 = load i64, i64* @HID_OUTPUT_REPORT, align 8
  %12 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %10, i64 %11
  store %struct.hid_report_enum* %12, %struct.hid_report_enum** %6, align 8
  %13 = load %struct.hid_report_enum*, %struct.hid_report_enum** %6, align 8
  %14 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %13, i32 0, i32 0
  %15 = load %struct.hid_report**, %struct.hid_report*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %15, i64 %17
  %19 = load %struct.hid_report*, %struct.hid_report** %18, align 8
  store %struct.hid_report* %19, %struct.hid_report** %7, align 8
  %20 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %21 = icmp ne %struct.hid_report* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %25 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
