; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_allocate_event_notification_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_allocate_event_notification_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process = type { i32, i64, i32 }
%struct.kfd_event = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@UNSIGNALED_EVENT_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_process*, %struct.kfd_event*)* @allocate_event_notification_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_event_notification_slot(%struct.kfd_process* %0, %struct.kfd_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kfd_process*, align 8
  %5 = alloca %struct.kfd_event*, align 8
  %6 = alloca i32, align 4
  store %struct.kfd_process* %0, %struct.kfd_process** %4, align 8
  store %struct.kfd_event* %1, %struct.kfd_event** %5, align 8
  %7 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %8 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %13 = call i64 @allocate_signal_page(%struct.kfd_process* %12)
  %14 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %15 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %17 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %11
  %24 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %25 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %24, i32 0, i32 0
  store i32 2048, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %28 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %27, i32 0, i32 2
  %29 = load %struct.kfd_event*, %struct.kfd_event** %5, align 8
  %30 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %31 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @idr_alloc(i32* %28, %struct.kfd_event* %29, i32 0, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.kfd_event*, %struct.kfd_event** %5, align 8
  %43 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @UNSIGNALED_EVENT_SLOT, align 4
  %45 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %46 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32* @page_slots(i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %44, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %40, %38, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @allocate_signal_page(%struct.kfd_process*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.kfd_event*, i32, i32, i32) #1

declare dso_local i32* @page_slots(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
