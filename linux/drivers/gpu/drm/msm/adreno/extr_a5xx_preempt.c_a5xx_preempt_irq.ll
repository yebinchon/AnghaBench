; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_preempt.c_a5xx_preempt_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_preempt.c_a5xx_preempt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a5xx_gpu = type { i32*, i32*, i32 }

@PREEMPT_TRIGGERED = common dso_local global i32 0, align 4
@PREEMPT_PENDING = common dso_local global i32 0, align 4
@REG_A5XX_CP_CONTEXT_SWITCH_CNTL = common dso_local global i32 0, align 4
@PREEMPT_FAULTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: Preemption failed to complete\0A\00", align 1
@PREEMPT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a5xx_preempt_irq(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca %struct.a5xx_gpu*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %9 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %8)
  store %struct.adreno_gpu* %9, %struct.adreno_gpu** %4, align 8
  %10 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %11 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %10)
  store %struct.a5xx_gpu* %11, %struct.a5xx_gpu** %5, align 8
  %12 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %13 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %12, i32 0, i32 2
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load %struct.msm_drm_private*, %struct.msm_drm_private** %16, align 8
  store %struct.msm_drm_private* %17, %struct.msm_drm_private** %7, align 8
  %18 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %19 = load i32, i32* @PREEMPT_TRIGGERED, align 4
  %20 = load i32, i32* @PREEMPT_PENDING, align 4
  %21 = call i32 @try_preempt_state(%struct.a5xx_gpu* %18, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %67

24:                                               ; preds = %1
  %25 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %26 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %25, i32 0, i32 2
  %27 = call i32 @del_timer(i32* %26)
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %29 = load i32, i32* @REG_A5XX_CP_CONTEXT_SWITCH_CNTL, align 4
  %30 = call i32 @gpu_read(%struct.msm_gpu* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %24
  %35 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %36 = load i32, i32* @PREEMPT_FAULTED, align 4
  %37 = call i32 @set_preempt_state(%struct.a5xx_gpu* %35, i32 %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %42 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DRM_DEV_ERROR(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %46 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %49 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %48, i32 0, i32 0
  %50 = call i32 @queue_work(i32 %47, i32* %49)
  br label %67

51:                                               ; preds = %24
  %52 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %53 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %56 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %58 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %60 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %61 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @update_wptr(%struct.msm_gpu* %59, i32* %62)
  %64 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %5, align 8
  %65 = load i32, i32* @PREEMPT_NONE, align 4
  %66 = call i32 @set_preempt_state(%struct.a5xx_gpu* %64, i32 %65)
  br label %67

67:                                               ; preds = %51, %34, %23
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @try_preempt_state(%struct.a5xx_gpu*, i32, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_preempt_state(%struct.a5xx_gpu*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @update_wptr(%struct.msm_gpu*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
