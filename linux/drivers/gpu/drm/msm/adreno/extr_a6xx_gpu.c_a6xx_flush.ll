; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.msm_ringbuffer = type { i32, i32, i32 }

@REG_A6XX_CP_RB_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.msm_ringbuffer*)* @a6xx_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_flush(%struct.msm_gpu* %0, %struct.msm_ringbuffer* %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.msm_ringbuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store %struct.msm_ringbuffer* %1, %struct.msm_ringbuffer** %4, align 8
  %7 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %8 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %12 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %15 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %17 = call i32 @get_wptr(%struct.msm_ringbuffer* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %19 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = call i32 (...) @mb()
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %24 = load i32, i32* @REG_A6XX_CP_RB_WPTR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @gpu_write(%struct.msm_gpu* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_wptr(%struct.msm_ringbuffer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
