; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_match_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_match_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hid_report_id* }
%struct.hid_report_id = type { i64 }
%struct.hid_report = type { i64 }

@HID_TERMINATOR = common dso_local global i64 0, align 8
@HID_ANY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*)* @hid_match_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_match_report(%struct.hid_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca %struct.hid_report_id*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.hid_report_id*, %struct.hid_report_id** %10, align 8
  store %struct.hid_report_id* %11, %struct.hid_report_id** %6, align 8
  %12 = load %struct.hid_report_id*, %struct.hid_report_id** %6, align 8
  %13 = icmp ne %struct.hid_report_id* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %38, %15
  %17 = load %struct.hid_report_id*, %struct.hid_report_id** %6, align 8
  %18 = getelementptr inbounds %struct.hid_report_id, %struct.hid_report_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HID_TERMINATOR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.hid_report_id*, %struct.hid_report_id** %6, align 8
  %24 = getelementptr inbounds %struct.hid_report_id, %struct.hid_report_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HID_ANY_ID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = load %struct.hid_report_id*, %struct.hid_report_id** %6, align 8
  %30 = getelementptr inbounds %struct.hid_report_id, %struct.hid_report_id* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %33 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %22
  store i32 1, i32* %3, align 4
  br label %42

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.hid_report_id*, %struct.hid_report_id** %6, align 8
  %40 = getelementptr inbounds %struct.hid_report_id, %struct.hid_report_id* %39, i32 1
  store %struct.hid_report_id* %40, %struct.hid_report_id** %6, align 8
  br label %16

41:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %36, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
