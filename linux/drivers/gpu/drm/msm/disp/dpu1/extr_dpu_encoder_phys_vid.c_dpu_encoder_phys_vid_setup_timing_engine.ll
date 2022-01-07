; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_setup_timing_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_setup_timing_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.drm_display_mode }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, %struct.dpu_hw_intf_cfg*)* }
%struct.dpu_hw_intf_cfg = type { i32, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, %struct.intf_timing_params*, %struct.dpu_format*)* }
%struct.intf_timing_params = type { i32 }
%struct.dpu_format = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32 }

@DRM_FORMAT_RGB888 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid encoder %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"timing engine setup is not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"enabling mode:\0A\00", align 1
@ENC_ROLE_SOLO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"split_role %d, halve horizontal %d %d %d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"fmt_fourcc 0x%X\0A\00", align 1
@DPU_CTL_MODE_SEL_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_vid_setup_timing_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_vid_setup_timing_engine(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.drm_display_mode, align 4
  %4 = alloca %struct.intf_timing_params, align 4
  %5 = alloca %struct.dpu_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dpu_hw_intf_cfg, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %9 = bitcast %struct.intf_timing_params* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  store %struct.dpu_format* null, %struct.dpu_format** %5, align 8
  %10 = load i32, i32* @DRM_FORMAT_RGB888, align 4
  store i32 %10, i32* %6, align 4
  %11 = bitcast %struct.dpu_hw_intf_cfg* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %13 = icmp ne %struct.dpu_encoder_phys* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_7__*, %struct.dpu_hw_intf_cfg*)*, i32 (%struct.TYPE_7__*, %struct.dpu_hw_intf_cfg*)** %19, align 8
  %21 = icmp ne i32 (%struct.TYPE_7__*, %struct.dpu_hw_intf_cfg*)* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %24 = icmp ne %struct.dpu_encoder_phys* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %129

27:                                               ; preds = %14
  %28 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %29 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %28, i32 0, i32 4
  %30 = bitcast %struct.drm_display_mode* %3 to i8*
  %31 = bitcast %struct.drm_display_mode* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %33 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_8__*, %struct.intf_timing_params*, %struct.dpu_format*)*, i32 (%struct.TYPE_8__*, %struct.intf_timing_params*, %struct.dpu_format*)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_8__*, %struct.intf_timing_params*, %struct.dpu_format*)* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  %40 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %129

41:                                               ; preds = %27
  %42 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %43 = call i32 (%struct.dpu_encoder_phys*, i8*, ...) @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %3)
  %45 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %46 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ENC_ROLE_SOLO, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %64 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %65 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.dpu_encoder_phys*, i8*, ...) @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys* %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %66, i32 %68, i32 %70, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %50, %41
  %77 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %78 = call i32 @drm_mode_to_intf_timing_params(%struct.dpu_encoder_phys* %77, %struct.drm_display_mode* %3, %struct.intf_timing_params* %4)
  %79 = load i32, i32* %6, align 4
  %80 = call %struct.dpu_format* @dpu_get_dpu_format(i32 %79)
  store %struct.dpu_format* %80, %struct.dpu_format** %5, align 8
  %81 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (%struct.dpu_encoder_phys*, i8*, ...) @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %85 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %84, i32 0, i32 3
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.dpu_hw_intf_cfg, %struct.dpu_hw_intf_cfg* %8, i32 0, i32 3
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @DPU_CTL_MODE_SEL_VID, align 4
  %91 = getelementptr inbounds %struct.dpu_hw_intf_cfg, %struct.dpu_hw_intf_cfg* %8, i32 0, i32 2
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds %struct.dpu_hw_intf_cfg, %struct.dpu_hw_intf_cfg* %8, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %94 = call i32 @dpu_encoder_helper_get_3d_blend_mode(%struct.dpu_encoder_phys* %93)
  %95 = getelementptr inbounds %struct.dpu_hw_intf_cfg, %struct.dpu_hw_intf_cfg* %8, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %97 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @spin_lock_irqsave(i32 %98, i64 %99)
  %101 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %102 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %101, i32 0, i32 3
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_8__*, %struct.intf_timing_params*, %struct.dpu_format*)*, i32 (%struct.TYPE_8__*, %struct.intf_timing_params*, %struct.dpu_format*)** %105, align 8
  %107 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %108 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %107, i32 0, i32 3
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load %struct.dpu_format*, %struct.dpu_format** %5, align 8
  %111 = call i32 %106(%struct.TYPE_8__* %109, %struct.intf_timing_params* %4, %struct.dpu_format* %110)
  %112 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %113 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %112, i32 0, i32 2
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_7__*, %struct.dpu_hw_intf_cfg*)*, i32 (%struct.TYPE_7__*, %struct.dpu_hw_intf_cfg*)** %116, align 8
  %118 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %119 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %118, i32 0, i32 2
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = call i32 %117(%struct.TYPE_7__* %120, %struct.dpu_hw_intf_cfg* %8)
  %122 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %123 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32 %124, i64 %125)
  %127 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %128 = call i32 @programmable_fetch_config(%struct.dpu_encoder_phys* %127, %struct.intf_timing_params* %4)
  br label %129

129:                                              ; preds = %76, %39, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DPU_ERROR(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys*, i8*, ...) #2

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #2

declare dso_local i32 @drm_mode_to_intf_timing_params(%struct.dpu_encoder_phys*, %struct.drm_display_mode*, %struct.intf_timing_params*) #2

declare dso_local %struct.dpu_format* @dpu_get_dpu_format(i32) #2

declare dso_local i32 @dpu_encoder_helper_get_3d_blend_mode(%struct.dpu_encoder_phys*) #2

declare dso_local i32 @spin_lock_irqsave(i32, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #2

declare dso_local i32 @programmable_fetch_config(%struct.dpu_encoder_phys*, %struct.intf_timing_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
