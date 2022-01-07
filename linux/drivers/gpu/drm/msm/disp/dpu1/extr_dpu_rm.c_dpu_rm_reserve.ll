; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c_dpu_rm_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c_dpu_rm_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_rm = type { i32 }
%struct.drm_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_crtc_state = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.msm_display_topology = type { i32 }
%struct.dpu_rm_requirements = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"reserving hw for enc %d crtc %d test_only %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to populate hw requirements\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to reserve hw resources: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"test_only: discard test [enc: %d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpu_rm_reserve(%struct.dpu_rm* %0, %struct.drm_encoder* %1, %struct.drm_crtc_state* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_display_topology, align 4
  %8 = alloca %struct.dpu_rm*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.drm_crtc_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dpu_rm_requirements, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.msm_display_topology, %struct.msm_display_topology* %7, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.dpu_rm* %0, %struct.dpu_rm** %8, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %9, align 8
  store %struct.drm_crtc_state* %2, %struct.drm_crtc_state** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %16 = call i32 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %83

19:                                               ; preds = %5
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %25 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %29, i32 %30)
  %32 = load %struct.dpu_rm*, %struct.dpu_rm** %8, align 8
  %33 = getelementptr inbounds %struct.dpu_rm, %struct.dpu_rm* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.dpu_rm*, %struct.dpu_rm** %8, align 8
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %37 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %38 = getelementptr inbounds %struct.msm_display_topology, %struct.msm_display_topology* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @_dpu_rm_populate_requirements(%struct.dpu_rm* %35, %struct.drm_encoder* %36, %struct.drm_crtc_state* %37, %struct.dpu_rm_requirements* %12, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %19
  %44 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %78

45:                                               ; preds = %19
  %46 = load %struct.dpu_rm*, %struct.dpu_rm** %8, align 8
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %48 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %49 = call i32 @_dpu_rm_make_reservation(%struct.dpu_rm* %46, %struct.drm_encoder* %47, %struct.drm_crtc_state* %48, %struct.dpu_rm_requirements* %12)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.dpu_rm*, %struct.dpu_rm** %8, align 8
  %56 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %57 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @_dpu_rm_release_reservation(%struct.dpu_rm* %55, i32 %59)
  br label %77

61:                                               ; preds = %45
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %66 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load %struct.dpu_rm*, %struct.dpu_rm** %8, align 8
  %71 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %72 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @_dpu_rm_release_reservation(%struct.dpu_rm* %70, i32 %74)
  br label %76

76:                                               ; preds = %64, %61
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %43
  %79 = load %struct.dpu_rm*, %struct.dpu_rm** %8, align 8
  %80 = getelementptr inbounds %struct.dpu_rm, %struct.dpu_rm* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %78, %18
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_dpu_rm_populate_requirements(%struct.dpu_rm*, %struct.drm_encoder*, %struct.drm_crtc_state*, %struct.dpu_rm_requirements*, i32) #1

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local i32 @_dpu_rm_make_reservation(%struct.dpu_rm*, %struct.drm_encoder*, %struct.drm_crtc_state*, %struct.dpu_rm_requirements*) #1

declare dso_local i32 @_dpu_rm_release_reservation(%struct.dpu_rm*, i32) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
