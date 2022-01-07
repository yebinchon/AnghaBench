; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_intel_vgpu_queue_workload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_intel_vgpu_queue_workload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_vgpu_queue_workload(%struct.intel_vgpu_workload* %0) #0 {
  %2 = alloca %struct.intel_vgpu_workload*, align 8
  store %struct.intel_vgpu_workload* %0, %struct.intel_vgpu_workload** %2, align 8
  %3 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %4 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %3, i32 0, i32 2
  %5 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %6 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @workload_q_head(%struct.TYPE_5__* %7, i64 %10)
  %12 = call i32 @list_add_tail(i32* %4, i32 %11)
  %13 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i32 @intel_gvt_kick_schedule(%struct.TYPE_6__* %17)
  %19 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %20 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %28 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = call i32 @wake_up(i32* %30)
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @workload_q_head(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @intel_gvt_kick_schedule(%struct.TYPE_6__*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
