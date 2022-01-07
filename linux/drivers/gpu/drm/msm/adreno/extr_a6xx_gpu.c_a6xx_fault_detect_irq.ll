; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_fault_detect_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_fault_detect_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.drm_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.msm_ringbuffer* (%struct.msm_gpu*)* }
%struct.msm_ringbuffer = type { i32, i32 }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { i32 }

@REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\0A\00", align 1
@REG_A6XX_RBBM_STATUS = common dso_local global i32 0, align 4
@REG_A6XX_CP_RB_RPTR = common dso_local global i32 0, align 4
@REG_A6XX_CP_RB_WPTR = common dso_local global i32 0, align 4
@REG_A6XX_CP_IB1_BASE = common dso_local global i32 0, align 4
@REG_A6XX_CP_IB1_BASE_HI = common dso_local global i32 0, align 4
@REG_A6XX_CP_IB1_REM_SIZE = common dso_local global i32 0, align 4
@REG_A6XX_CP_IB2_BASE = common dso_local global i32 0, align 4
@REG_A6XX_CP_IB2_BASE_HI = common dso_local global i32 0, align 4
@REG_A6XX_CP_IB2_REM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a6xx_fault_detect_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_fault_detect_irq(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca %struct.a6xx_gpu*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %9 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %8)
  store %struct.adreno_gpu* %9, %struct.adreno_gpu** %3, align 8
  %10 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %11 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %10)
  store %struct.a6xx_gpu* %11, %struct.a6xx_gpu** %4, align 8
  %12 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %13 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %12, i32 0, i32 4
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.msm_drm_private*, %struct.msm_drm_private** %16, align 8
  store %struct.msm_drm_private* %17, %struct.msm_drm_private** %6, align 8
  %18 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %19 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.msm_ringbuffer* (%struct.msm_gpu*)*, %struct.msm_ringbuffer* (%struct.msm_gpu*)** %21, align 8
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %24 = call %struct.msm_ringbuffer* %22(%struct.msm_gpu* %23)
  store %struct.msm_ringbuffer* %24, %struct.msm_ringbuffer** %7, align 8
  %25 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %4, align 8
  %26 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %25, i32 0, i32 0
  %27 = load i32, i32* @REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE, align 4
  %28 = call i32 @gmu_write(i32* %26, i32 %27, i32 1)
  %29 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %30 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %34 = icmp ne %struct.msm_ringbuffer* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %37 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ -1, %39 ]
  %42 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %43 = icmp ne %struct.msm_ringbuffer* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %7, align 8
  %46 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ %47, %44 ], [ 0, %48 ]
  %51 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %52 = load i32, i32* @REG_A6XX_RBBM_STATUS, align 4
  %53 = call i32 @gpu_read(%struct.msm_gpu* %51, i32 %52)
  %54 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %55 = load i32, i32* @REG_A6XX_CP_RB_RPTR, align 4
  %56 = call i32 @gpu_read(%struct.msm_gpu* %54, i32 %55)
  %57 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %58 = load i32, i32* @REG_A6XX_CP_RB_WPTR, align 4
  %59 = call i32 @gpu_read(%struct.msm_gpu* %57, i32 %58)
  %60 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %61 = load i32, i32* @REG_A6XX_CP_IB1_BASE, align 4
  %62 = load i32, i32* @REG_A6XX_CP_IB1_BASE_HI, align 4
  %63 = call i32 @gpu_read64(%struct.msm_gpu* %60, i32 %61, i32 %62)
  %64 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %65 = load i32, i32* @REG_A6XX_CP_IB1_REM_SIZE, align 4
  %66 = call i32 @gpu_read(%struct.msm_gpu* %64, i32 %65)
  %67 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %68 = load i32, i32* @REG_A6XX_CP_IB2_BASE, align 4
  %69 = load i32, i32* @REG_A6XX_CP_IB2_BASE_HI, align 4
  %70 = call i32 @gpu_read64(%struct.msm_gpu* %67, i32 %68, i32 %69)
  %71 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %72 = load i32, i32* @REG_A6XX_CP_IB2_REM_SIZE, align 4
  %73 = call i32 @gpu_read(%struct.msm_gpu* %71, i32 %72)
  %74 = call i32 @DRM_DEV_ERROR(i32* %32, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %50, i32 %53, i32 %56, i32 %59, i32 %63, i32 %66, i32 %70, i32 %73)
  %75 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %76 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %75, i32 0, i32 1
  %77 = call i32 @del_timer(i32* %76)
  %78 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %79 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %82 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %81, i32 0, i32 0
  %83 = call i32 @queue_work(i32 %80, i32* %82)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @gmu_write(i32*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

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
