; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_set_src_luma_chroma_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_set_src_luma_chroma_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_context = type { i32 }
%struct.drm_exynos_ipp_task_rect = type { i32, i32 }
%struct.scaler_format = type { i32, i32 }

@SCALER_SRC_Y_POS = common dso_local global i32 0, align 4
@SCALER_SRC_C_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scaler_context*, %struct.drm_exynos_ipp_task_rect*, %struct.scaler_format*)* @scaler_set_src_luma_chroma_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scaler_set_src_luma_chroma_pos(%struct.scaler_context* %0, %struct.drm_exynos_ipp_task_rect* %1, %struct.scaler_format* %2) #0 {
  %4 = alloca %struct.scaler_context*, align 8
  %5 = alloca %struct.drm_exynos_ipp_task_rect*, align 8
  %6 = alloca %struct.scaler_format*, align 8
  %7 = alloca i32, align 4
  store %struct.scaler_context* %0, %struct.scaler_context** %4, align 8
  store %struct.drm_exynos_ipp_task_rect* %1, %struct.drm_exynos_ipp_task_rect** %5, align 8
  store %struct.scaler_format* %2, %struct.scaler_format** %6, align 8
  %8 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %5, align 8
  %9 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 2
  %12 = call i32 @SCALER_SRC_Y_POS_SET_YH_POS(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %5, align 8
  %14 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 2
  %17 = call i32 @SCALER_SRC_Y_POS_SET_YV_POS(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SCALER_SRC_Y_POS, align 4
  %22 = call i32 @scaler_write(i32 %20, i32 %21)
  %23 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %5, align 8
  %24 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.scaler_format*, %struct.scaler_format** %6, align 8
  %27 = getelementptr inbounds %struct.scaler_format, %struct.scaler_format* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = sdiv i32 %29, 16
  %31 = shl i32 %30, 2
  %32 = call i32 @SCALER_SRC_C_POS_SET_CH_POS(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %5, align 8
  %34 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.scaler_format*, %struct.scaler_format** %6, align 8
  %37 = getelementptr inbounds %struct.scaler_format, %struct.scaler_format* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = sdiv i32 %39, 16
  %41 = shl i32 %40, 2
  %42 = call i32 @SCALER_SRC_C_POS_SET_CV_POS(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SCALER_SRC_C_POS, align 4
  %47 = call i32 @scaler_write(i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @SCALER_SRC_Y_POS_SET_YH_POS(i32) #1

declare dso_local i32 @SCALER_SRC_Y_POS_SET_YV_POS(i32) #1

declare dso_local i32 @scaler_write(i32, i32) #1

declare dso_local i32 @SCALER_SRC_C_POS_SET_CH_POS(i32) #1

declare dso_local i32 @SCALER_SRC_C_POS_SET_CV_POS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
