; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys.h_dpu_encoder_helper_get_3d_blend_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys.h_dpu_encoder_helper_get_3d_blend_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dpu_crtc_state = type { i64 }

@DPU_ENC_DISABLING = common dso_local global i64 0, align 8
@BLEND_3D_NONE = common dso_local global i32 0, align 4
@ENC_ROLE_SOLO = common dso_local global i64 0, align 8
@CRTC_DUAL_MIXERS = common dso_local global i64 0, align 8
@BLEND_3D_H_ROW_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_phys*)* @dpu_encoder_helper_get_3d_blend_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_helper_get_3d_blend_mode(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca %struct.dpu_crtc_state*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  %5 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %6 = icmp ne %struct.dpu_encoder_phys* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %9 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DPU_ENC_DISABLING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7, %1
  %14 = load i32, i32* @BLEND_3D_NONE, align 4
  store i32 %14, i32* %2, align 4
  br label %39

15:                                               ; preds = %7
  %16 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %17 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.dpu_crtc_state* @to_dpu_crtc_state(i32 %22)
  store %struct.dpu_crtc_state* %23, %struct.dpu_crtc_state** %4, align 8
  %24 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %25 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ENC_ROLE_SOLO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %15
  %30 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %4, align 8
  %31 = getelementptr inbounds %struct.dpu_crtc_state, %struct.dpu_crtc_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CRTC_DUAL_MIXERS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @BLEND_3D_H_ROW_INT, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %29, %15
  %38 = load i32, i32* @BLEND_3D_NONE, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %35, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.dpu_crtc_state* @to_dpu_crtc_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
