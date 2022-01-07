; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_update_vsync_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_update_vsync_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_virt = type { i32, %struct.TYPE_6__**, %struct.drm_encoder }
%struct.TYPE_6__ = type { i32 }
%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.msm_display_info = type { i32, i64 }
%struct.dpu_vsync_source_cfg = type { i32, i32, i32*, i32 }
%struct.dpu_kms = type { %struct.dpu_hw_mdp* }
%struct.dpu_hw_mdp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.dpu_hw_mdp*, %struct.dpu_vsync_source_cfg*)* }

@.str = private unnamed_addr constant [42 x i8] c"invalid param dpu_enc:%d or disp_info:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid num phys enc %d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid dpu_kms\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"invalid mdptop\0A\00", align 1
@MSM_DISPLAY_CAP_CMD_MODE = common dso_local global i32 0, align 4
@DPU_VSYNC_SOURCE_WD_TIMER_0 = common dso_local global i32 0, align 4
@DPU_VSYNC0_SOURCE_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_virt*, %struct.msm_display_info*)* @_dpu_encoder_update_vsync_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_encoder_update_vsync_source(%struct.dpu_encoder_virt* %0, %struct.msm_display_info* %1) #0 {
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca %struct.msm_display_info*, align 8
  %5 = alloca %struct.dpu_vsync_source_cfg, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca %struct.dpu_kms*, align 8
  %8 = alloca %struct.dpu_hw_mdp*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca i32, align 4
  store %struct.dpu_encoder_virt* %0, %struct.dpu_encoder_virt** %3, align 8
  store %struct.msm_display_info* %1, %struct.msm_display_info** %4, align 8
  %11 = bitcast %struct.dpu_vsync_source_cfg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %13 = icmp ne %struct.dpu_encoder_virt* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.msm_display_info*, %struct.msm_display_info** %4, align 8
  %16 = icmp ne %struct.msm_display_info* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %19 = icmp ne %struct.dpu_encoder_virt* %18, null
  %20 = zext i1 %19 to i32
  %21 = load %struct.msm_display_info*, %struct.msm_display_info** %4, align 8
  %22 = icmp ne %struct.msm_display_info* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  br label %128

25:                                               ; preds = %14
  %26 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %27 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %30 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %30, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_6__** %31)
  %33 = icmp sgt i32 %28, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %36 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %39 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %39, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_6__** %40)
  %42 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %41)
  br label %128

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %46 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %45, i32 0, i32 2
  store %struct.drm_encoder* %46, %struct.drm_encoder** %9, align 8
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %48 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.msm_drm_private*, %struct.msm_drm_private** %50, align 8
  store %struct.msm_drm_private* %51, %struct.msm_drm_private** %6, align 8
  %52 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %53 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.dpu_kms* @to_dpu_kms(i32 %54)
  store %struct.dpu_kms* %55, %struct.dpu_kms** %7, align 8
  %56 = load %struct.dpu_kms*, %struct.dpu_kms** %7, align 8
  %57 = icmp ne %struct.dpu_kms* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %44
  %59 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %128

60:                                               ; preds = %44
  %61 = load %struct.dpu_kms*, %struct.dpu_kms** %7, align 8
  %62 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %61, i32 0, i32 0
  %63 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %62, align 8
  store %struct.dpu_hw_mdp* %63, %struct.dpu_hw_mdp** %8, align 8
  %64 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %8, align 8
  %65 = icmp ne %struct.dpu_hw_mdp* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %128

68:                                               ; preds = %60
  %69 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %8, align 8
  %70 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32 (%struct.dpu_hw_mdp*, %struct.dpu_vsync_source_cfg*)*, i32 (%struct.dpu_hw_mdp*, %struct.dpu_vsync_source_cfg*)** %71, align 8
  %73 = icmp ne i32 (%struct.dpu_hw_mdp*, %struct.dpu_vsync_source_cfg*)* %72, null
  br i1 %73, label %74, label %128

74:                                               ; preds = %68
  %75 = load %struct.msm_display_info*, %struct.msm_display_info** %4, align 8
  %76 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MSM_DISPLAY_CAP_CMD_MODE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %128

81:                                               ; preds = %74
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %103, %81
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %85 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %90 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %91, i64 %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.dpu_vsync_source_cfg, %struct.dpu_vsync_source_cfg* %5, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %82

106:                                              ; preds = %82
  %107 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %108 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.dpu_vsync_source_cfg, %struct.dpu_vsync_source_cfg* %5, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = load %struct.msm_display_info*, %struct.msm_display_info** %4, align 8
  %112 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i32, i32* @DPU_VSYNC_SOURCE_WD_TIMER_0, align 4
  %117 = getelementptr inbounds %struct.dpu_vsync_source_cfg, %struct.dpu_vsync_source_cfg* %5, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  br label %121

118:                                              ; preds = %106
  %119 = load i32, i32* @DPU_VSYNC0_SOURCE_GPIO, align 4
  %120 = getelementptr inbounds %struct.dpu_vsync_source_cfg, %struct.dpu_vsync_source_cfg* %5, i32 0, i32 1
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %8, align 8
  %123 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32 (%struct.dpu_hw_mdp*, %struct.dpu_vsync_source_cfg*)*, i32 (%struct.dpu_hw_mdp*, %struct.dpu_vsync_source_cfg*)** %124, align 8
  %126 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %8, align 8
  %127 = call i32 %125(%struct.dpu_hw_mdp* %126, %struct.dpu_vsync_source_cfg* %5)
  br label %128

128:                                              ; preds = %17, %34, %58, %66, %121, %74, %68
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DPU_ERROR(i8*, ...) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__**) #2

declare dso_local %struct.dpu_kms* @to_dpu_kms(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
