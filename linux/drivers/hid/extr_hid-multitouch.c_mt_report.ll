; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { %struct.hid_field** }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mt_device = type { i32 }
%struct.mt_report_data = type { i64 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*)* @mt_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt_report(%struct.hid_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca %struct.mt_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca %struct.mt_report_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_report* %1, %struct.hid_report** %4, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = call %struct.mt_device* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.mt_device* %9, %struct.mt_device** %5, align 8
  %10 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %11 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %10, i32 0, i32 0
  %12 = load %struct.hid_field**, %struct.hid_field*** %11, align 8
  %13 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %12, i64 0
  %14 = load %struct.hid_field*, %struct.hid_field** %13, align 8
  store %struct.hid_field* %14, %struct.hid_field** %6, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.mt_device*, %struct.mt_device** %5, align 8
  %24 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %25 = call %struct.mt_report_data* @mt_find_report_data(%struct.mt_device* %23, %struct.hid_report* %24)
  store %struct.mt_report_data* %25, %struct.mt_report_data** %7, align 8
  %26 = load %struct.mt_report_data*, %struct.mt_report_data** %7, align 8
  %27 = icmp ne %struct.mt_report_data* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.mt_report_data*, %struct.mt_report_data** %7, align 8
  %30 = getelementptr inbounds %struct.mt_report_data, %struct.mt_report_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %35 = load %struct.mt_report_data*, %struct.mt_report_data** %7, align 8
  call void @mt_touch_report(%struct.hid_device* %34, %struct.mt_report_data* %35)
  br label %58

36:                                               ; preds = %28, %22
  %37 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %38 = icmp ne %struct.hid_field* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %41 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %46 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %53 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @input_sync(i64 %56)
  br label %58

58:                                               ; preds = %21, %33, %51, %44, %39, %36
  ret void
}

declare dso_local %struct.mt_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local %struct.mt_report_data* @mt_find_report_data(%struct.mt_device*, %struct.hid_report*) #1

declare dso_local void @mt_touch_report(%struct.hid_device*, %struct.mt_report_data*) #1

declare dso_local i32 @input_sync(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
