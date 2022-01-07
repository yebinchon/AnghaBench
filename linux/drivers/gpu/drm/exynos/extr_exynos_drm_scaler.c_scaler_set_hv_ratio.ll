; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_set_hv_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_set_hv_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_context = type { i32 }
%struct.drm_exynos_ipp_task_rect = type { i32, i32 }

@SCALER_H_RATIO = common dso_local global i32 0, align 4
@SCALER_V_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scaler_context*, i32, %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect*)* @scaler_set_hv_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scaler_set_hv_ratio(%struct.scaler_context* %0, i32 %1, %struct.drm_exynos_ipp_task_rect* %2, %struct.drm_exynos_ipp_task_rect* %3) #0 {
  %5 = alloca %struct.scaler_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_exynos_ipp_task_rect*, align 8
  %8 = alloca %struct.drm_exynos_ipp_task_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scaler_context* %0, %struct.scaler_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.drm_exynos_ipp_task_rect* %2, %struct.drm_exynos_ipp_task_rect** %7, align 8
  store %struct.drm_exynos_ipp_task_rect* %3, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @drm_rotation_90_or_270(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %7, align 8
  %17 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 16
  %20 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %21 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %19, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %7, align 8
  %25 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 16
  %28 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %29 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %27, %30
  store i32 %31, i32* %11, align 4
  br label %49

32:                                               ; preds = %4
  %33 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %7, align 8
  %34 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %38 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %7, align 8
  %42 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %46 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %44, %47
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %32, %15
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @SCALER_H_RATIO_SET(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @SCALER_H_RATIO, align 4
  %54 = call i32 @scaler_write(i32 %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @SCALER_V_RATIO_SET(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SCALER_V_RATIO, align 4
  %59 = call i32 @scaler_write(i32 %57, i32 %58)
  ret void
}

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @SCALER_H_RATIO_SET(i32) #1

declare dso_local i32 @scaler_write(i32, i32) #1

declare dso_local i32 @SCALER_V_RATIO_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
