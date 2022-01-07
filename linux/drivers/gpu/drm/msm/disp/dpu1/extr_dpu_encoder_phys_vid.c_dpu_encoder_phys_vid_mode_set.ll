; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid encoder/kms\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"caching mode:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @dpu_encoder_phys_vid_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_vid_mode_set(%struct.dpu_encoder_phys* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.dpu_encoder_phys*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %7 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %8 = icmp ne %struct.dpu_encoder_phys* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %11 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %3
  %15 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %32

16:                                               ; preds = %9
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %18 = icmp ne %struct.drm_display_mode* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %20, i32 0, i32 0
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %23 = bitcast %struct.drm_display_mode* %21 to i8*
  %24 = bitcast %struct.drm_display_mode* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %26 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %25)
  %27 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %28 = call i32 @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %19, %16
  %30 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %31 = call i32 @_dpu_encoder_phys_vid_setup_irq_hw_idx(%struct.dpu_encoder_phys* %30)
  br label %32

32:                                               ; preds = %29, %14
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

declare dso_local i32 @DPU_DEBUG_VIDENC(%struct.dpu_encoder_phys*, i8*) #1

declare dso_local i32 @_dpu_encoder_phys_vid_setup_irq_hw_idx(%struct.dpu_encoder_phys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
