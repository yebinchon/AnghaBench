; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.mt_device = type { i32 }
%struct.mt_report_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @mt_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt_device*, align 8
  %11 = alloca %struct.mt_report_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = call %struct.mt_device* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.mt_device* %13, %struct.mt_device** %10, align 8
  %14 = load %struct.mt_device*, %struct.mt_device** %10, align 8
  %15 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %16 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mt_report_data* @mt_find_report_data(%struct.mt_device* %14, i32 %17)
  store %struct.mt_report_data* %18, %struct.mt_report_data** %11, align 8
  %19 = load %struct.mt_report_data*, %struct.mt_report_data** %11, align 8
  %20 = icmp ne %struct.mt_report_data* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.mt_report_data*, %struct.mt_report_data** %11, align 8
  %23 = getelementptr inbounds %struct.mt_report_data, %struct.mt_report_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %28 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %29 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @mt_touch_event(%struct.hid_device* %27, %struct.hid_field* %28, %struct.hid_usage* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %33

32:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.mt_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local %struct.mt_report_data* @mt_find_report_data(%struct.mt_device*, i32) #1

declare dso_local i32 @mt_touch_event(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
