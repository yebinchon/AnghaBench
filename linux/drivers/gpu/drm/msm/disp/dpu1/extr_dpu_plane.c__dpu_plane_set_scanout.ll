; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_scanout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_scanout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.dpu_plane_state = type { i32 }
%struct.dpu_hw_pipe_cfg = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.dpu_plane = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.dpu_hw_pipe_cfg*, i32)* }
%struct.dpu_kms = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.msm_gem_address_space* }
%struct.msm_gem_address_space = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"not updating same src addrs\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to get format layout, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.dpu_plane_state*, %struct.dpu_hw_pipe_cfg*, %struct.drm_framebuffer*)* @_dpu_plane_set_scanout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_plane_set_scanout(%struct.drm_plane* %0, %struct.dpu_plane_state* %1, %struct.dpu_hw_pipe_cfg* %2, %struct.drm_framebuffer* %3) #0 {
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca %struct.dpu_plane_state*, align 8
  %7 = alloca %struct.dpu_hw_pipe_cfg*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.dpu_plane*, align 8
  %10 = alloca %struct.dpu_kms*, align 8
  %11 = alloca %struct.msm_gem_address_space*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %5, align 8
  store %struct.dpu_plane_state* %1, %struct.dpu_plane_state** %6, align 8
  store %struct.dpu_hw_pipe_cfg* %2, %struct.dpu_hw_pipe_cfg** %7, align 8
  store %struct.drm_framebuffer* %3, %struct.drm_framebuffer** %8, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %14 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %13)
  store %struct.dpu_plane* %14, %struct.dpu_plane** %9, align 8
  %15 = load %struct.dpu_plane*, %struct.dpu_plane** %9, align 8
  %16 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %15, i32 0, i32 1
  %17 = call %struct.dpu_kms* @_dpu_plane_get_kms(i32* %16)
  store %struct.dpu_kms* %17, %struct.dpu_kms** %10, align 8
  %18 = load %struct.dpu_kms*, %struct.dpu_kms** %10, align 8
  %19 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %20, align 8
  store %struct.msm_gem_address_space* %21, %struct.msm_gem_address_space** %11, align 8
  %22 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %11, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %24 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %7, align 8
  %25 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %24, i32 0, i32 0
  %26 = call i32 @dpu_format_populate_layout(%struct.msm_gem_address_space* %22, %struct.drm_framebuffer* %23, i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load %struct.dpu_plane*, %struct.dpu_plane** %9, align 8
  %33 = call i32 @DPU_DEBUG_PLANE(%struct.dpu_plane* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %77

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.dpu_plane*, %struct.dpu_plane** %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @DPU_ERROR_PLANE(%struct.dpu_plane* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %76

41:                                               ; preds = %34
  %42 = load %struct.dpu_plane*, %struct.dpu_plane** %9, align 8
  %43 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_6__*, %struct.dpu_hw_pipe_cfg*, i32)*, i32 (%struct.TYPE_6__*, %struct.dpu_hw_pipe_cfg*, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.TYPE_6__*, %struct.dpu_hw_pipe_cfg*, i32)* %47, null
  br i1 %48, label %49, label %75

49:                                               ; preds = %41
  %50 = load %struct.dpu_plane*, %struct.dpu_plane** %9, align 8
  %51 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %7, align 8
  %56 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %55, i32 0, i32 0
  %57 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %6, align 8
  %58 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @trace_dpu_plane_set_scanout(i32 %54, i32* %56, i32 %59)
  %61 = load %struct.dpu_plane*, %struct.dpu_plane** %9, align 8
  %62 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_6__*, %struct.dpu_hw_pipe_cfg*, i32)*, i32 (%struct.TYPE_6__*, %struct.dpu_hw_pipe_cfg*, i32)** %65, align 8
  %67 = load %struct.dpu_plane*, %struct.dpu_plane** %9, align 8
  %68 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %7, align 8
  %71 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %6, align 8
  %72 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %66(%struct.TYPE_6__* %69, %struct.dpu_hw_pipe_cfg* %70, i32 %73)
  br label %75

75:                                               ; preds = %49, %41
  br label %76

76:                                               ; preds = %75, %37
  br label %77

77:                                               ; preds = %76, %31
  ret void
}

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local %struct.dpu_kms* @_dpu_plane_get_kms(i32*) #1

declare dso_local i32 @dpu_format_populate_layout(%struct.msm_gem_address_space*, %struct.drm_framebuffer*, i32*) #1

declare dso_local i32 @DPU_DEBUG_PLANE(%struct.dpu_plane*, i8*) #1

declare dso_local i32 @DPU_ERROR_PLANE(%struct.dpu_plane*, i8*, i32) #1

declare dso_local i32 @trace_dpu_plane_set_scanout(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
