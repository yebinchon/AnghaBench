; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_report_to_chrdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_report_to_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arvo_device = type { i32, i32 }
%struct.arvo_special_report = type { i32 }
%struct.arvo_roccat_report = type { i32, i32, i32 }

@ARVO_SPECIAL_REPORT_EVENT_MASK_BUTTON = common dso_local global i32 0, align 4
@ARVO_SPECIAL_REPORT_EVENT_MASK_ACTION = common dso_local global i32 0, align 4
@ARVO_SPECIAL_REPORT_EVENT_ACTION_PRESS = common dso_local global i32 0, align 4
@ARVO_ROCCAT_REPORT_ACTION_PRESS = common dso_local global i32 0, align 4
@ARVO_ROCCAT_REPORT_ACTION_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arvo_device*, i32*)* @arvo_report_to_chrdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arvo_report_to_chrdev(%struct.arvo_device* %0, i32* %1) #0 {
  %3 = alloca %struct.arvo_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.arvo_special_report*, align 8
  %6 = alloca %struct.arvo_roccat_report, align 4
  store %struct.arvo_device* %0, %struct.arvo_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.arvo_special_report*
  store %struct.arvo_special_report* %8, %struct.arvo_special_report** %5, align 8
  %9 = load %struct.arvo_device*, %struct.arvo_device** %3, align 8
  %10 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.arvo_roccat_report, %struct.arvo_roccat_report* %6, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.arvo_special_report*, %struct.arvo_special_report** %5, align 8
  %14 = getelementptr inbounds %struct.arvo_special_report, %struct.arvo_special_report* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ARVO_SPECIAL_REPORT_EVENT_MASK_BUTTON, align 4
  %17 = and i32 %15, %16
  %18 = getelementptr inbounds %struct.arvo_roccat_report, %struct.arvo_roccat_report* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.arvo_special_report*, %struct.arvo_special_report** %5, align 8
  %20 = getelementptr inbounds %struct.arvo_special_report, %struct.arvo_special_report* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ARVO_SPECIAL_REPORT_EVENT_MASK_ACTION, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @ARVO_SPECIAL_REPORT_EVENT_ACTION_PRESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ARVO_ROCCAT_REPORT_ACTION_PRESS, align 4
  %28 = getelementptr inbounds %struct.arvo_roccat_report, %struct.arvo_roccat_report* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @ARVO_ROCCAT_REPORT_ACTION_RELEASE, align 4
  %31 = getelementptr inbounds %struct.arvo_roccat_report, %struct.arvo_roccat_report* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.arvo_device*, %struct.arvo_device** %3, align 8
  %34 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %struct.arvo_roccat_report* %6 to i32*
  %37 = call i32 @roccat_report_event(i32 %35, i32* %36)
  ret void
}

declare dso_local i32 @roccat_report_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
