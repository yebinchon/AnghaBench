; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_create_other_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_create_other_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process = type { i32 }
%struct.kfd_event = type { i32 }

@KFD_FIRST_NONSIGNAL_EVENT_ID = common dso_local global i32 0, align 4
@KFD_LAST_NONSIGNAL_EVENT_ID = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_process*, %struct.kfd_event*)* @create_other_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_other_event(%struct.kfd_process* %0, %struct.kfd_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kfd_process*, align 8
  %5 = alloca %struct.kfd_event*, align 8
  %6 = alloca i32, align 4
  store %struct.kfd_process* %0, %struct.kfd_process** %4, align 8
  store %struct.kfd_event* %1, %struct.kfd_event** %5, align 8
  %7 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %8 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %7, i32 0, i32 0
  %9 = load %struct.kfd_event*, %struct.kfd_event** %5, align 8
  %10 = load i32, i32* @KFD_FIRST_NONSIGNAL_EVENT_ID, align 4
  %11 = load i64, i64* @KFD_LAST_NONSIGNAL_EVENT_ID, align 8
  %12 = add nsw i64 %11, 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @idr_alloc(i32* %8, %struct.kfd_event* %9, i32 %10, i64 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.kfd_event*, %struct.kfd_event** %5, align 8
  %22 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %17
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @idr_alloc(i32*, %struct.kfd_event*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
