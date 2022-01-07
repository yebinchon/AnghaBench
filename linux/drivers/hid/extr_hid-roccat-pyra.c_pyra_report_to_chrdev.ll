; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_report_to_chrdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_report_to_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyra_device = type { i32, i32 }
%struct.pyra_roccat_report = type { i32, i32, i32 }
%struct.pyra_mouse_event_button = type { i32, i32, i32 }

@PYRA_MOUSE_REPORT_NUMBER_BUTTON = common dso_local global i64 0, align 8
@PYRA_MOUSE_EVENT_BUTTON_PRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pyra_device*, i64*)* @pyra_report_to_chrdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pyra_report_to_chrdev(%struct.pyra_device* %0, i64* %1) #0 {
  %3 = alloca %struct.pyra_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.pyra_roccat_report, align 4
  %6 = alloca %struct.pyra_mouse_event_button*, align 8
  store %struct.pyra_device* %0, %struct.pyra_device** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PYRA_MOUSE_REPORT_NUMBER_BUTTON, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %60

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  %15 = bitcast i64* %14 to %struct.pyra_mouse_event_button*
  store %struct.pyra_mouse_event_button* %15, %struct.pyra_mouse_event_button** %6, align 8
  %16 = load %struct.pyra_mouse_event_button*, %struct.pyra_mouse_event_button** %6, align 8
  %17 = getelementptr inbounds %struct.pyra_mouse_event_button, %struct.pyra_mouse_event_button* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %60 [
    i32 130, label %19
    i32 132, label %19
    i32 131, label %34
    i32 128, label %34
    i32 129, label %34
  ]

19:                                               ; preds = %13, %13
  %20 = load %struct.pyra_mouse_event_button*, %struct.pyra_mouse_event_button** %6, align 8
  %21 = getelementptr inbounds %struct.pyra_mouse_event_button, %struct.pyra_mouse_event_button* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.pyra_roccat_report, %struct.pyra_roccat_report* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.pyra_mouse_event_button*, %struct.pyra_mouse_event_button** %6, align 8
  %25 = getelementptr inbounds %struct.pyra_mouse_event_button, %struct.pyra_mouse_event_button* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.pyra_roccat_report, %struct.pyra_roccat_report* %5, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.pyra_roccat_report, %struct.pyra_roccat_report* %5, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = load %struct.pyra_device*, %struct.pyra_device** %3, align 8
  %30 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = bitcast %struct.pyra_roccat_report* %5 to i32*
  %33 = call i32 @roccat_report_event(i32 %31, i32* %32)
  br label %60

34:                                               ; preds = %13, %13, %13
  %35 = load %struct.pyra_mouse_event_button*, %struct.pyra_mouse_event_button** %6, align 8
  %36 = getelementptr inbounds %struct.pyra_mouse_event_button, %struct.pyra_mouse_event_button* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PYRA_MOUSE_EVENT_BUTTON_PRESS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.pyra_mouse_event_button*, %struct.pyra_mouse_event_button** %6, align 8
  %42 = getelementptr inbounds %struct.pyra_mouse_event_button, %struct.pyra_mouse_event_button* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.pyra_roccat_report, %struct.pyra_roccat_report* %5, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.pyra_mouse_event_button*, %struct.pyra_mouse_event_button** %6, align 8
  %46 = getelementptr inbounds %struct.pyra_mouse_event_button, %struct.pyra_mouse_event_button* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.pyra_roccat_report, %struct.pyra_roccat_report* %5, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.pyra_device*, %struct.pyra_device** %3, align 8
  %50 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = getelementptr inbounds %struct.pyra_roccat_report, %struct.pyra_roccat_report* %5, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.pyra_device*, %struct.pyra_device** %3, align 8
  %55 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %struct.pyra_roccat_report* %5 to i32*
  %58 = call i32 @roccat_report_event(i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %40, %34
  br label %60

60:                                               ; preds = %12, %13, %59, %19
  ret void
}

declare dso_local i32 @roccat_report_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
