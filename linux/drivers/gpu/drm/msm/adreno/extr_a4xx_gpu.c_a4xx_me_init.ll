; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_me_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_me_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__*, %struct.msm_ringbuffer** }
%struct.TYPE_2__ = type { i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)* }
%struct.msm_ringbuffer = type { i32 }

@CP_ME_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a4xx_me_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a4xx_me_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %4 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %5 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %4, i32 0, i32 1
  %6 = load %struct.msm_ringbuffer**, %struct.msm_ringbuffer*** %5, align 8
  %7 = getelementptr inbounds %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, i64 0
  %8 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  store %struct.msm_ringbuffer* %8, %struct.msm_ringbuffer** %3, align 8
  %9 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %10 = load i32, i32* @CP_ME_INIT, align 4
  %11 = call i32 @OUT_PKT3(%struct.msm_ringbuffer* %9, i32 %10, i32 17)
  %12 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %13 = call i32 @OUT_RING(%struct.msm_ringbuffer* %12, i32 1015)
  %14 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %15 = call i32 @OUT_RING(%struct.msm_ringbuffer* %14, i32 0)
  %16 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %17 = call i32 @OUT_RING(%struct.msm_ringbuffer* %16, i32 0)
  %18 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %19 = call i32 @OUT_RING(%struct.msm_ringbuffer* %18, i32 0)
  %20 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %21 = call i32 @OUT_RING(%struct.msm_ringbuffer* %20, i32 128)
  %22 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %23 = call i32 @OUT_RING(%struct.msm_ringbuffer* %22, i32 256)
  %24 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %25 = call i32 @OUT_RING(%struct.msm_ringbuffer* %24, i32 384)
  %26 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %27 = call i32 @OUT_RING(%struct.msm_ringbuffer* %26, i32 26112)
  %28 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %29 = call i32 @OUT_RING(%struct.msm_ringbuffer* %28, i32 336)
  %30 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %31 = call i32 @OUT_RING(%struct.msm_ringbuffer* %30, i32 334)
  %32 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %33 = call i32 @OUT_RING(%struct.msm_ringbuffer* %32, i32 340)
  %34 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %35 = call i32 @OUT_RING(%struct.msm_ringbuffer* %34, i32 1)
  %36 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %37 = call i32 @OUT_RING(%struct.msm_ringbuffer* %36, i32 0)
  %38 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %39 = call i32 @OUT_RING(%struct.msm_ringbuffer* %38, i32 0)
  %40 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %41 = call i32 @OUT_RING(%struct.msm_ringbuffer* %40, i32 0)
  %42 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %43 = call i32 @OUT_RING(%struct.msm_ringbuffer* %42, i32 0)
  %44 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %45 = call i32 @OUT_RING(%struct.msm_ringbuffer* %44, i32 0)
  %46 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %47 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)*, i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)** %49, align 8
  %51 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %52 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %3, align 8
  %53 = call i32 %50(%struct.msm_gpu* %51, %struct.msm_ringbuffer* %52)
  %54 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %55 = call i32 @a4xx_idle(%struct.msm_gpu* %54)
  ret i32 %55
}

declare dso_local i32 @OUT_PKT3(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @a4xx_idle(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
