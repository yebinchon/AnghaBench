; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-savu.c_savu_report_to_chrdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-savu.c_savu_report_to_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roccat_common2_device = type { i32 }
%struct.savu_roccat_report = type { i32*, i32 }
%struct.savu_mouse_report_special = type { i32*, i32 }

@SAVU_MOUSE_REPORT_NUMBER_SPECIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roccat_common2_device*, i64*)* @savu_report_to_chrdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savu_report_to_chrdev(%struct.roccat_common2_device* %0, i64* %1) #0 {
  %3 = alloca %struct.roccat_common2_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.savu_roccat_report, align 8
  %6 = alloca %struct.savu_mouse_report_special*, align 8
  store %struct.roccat_common2_device* %0, %struct.roccat_common2_device** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SAVU_MOUSE_REPORT_NUMBER_SPECIAL, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %41

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  %15 = bitcast i64* %14 to %struct.savu_mouse_report_special*
  store %struct.savu_mouse_report_special* %15, %struct.savu_mouse_report_special** %6, align 8
  %16 = load %struct.savu_mouse_report_special*, %struct.savu_mouse_report_special** %6, align 8
  %17 = getelementptr inbounds %struct.savu_mouse_report_special, %struct.savu_mouse_report_special* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.savu_roccat_report, %struct.savu_roccat_report* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load %struct.savu_mouse_report_special*, %struct.savu_mouse_report_special** %6, align 8
  %21 = getelementptr inbounds %struct.savu_mouse_report_special, %struct.savu_mouse_report_special* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.savu_roccat_report, %struct.savu_roccat_report* %5, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.savu_mouse_report_special*, %struct.savu_mouse_report_special** %6, align 8
  %29 = getelementptr inbounds %struct.savu_mouse_report_special, %struct.savu_mouse_report_special* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.savu_roccat_report, %struct.savu_roccat_report* %5, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.roccat_common2_device*, %struct.roccat_common2_device** %3, align 8
  %37 = getelementptr inbounds %struct.roccat_common2_device, %struct.roccat_common2_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %struct.savu_roccat_report* %5 to i32*
  %40 = call i32 @roccat_report_event(i32 %38, i32* %39)
  br label %41

41:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @roccat_report_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
