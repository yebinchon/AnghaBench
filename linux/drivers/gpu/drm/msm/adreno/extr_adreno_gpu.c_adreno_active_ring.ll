; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_active_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_active_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_ringbuffer = type { i32 }
%struct.msm_gpu = type { %struct.msm_ringbuffer** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_ringbuffer* @adreno_active_ring(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %3 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %4 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %3, i32 0, i32 0
  %5 = load %struct.msm_ringbuffer**, %struct.msm_ringbuffer*** %4, align 8
  %6 = getelementptr inbounds %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, i64 0
  %7 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  ret %struct.msm_ringbuffer* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
