; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_fault_detect_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_fault_detect_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32, %struct.TYPE_2__*, %struct.drm_device* }
%struct.TYPE_2__ = type { %struct.msm_ringbuffer* (%struct.msm_gpu*)* }
%struct.msm_ringbuffer = type { i32, i32 }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }

@.str = private unnamed_addr constant [96 x i8] c"gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\0A\00", align 1
@REG_A5XX_RBBM_STATUS = common dso_local global i32 0, align 4
@REG_A5XX_CP_RB_RPTR = common dso_local global i32 0, align 4
@REG_A5XX_CP_RB_WPTR = common dso_local global i32 0, align 4
@REG_A5XX_CP_IB1_BASE = common dso_local global i32 0, align 4
@REG_A5XX_CP_IB1_BASE_HI = common dso_local global i32 0, align 4
@REG_A5XX_CP_IB1_BUFSZ = common dso_local global i32 0, align 4
@REG_A5XX_CP_IB2_BASE = common dso_local global i32 0, align 4
@REG_A5XX_CP_IB2_BASE_HI = common dso_local global i32 0, align 4
@REG_A5XX_CP_IB2_BUFSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a5xx_fault_detect_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a5xx_fault_detect_irq(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %7 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %6, i32 0, i32 3
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.msm_drm_private*, %struct.msm_drm_private** %10, align 8
  store %struct.msm_drm_private* %11, %struct.msm_drm_private** %4, align 8
  %12 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %13 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.msm_ringbuffer* (%struct.msm_gpu*)*, %struct.msm_ringbuffer* (%struct.msm_gpu*)** %15, align 8
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %18 = call %struct.msm_ringbuffer* %16(%struct.msm_gpu* %17)
  store %struct.msm_ringbuffer* %18, %struct.msm_ringbuffer** %5, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %23 = icmp ne %struct.msm_ringbuffer* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %26 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ -1, %28 ]
  %31 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %32 = icmp ne %struct.msm_ringbuffer* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %35 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 0, %37 ]
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %41 = load i32, i32* @REG_A5XX_RBBM_STATUS, align 4
  %42 = call i32 @gpu_read(%struct.msm_gpu* %40, i32 %41)
  %43 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %44 = load i32, i32* @REG_A5XX_CP_RB_RPTR, align 4
  %45 = call i32 @gpu_read(%struct.msm_gpu* %43, i32 %44)
  %46 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %47 = load i32, i32* @REG_A5XX_CP_RB_WPTR, align 4
  %48 = call i32 @gpu_read(%struct.msm_gpu* %46, i32 %47)
  %49 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %50 = load i32, i32* @REG_A5XX_CP_IB1_BASE, align 4
  %51 = load i32, i32* @REG_A5XX_CP_IB1_BASE_HI, align 4
  %52 = call i32 @gpu_read64(%struct.msm_gpu* %49, i32 %50, i32 %51)
  %53 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %54 = load i32, i32* @REG_A5XX_CP_IB1_BUFSZ, align 4
  %55 = call i32 @gpu_read(%struct.msm_gpu* %53, i32 %54)
  %56 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %57 = load i32, i32* @REG_A5XX_CP_IB2_BASE, align 4
  %58 = load i32, i32* @REG_A5XX_CP_IB2_BASE_HI, align 4
  %59 = call i32 @gpu_read64(%struct.msm_gpu* %56, i32 %57, i32 %58)
  %60 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %61 = load i32, i32* @REG_A5XX_CP_IB2_BUFSZ, align 4
  %62 = call i32 @gpu_read(%struct.msm_gpu* %60, i32 %61)
  %63 = call i32 @DRM_DEV_ERROR(i32 %21, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %39, i32 %42, i32 %45, i32 %48, i32 %52, i32 %55, i32 %59, i32 %62)
  %64 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %65 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %64, i32 0, i32 1
  %66 = call i32 @del_timer(i32* %65)
  %67 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %68 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %71 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %70, i32 0, i32 0
  %72 = call i32 @queue_work(i32 %69, i32* %71)
  ret void
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @gpu_read64(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
