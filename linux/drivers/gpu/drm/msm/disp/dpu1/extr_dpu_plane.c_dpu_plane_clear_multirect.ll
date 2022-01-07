; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_clear_multirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_clear_multirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32 }
%struct.dpu_plane_state = type { i32, i32 }

@DPU_SSPP_RECT_SOLO = common dso_local global i32 0, align 4
@DPU_SSPP_MULTIRECT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_plane_clear_multirect(%struct.drm_plane_state* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca %struct.dpu_plane_state*, align 8
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %2, align 8
  %4 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  %5 = call %struct.dpu_plane_state* @to_dpu_plane_state(%struct.drm_plane_state* %4)
  store %struct.dpu_plane_state* %5, %struct.dpu_plane_state** %3, align 8
  %6 = load i32, i32* @DPU_SSPP_RECT_SOLO, align 4
  %7 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %3, align 8
  %8 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @DPU_SSPP_MULTIRECT_NONE, align 4
  %10 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %3, align 8
  %11 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  ret void
}

declare dso_local %struct.dpu_plane_state* @to_dpu_plane_state(%struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
