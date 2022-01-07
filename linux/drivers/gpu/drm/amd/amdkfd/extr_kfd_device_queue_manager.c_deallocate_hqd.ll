; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_deallocate_hqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_deallocate_hqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32* }
%struct.queue = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_queue_manager*, %struct.queue*)* @deallocate_hqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deallocate_hqd(%struct.device_queue_manager* %0, %struct.queue* %1) #0 {
  %3 = alloca %struct.device_queue_manager*, align 8
  %4 = alloca %struct.queue*, align 8
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %3, align 8
  store %struct.queue* %1, %struct.queue** %4, align 8
  %5 = load %struct.queue*, %struct.queue** %4, align 8
  %6 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = shl i32 1, %7
  %9 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %10 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.queue*, %struct.queue** %4, align 8
  %13 = getelementptr inbounds %struct.queue, %struct.queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %8
  store i32 %17, i32* %15, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
