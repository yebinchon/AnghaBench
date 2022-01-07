; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_me_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_me_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__*, %struct.msm_ringbuffer** }
%struct.TYPE_2__ = type { i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)* }
%struct.msm_ringbuffer = type { i32 }
%struct.adreno_gpu = type { i32 }

@CP_ME_INIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a5xx_me_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a5xx_me_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %5 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %6 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %5)
  store %struct.adreno_gpu* %6, %struct.adreno_gpu** %3, align 8
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %8 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %7, i32 0, i32 1
  %9 = load %struct.msm_ringbuffer**, %struct.msm_ringbuffer*** %8, align 8
  %10 = getelementptr inbounds %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, i64 0
  %11 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  store %struct.msm_ringbuffer* %11, %struct.msm_ringbuffer** %4, align 8
  %12 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %13 = load i32, i32* @CP_ME_INIT, align 4
  %14 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %12, i32 %13, i32 8)
  %15 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %16 = call i32 @OUT_RING(%struct.msm_ringbuffer* %15, i32 47)
  %17 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %18 = call i32 @OUT_RING(%struct.msm_ringbuffer* %17, i32 3)
  %19 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %20 = call i32 @OUT_RING(%struct.msm_ringbuffer* %19, i32 536870912)
  %21 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %22 = call i32 @OUT_RING(%struct.msm_ringbuffer* %21, i32 0)
  %23 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %24 = call i32 @OUT_RING(%struct.msm_ringbuffer* %23, i32 0)
  %25 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %26 = call i64 @adreno_is_a530(%struct.adreno_gpu* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %30 = call i32 @OUT_RING(%struct.msm_ringbuffer* %29, i32 11)
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %33 = call i32 @OUT_RING(%struct.msm_ringbuffer* %32, i32 0)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %36 = call i32 @OUT_RING(%struct.msm_ringbuffer* %35, i32 0)
  %37 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %38 = call i32 @OUT_RING(%struct.msm_ringbuffer* %37, i32 0)
  %39 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %40 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)*, i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)** %42, align 8
  %44 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %45 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %46 = call i32 %43(%struct.msm_gpu* %44, %struct.msm_ringbuffer* %45)
  %47 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %48 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %49 = call i64 @a5xx_idle(%struct.msm_gpu* %47, %struct.msm_ringbuffer* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %55

52:                                               ; preds = %34
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  br label %55

55:                                               ; preds = %52, %51
  %56 = phi i32 [ 0, %51 ], [ %54, %52 ]
  ret i32 %56
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @OUT_PKT7(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.msm_ringbuffer*, i32) #1

declare dso_local i64 @adreno_is_a530(%struct.adreno_gpu*) #1

declare dso_local i64 @a5xx_idle(%struct.msm_gpu*, %struct.msm_ringbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
