; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c__dpu_crtc_setup_blend_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c__dpu_crtc_setup_blend_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_crtc_mixer = type { %struct.dpu_hw_mixer* }
%struct.dpu_hw_mixer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dpu_hw_mixer.0*, i32, i32, i32, i32)* }
%struct.dpu_hw_mixer.0 = type opaque
%struct.dpu_plane_state = type { i32 }
%struct.dpu_format = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_format_name_buf = type { i32 }

@DPU_BLEND_FG_ALPHA_FG_CONST = common dso_local global i32 0, align 4
@DPU_BLEND_BG_ALPHA_BG_CONST = common dso_local global i32 0, align 4
@DPU_BLEND_FG_ALPHA_FG_PIXEL = common dso_local global i32 0, align 4
@DPU_BLEND_BG_ALPHA_FG_PIXEL = common dso_local global i32 0, align 4
@DPU_BLEND_BG_INV_ALPHA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"format:%s, alpha_en:%u blend_op:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_crtc_mixer*, %struct.dpu_plane_state*, %struct.dpu_format*)* @_dpu_crtc_setup_blend_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_crtc_setup_blend_cfg(%struct.dpu_crtc_mixer* %0, %struct.dpu_plane_state* %1, %struct.dpu_format* %2) #0 {
  %4 = alloca %struct.dpu_crtc_mixer*, align 8
  %5 = alloca %struct.dpu_plane_state*, align 8
  %6 = alloca %struct.dpu_format*, align 8
  %7 = alloca %struct.dpu_hw_mixer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_format_name_buf, align 4
  store %struct.dpu_crtc_mixer* %0, %struct.dpu_crtc_mixer** %4, align 8
  store %struct.dpu_plane_state* %1, %struct.dpu_plane_state** %5, align 8
  store %struct.dpu_format* %2, %struct.dpu_format** %6, align 8
  %10 = load %struct.dpu_crtc_mixer*, %struct.dpu_crtc_mixer** %4, align 8
  %11 = getelementptr inbounds %struct.dpu_crtc_mixer, %struct.dpu_crtc_mixer* %10, i32 0, i32 0
  %12 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %11, align 8
  store %struct.dpu_hw_mixer* %12, %struct.dpu_hw_mixer** %7, align 8
  %13 = load i32, i32* @DPU_BLEND_FG_ALPHA_FG_CONST, align 4
  %14 = load i32, i32* @DPU_BLEND_BG_ALPHA_BG_CONST, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %17 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @DPU_BLEND_FG_ALPHA_FG_PIXEL, align 4
  %22 = load i32, i32* @DPU_BLEND_BG_ALPHA_FG_PIXEL, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @DPU_BLEND_BG_INV_ALPHA, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %20, %3
  %27 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %7, align 8
  %28 = getelementptr inbounds %struct.dpu_hw_mixer, %struct.dpu_hw_mixer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dpu_hw_mixer.0*, i32, i32, i32, i32)*, i32 (%struct.dpu_hw_mixer.0*, i32, i32, i32, i32)** %29, align 8
  %31 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %7, align 8
  %32 = bitcast %struct.dpu_hw_mixer* %31 to %struct.dpu_hw_mixer.0*
  %33 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %5, align 8
  %34 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 %30(%struct.dpu_hw_mixer.0* %32, i32 %35, i32 255, i32 0, i32 %36)
  %38 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %39 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @drm_get_format_name(i32 %41, %struct.drm_format_name_buf* %9)
  %43 = load %struct.dpu_format*, %struct.dpu_format** %6, align 8
  %44 = getelementptr inbounds %struct.dpu_format, %struct.dpu_format* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @DPU_DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
