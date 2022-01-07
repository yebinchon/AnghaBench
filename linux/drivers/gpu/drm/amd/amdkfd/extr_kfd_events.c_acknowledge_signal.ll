; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_acknowledge_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_acknowledge_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process = type { i32 }
%struct.kfd_event = type { i64 }

@UNSIGNALED_EVENT_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kfd_process*, %struct.kfd_event*)* @acknowledge_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acknowledge_signal(%struct.kfd_process* %0, %struct.kfd_event* %1) #0 {
  %3 = alloca %struct.kfd_process*, align 8
  %4 = alloca %struct.kfd_event*, align 8
  store %struct.kfd_process* %0, %struct.kfd_process** %3, align 8
  store %struct.kfd_event* %1, %struct.kfd_event** %4, align 8
  %5 = load i32, i32* @UNSIGNALED_EVENT_SLOT, align 4
  %6 = load %struct.kfd_process*, %struct.kfd_process** %3, align 8
  %7 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32* @page_slots(i32 %8)
  %10 = load %struct.kfd_event*, %struct.kfd_event** %4, align 8
  %11 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  store i32 %5, i32* %13, align 4
  ret void
}

declare dso_local i32* @page_slots(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
