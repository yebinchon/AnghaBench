; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_report_to_chrdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_report_to_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kone_device = type { i32, i32 }
%struct.kone_mouse_event = type { i32, i32, i32 }
%struct.kone_roccat_report = type { i32, i32, i32 }

@kone_keystroke_action_press = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kone_device*, %struct.kone_mouse_event*)* @kone_report_to_chrdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kone_report_to_chrdev(%struct.kone_device* %0, %struct.kone_mouse_event* %1) #0 {
  %3 = alloca %struct.kone_device*, align 8
  %4 = alloca %struct.kone_mouse_event*, align 8
  %5 = alloca %struct.kone_roccat_report, align 4
  store %struct.kone_device* %0, %struct.kone_device** %3, align 8
  store %struct.kone_mouse_event* %1, %struct.kone_mouse_event** %4, align 8
  %6 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %4, align 8
  %7 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %49 [
    i32 128, label %9
    i32 129, label %9
    i32 130, label %9
    i32 131, label %9
    i32 133, label %24
    i32 132, label %24
  ]

9:                                                ; preds = %2, %2, %2, %2
  %10 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %4, align 8
  %11 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.kone_roccat_report, %struct.kone_roccat_report* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %4, align 8
  %15 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.kone_roccat_report, %struct.kone_roccat_report* %5, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.kone_roccat_report, %struct.kone_roccat_report* %5, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.kone_device*, %struct.kone_device** %3, align 8
  %20 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = bitcast %struct.kone_roccat_report* %5 to i32*
  %23 = call i32 @roccat_report_event(i32 %21, i32* %22)
  br label %49

24:                                               ; preds = %2, %2
  %25 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %4, align 8
  %26 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @kone_keystroke_action_press, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %4, align 8
  %32 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.kone_roccat_report, %struct.kone_roccat_report* %5, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.kone_device*, %struct.kone_device** %3, align 8
  %36 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.kone_roccat_report, %struct.kone_roccat_report* %5, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %4, align 8
  %40 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.kone_roccat_report, %struct.kone_roccat_report* %5, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.kone_device*, %struct.kone_device** %3, align 8
  %44 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %struct.kone_roccat_report* %5 to i32*
  %47 = call i32 @roccat_report_event(i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %30, %24
  br label %49

49:                                               ; preds = %2, %48, %9
  ret void
}

declare dso_local i32 @roccat_report_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
