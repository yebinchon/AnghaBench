; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_frame_done_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_frame_done_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_virt = type { i32, i32 (i32, i32)*, i32, i32*, %struct.drm_encoder }
%struct.drm_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.timer_list = type { i32 }

@frame_done_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"id:%u invalid timeout frame_busy_mask=%lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"id:%u invalid timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"frame done timeout\0A\00", align 1
@DPU_ENCODER_FRAME_EVENT_ERROR = common dso_local global i32 0, align 4
@dpu_enc = common dso_local global %struct.dpu_encoder_virt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dpu_encoder_frame_done_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_frame_done_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %8 = ptrtoint %struct.dpu_encoder_virt* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @frame_done_timer, align 4
  %11 = call %struct.dpu_encoder_virt* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.dpu_encoder_virt* %11, %struct.dpu_encoder_virt** %3, align 8
  %12 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %13 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %12, i32 0, i32 4
  store %struct.drm_encoder* %13, %struct.drm_encoder** %4, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %20 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.msm_drm_private*, %struct.msm_drm_private** %22, align 8
  %24 = icmp ne %struct.msm_drm_private* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %18, %1
  %26 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %79

27:                                               ; preds = %18
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %29 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.msm_drm_private*, %struct.msm_drm_private** %31, align 8
  store %struct.msm_drm_private* %32, %struct.msm_drm_private** %5, align 8
  %33 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %34 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %41 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %40, i32 0, i32 1
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = icmp ne i32 (i32, i32)* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %39, %27
  %45 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %46 = call i32 @DRMID(%struct.drm_encoder* %45)
  %47 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %48 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %51)
  br label %79

53:                                               ; preds = %39
  %54 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %55 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %54, i32 0, i32 2
  %56 = call i32 @atomic_xchg(i32* %55, i32 0)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %60 = call i32 @DRMID(%struct.drm_encoder* %59)
  %61 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %79

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %65 = call i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @DPU_ENCODER_FRAME_EVENT_ERROR, align 4
  store i32 %66, i32* %6, align 4
  %67 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %68 = call i32 @DRMID(%struct.drm_encoder* %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @trace_dpu_enc_frame_done_timeout(i32 %68, i32 %69)
  %71 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %72 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %71, i32 0, i32 1
  %73 = load i32 (i32, i32)*, i32 (i32, i32)** %72, align 8
  %74 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %75 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 %73(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %63, %58, %44, %25
  ret void
}

declare dso_local %struct.dpu_encoder_virt* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt*, i8*) #1

declare dso_local i32 @trace_dpu_enc_frame_done_timeout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
