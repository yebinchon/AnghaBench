; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_kernel_queue_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_kernel_queue_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.kernel_queue.0*)* }
%struct.kernel_queue.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_queue_uninit(%struct.kernel_queue* %0) #0 {
  %2 = alloca %struct.kernel_queue*, align 8
  store %struct.kernel_queue* %0, %struct.kernel_queue** %2, align 8
  %3 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %4 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (%struct.kernel_queue.0*)*, i32 (%struct.kernel_queue.0*)** %5, align 8
  %7 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %8 = bitcast %struct.kernel_queue* %7 to %struct.kernel_queue.0*
  %9 = call i32 %6(%struct.kernel_queue.0* %8)
  %10 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %11 = call i32 @kfree(%struct.kernel_queue* %10)
  ret void
}

declare dso_local i32 @kfree(%struct.kernel_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
