; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-koneplus.c_koneplus_report_to_chrdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-koneplus.c_koneplus_report_to_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.koneplus_device = type { i32, i64 }
%struct.koneplus_roccat_report = type { i64, i64, i64, i32 }
%struct.koneplus_mouse_report_button = type { i64, i64, i32 }

@KONEPLUS_MOUSE_REPORT_NUMBER_BUTTON = common dso_local global i64 0, align 8
@KONEPLUS_MOUSE_REPORT_BUTTON_TYPE_QUICKLAUNCH = common dso_local global i64 0, align 8
@KONEPLUS_MOUSE_REPORT_BUTTON_TYPE_TIMER = common dso_local global i64 0, align 8
@KONEPLUS_MOUSE_REPORT_BUTTON_ACTION_PRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.koneplus_device*, i64*)* @koneplus_report_to_chrdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @koneplus_report_to_chrdev(%struct.koneplus_device* %0, i64* %1) #0 {
  %3 = alloca %struct.koneplus_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.koneplus_roccat_report, align 8
  %6 = alloca %struct.koneplus_mouse_report_button*, align 8
  store %struct.koneplus_device* %0, %struct.koneplus_device** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @KONEPLUS_MOUSE_REPORT_NUMBER_BUTTON, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %57

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  %15 = bitcast i64* %14 to %struct.koneplus_mouse_report_button*
  store %struct.koneplus_mouse_report_button* %15, %struct.koneplus_mouse_report_button** %6, align 8
  %16 = load %struct.koneplus_mouse_report_button*, %struct.koneplus_mouse_report_button** %6, align 8
  %17 = getelementptr inbounds %struct.koneplus_mouse_report_button, %struct.koneplus_mouse_report_button* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @KONEPLUS_MOUSE_REPORT_BUTTON_TYPE_QUICKLAUNCH, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.koneplus_mouse_report_button*, %struct.koneplus_mouse_report_button** %6, align 8
  %23 = getelementptr inbounds %struct.koneplus_mouse_report_button, %struct.koneplus_mouse_report_button* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @KONEPLUS_MOUSE_REPORT_BUTTON_TYPE_TIMER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21, %13
  %28 = load %struct.koneplus_mouse_report_button*, %struct.koneplus_mouse_report_button** %6, align 8
  %29 = getelementptr inbounds %struct.koneplus_mouse_report_button, %struct.koneplus_mouse_report_button* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @KONEPLUS_MOUSE_REPORT_BUTTON_ACTION_PRESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %57

34:                                               ; preds = %27, %21
  %35 = load %struct.koneplus_mouse_report_button*, %struct.koneplus_mouse_report_button** %6, align 8
  %36 = getelementptr inbounds %struct.koneplus_mouse_report_button, %struct.koneplus_mouse_report_button* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.koneplus_roccat_report, %struct.koneplus_roccat_report* %5, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load %struct.koneplus_mouse_report_button*, %struct.koneplus_mouse_report_button** %6, align 8
  %40 = getelementptr inbounds %struct.koneplus_mouse_report_button, %struct.koneplus_mouse_report_button* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.koneplus_roccat_report, %struct.koneplus_roccat_report* %5, i32 0, i32 3
  store i32 %41, i32* %42, align 8
  %43 = load %struct.koneplus_mouse_report_button*, %struct.koneplus_mouse_report_button** %6, align 8
  %44 = getelementptr inbounds %struct.koneplus_mouse_report_button, %struct.koneplus_mouse_report_button* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.koneplus_roccat_report, %struct.koneplus_roccat_report* %5, i32 0, i32 1
  store i64 %45, i64* %46, align 8
  %47 = load %struct.koneplus_device*, %struct.koneplus_device** %3, align 8
  %48 = getelementptr inbounds %struct.koneplus_device, %struct.koneplus_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = getelementptr inbounds %struct.koneplus_roccat_report, %struct.koneplus_roccat_report* %5, i32 0, i32 2
  store i64 %50, i64* %51, align 8
  %52 = load %struct.koneplus_device*, %struct.koneplus_device** %3, align 8
  %53 = getelementptr inbounds %struct.koneplus_device, %struct.koneplus_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = bitcast %struct.koneplus_roccat_report* %5 to i32*
  %56 = call i32 @roccat_report_event(i32 %54, i32* %55)
  br label %57

57:                                               ; preds = %34, %33, %12
  ret void
}

declare dso_local i32 @roccat_report_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
