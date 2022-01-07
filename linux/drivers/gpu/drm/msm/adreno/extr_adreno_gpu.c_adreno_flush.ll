; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.msm_ringbuffer = type { i32, i32 }
%struct.adreno_gpu = type { i32 }

@REG_ADRENO_CP_RB_WPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adreno_flush(%struct.msm_gpu* %0, %struct.msm_ringbuffer* %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.msm_ringbuffer*, align 8
  %5 = alloca %struct.adreno_gpu*, align 8
  %6 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store %struct.msm_ringbuffer* %1, %struct.msm_ringbuffer** %4, align 8
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %8 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %7)
  store %struct.adreno_gpu* %8, %struct.adreno_gpu** %5, align 8
  %9 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %10 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %13 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %15 = call i32 @get_wptr(%struct.msm_ringbuffer* %14)
  store i32 %15, i32* %6, align 4
  %16 = call i32 (...) @mb()
  %17 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %18 = load i32, i32* @REG_ADRENO_CP_RB_WPTR, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @adreno_gpu_write(%struct.adreno_gpu* %17, i32 %18, i32 %19)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @get_wptr(%struct.msm_ringbuffer*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @adreno_gpu_write(%struct.adreno_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
