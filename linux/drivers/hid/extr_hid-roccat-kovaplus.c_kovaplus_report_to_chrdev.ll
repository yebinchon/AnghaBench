; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_report_to_chrdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_report_to_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kovaplus_device = type { i32, i64 }
%struct.kovaplus_roccat_report = type { i64, i32, i64, i64, i64 }
%struct.kovaplus_mouse_report_button = type { i64, i32, i64 }

@KOVAPLUS_MOUSE_REPORT_NUMBER_BUTTON = common dso_local global i64 0, align 8
@KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE_2 = common dso_local global i64 0, align 8
@KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_MACRO = common dso_local global i64 0, align 8
@KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_SHORTCUT = common dso_local global i64 0, align 8
@KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_QUICKLAUNCH = common dso_local global i64 0, align 8
@KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_TIMER = common dso_local global i64 0, align 8
@KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_CPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kovaplus_device*, i64*)* @kovaplus_report_to_chrdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kovaplus_report_to_chrdev(%struct.kovaplus_device* %0, i64* %1) #0 {
  %3 = alloca %struct.kovaplus_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.kovaplus_roccat_report, align 8
  %6 = alloca %struct.kovaplus_mouse_report_button*, align 8
  store %struct.kovaplus_device* %0, %struct.kovaplus_device** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @KOVAPLUS_MOUSE_REPORT_NUMBER_BUTTON, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %84

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  %15 = bitcast i64* %14 to %struct.kovaplus_mouse_report_button*
  store %struct.kovaplus_mouse_report_button* %15, %struct.kovaplus_mouse_report_button** %6, align 8
  %16 = load %struct.kovaplus_mouse_report_button*, %struct.kovaplus_mouse_report_button** %6, align 8
  %17 = getelementptr inbounds %struct.kovaplus_mouse_report_button, %struct.kovaplus_mouse_report_button* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE_2, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %84

22:                                               ; preds = %13
  %23 = load %struct.kovaplus_mouse_report_button*, %struct.kovaplus_mouse_report_button** %6, align 8
  %24 = getelementptr inbounds %struct.kovaplus_mouse_report_button, %struct.kovaplus_mouse_report_button* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %28 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 4
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_MACRO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %51, label %36

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_SHORTCUT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_QUICKLAUNCH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_TIMER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %41, %36, %22
  %52 = load %struct.kovaplus_mouse_report_button*, %struct.kovaplus_mouse_report_button** %6, align 8
  %53 = getelementptr inbounds %struct.kovaplus_mouse_report_button, %struct.kovaplus_mouse_report_button* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 3
  store i64 %54, i64* %55, align 8
  br label %58

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 3
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %56, %51
  %59 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @KOVAPLUS_MOUSE_REPORT_BUTTON_TYPE_CPI, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.kovaplus_mouse_report_button*, %struct.kovaplus_mouse_report_button** %6, align 8
  %65 = getelementptr inbounds %struct.kovaplus_mouse_report_button, %struct.kovaplus_mouse_report_button* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @kovaplus_convert_event_cpi(i64 %66)
  %68 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 2
  store i64 %67, i64* %68, align 8
  br label %74

69:                                               ; preds = %58
  %70 = load %struct.kovaplus_mouse_report_button*, %struct.kovaplus_mouse_report_button** %6, align 8
  %71 = getelementptr inbounds %struct.kovaplus_mouse_report_button, %struct.kovaplus_mouse_report_button* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 2
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %63
  %75 = load %struct.kovaplus_mouse_report_button*, %struct.kovaplus_mouse_report_button** %6, align 8
  %76 = getelementptr inbounds %struct.kovaplus_mouse_report_button, %struct.kovaplus_mouse_report_button* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.kovaplus_roccat_report, %struct.kovaplus_roccat_report* %5, i32 0, i32 1
  store i32 %77, i32* %78, align 8
  %79 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %80 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = bitcast %struct.kovaplus_roccat_report* %5 to i32*
  %83 = call i32 @roccat_report_event(i32 %81, i32* %82)
  br label %84

84:                                               ; preds = %74, %21, %12
  ret void
}

declare dso_local i64 @kovaplus_convert_event_cpi(i64) #1

declare dso_local i32 @roccat_report_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
