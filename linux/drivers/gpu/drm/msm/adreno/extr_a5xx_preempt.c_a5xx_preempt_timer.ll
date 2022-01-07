; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_preempt.c_a5xx_preempt_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_preempt.c_a5xx_preempt_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a5xx_gpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.msm_gpu }
%struct.msm_gpu = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.timer_list = type { i32 }

@preempt_timer = common dso_local global i32 0, align 4
@PREEMPT_TRIGGERED = common dso_local global i32 0, align 4
@PREEMPT_FAULTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: preemption timed out\0A\00", align 1
@a5xx_gpu = common dso_local global %struct.a5xx_gpu* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @a5xx_preempt_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a5xx_preempt_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.a5xx_gpu*, align 8
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %3, align 8
  %8 = ptrtoint %struct.a5xx_gpu* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @preempt_timer, align 4
  %11 = call %struct.a5xx_gpu* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.a5xx_gpu* %11, %struct.a5xx_gpu** %3, align 8
  %12 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %3, align 8
  %13 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.msm_gpu* %14, %struct.msm_gpu** %4, align 8
  %15 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %16 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %15, i32 0, i32 2
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %5, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.msm_drm_private*, %struct.msm_drm_private** %19, align 8
  store %struct.msm_drm_private* %20, %struct.msm_drm_private** %6, align 8
  %21 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %3, align 8
  %22 = load i32, i32* @PREEMPT_TRIGGERED, align 4
  %23 = load i32, i32* @PREEMPT_FAULTED, align 4
  %24 = call i32 @try_preempt_state(%struct.a5xx_gpu* %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %41

27:                                               ; preds = %1
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %32 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DRM_DEV_ERROR(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %36 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %39 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %38, i32 0, i32 0
  %40 = call i32 @queue_work(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %27, %26
  ret void
}

declare dso_local %struct.a5xx_gpu* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @try_preempt_state(%struct.a5xx_gpu*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
