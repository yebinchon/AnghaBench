; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_keep_values_up_to_date.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_keep_values_up_to_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kovaplus_device = type { i32, i32, i32 }
%struct.kovaplus_mouse_report_button = type { i32, i32, i32 }

@KOVAPLUS_MOUSE_REPORT_NUMBER_BUTTON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kovaplus_device*, i64*)* @kovaplus_keep_values_up_to_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kovaplus_keep_values_up_to_date(%struct.kovaplus_device* %0, i64* %1) #0 {
  %3 = alloca %struct.kovaplus_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.kovaplus_mouse_report_button*, align 8
  store %struct.kovaplus_device* %0, %struct.kovaplus_device** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @KOVAPLUS_MOUSE_REPORT_NUMBER_BUTTON, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %44

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8
  %14 = bitcast i64* %13 to %struct.kovaplus_mouse_report_button*
  store %struct.kovaplus_mouse_report_button* %14, %struct.kovaplus_mouse_report_button** %5, align 8
  %15 = load %struct.kovaplus_mouse_report_button*, %struct.kovaplus_mouse_report_button** %5, align 8
  %16 = getelementptr inbounds %struct.kovaplus_mouse_report_button, %struct.kovaplus_mouse_report_button* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %43 [
    i32 129, label %18
    i32 130, label %25
    i32 128, label %32
  ]

18:                                               ; preds = %12
  %19 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %20 = load %struct.kovaplus_mouse_report_button*, %struct.kovaplus_mouse_report_button** %5, align 8
  %21 = getelementptr inbounds %struct.kovaplus_mouse_report_button, %struct.kovaplus_mouse_report_button* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @kovaplus_profile_activated(%struct.kovaplus_device* %19, i32 %23)
  br label %44

25:                                               ; preds = %12
  %26 = load %struct.kovaplus_mouse_report_button*, %struct.kovaplus_mouse_report_button** %5, align 8
  %27 = getelementptr inbounds %struct.kovaplus_mouse_report_button, %struct.kovaplus_mouse_report_button* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kovaplus_convert_event_cpi(i32 %28)
  %30 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %31 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  br label %44

32:                                               ; preds = %12
  %33 = load %struct.kovaplus_mouse_report_button*, %struct.kovaplus_mouse_report_button** %5, align 8
  %34 = getelementptr inbounds %struct.kovaplus_mouse_report_button, %struct.kovaplus_mouse_report_button* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %37 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.kovaplus_mouse_report_button*, %struct.kovaplus_mouse_report_button** %5, align 8
  %39 = getelementptr inbounds %struct.kovaplus_mouse_report_button, %struct.kovaplus_mouse_report_button* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %42 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %44

43:                                               ; preds = %12
  br label %44

44:                                               ; preds = %11, %43, %32, %25, %18
  ret void
}

declare dso_local i32 @kovaplus_profile_activated(%struct.kovaplus_device*, i32) #1

declare dso_local i32 @kovaplus_convert_event_cpi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
