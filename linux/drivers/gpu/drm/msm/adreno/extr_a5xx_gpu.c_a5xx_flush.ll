; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.msm_ringbuffer = type { i32, i32, i32 }
%struct.adreno_gpu = type { i32 }
%struct.a5xx_gpu = type { %struct.msm_ringbuffer* }

@REG_A5XX_CP_RB_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.msm_ringbuffer*)* @a5xx_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a5xx_flush(%struct.msm_gpu* %0, %struct.msm_ringbuffer* %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.msm_ringbuffer*, align 8
  %5 = alloca %struct.adreno_gpu*, align 8
  %6 = alloca %struct.a5xx_gpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store %struct.msm_ringbuffer* %1, %struct.msm_ringbuffer** %4, align 8
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %10 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %9)
  store %struct.adreno_gpu* %10, %struct.adreno_gpu** %5, align 8
  %11 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %12 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %11)
  store %struct.a5xx_gpu* %12, %struct.a5xx_gpu** %6, align 8
  %13 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %14 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %18 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %21 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %23 = call i32 @get_wptr(%struct.msm_ringbuffer* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %25 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %24, i32 0, i32 0
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = call i32 (...) @mb()
  %29 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %6, align 8
  %30 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %29, i32 0, i32 0
  %31 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %30, align 8
  %32 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %33 = icmp eq %struct.msm_ringbuffer* %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %6, align 8
  %36 = call i32 @a5xx_in_preempt(%struct.a5xx_gpu* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %40 = load i32, i32* @REG_A5XX_CP_RB_WPTR, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @gpu_write(%struct.msm_gpu* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %34, %2
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_wptr(%struct.msm_ringbuffer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @a5xx_in_preempt(%struct.a5xx_gpu*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
