; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_get_rptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_get_rptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adreno_gpu = type { i32 }
%struct.msm_ringbuffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_ADRENO_CP_RB_RPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adreno_gpu*, %struct.msm_ringbuffer*)* @get_rptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rptr(%struct.adreno_gpu* %0, %struct.msm_ringbuffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.adreno_gpu* %0, %struct.adreno_gpu** %4, align 8
  store %struct.msm_ringbuffer* %1, %struct.msm_ringbuffer** %5, align 8
  %6 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %7 = call i64 @adreno_is_a430(%struct.adreno_gpu* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %11 = load i32, i32* @REG_ADRENO_CP_RB_RPTR, align 4
  %12 = call i32 @adreno_gpu_read(%struct.adreno_gpu* %10, i32 %11)
  %13 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %14 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  store i32 %12, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %19 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %9
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @adreno_is_a430(%struct.adreno_gpu*) #1

declare dso_local i32 @adreno_gpu_read(%struct.adreno_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
