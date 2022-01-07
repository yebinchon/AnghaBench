; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_set_prescaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_set_prescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32, i64 }
%struct.gsc_scaler = type { i32, i32, i32, i32, i32 }
%struct.drm_exynos_ipp_task_rect = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to get ratio horizontal.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get ratio vertical.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"pre_hratio[%d]pre_vratio[%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"main_hratio[%ld]main_vratio[%ld]\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"pre_shfactor[%d]\0A\00", align 1
@GSC_PRE_SCALE_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsc_context*, %struct.gsc_scaler*, %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect*)* @gsc_set_prescaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_set_prescaler(%struct.gsc_context* %0, %struct.gsc_scaler* %1, %struct.drm_exynos_ipp_task_rect* %2, %struct.drm_exynos_ipp_task_rect* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsc_context*, align 8
  %7 = alloca %struct.gsc_scaler*, align 8
  %8 = alloca %struct.drm_exynos_ipp_task_rect*, align 8
  %9 = alloca %struct.drm_exynos_ipp_task_rect*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %6, align 8
  store %struct.gsc_scaler* %1, %struct.gsc_scaler** %7, align 8
  store %struct.drm_exynos_ipp_task_rect* %2, %struct.drm_exynos_ipp_task_rect** %8, align 8
  store %struct.drm_exynos_ipp_task_rect* %3, %struct.drm_exynos_ipp_task_rect** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %17 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %20 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.gsc_context*, %struct.gsc_context** %6, align 8
  %23 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %9, align 8
  %28 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %9, align 8
  %31 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  br label %40

33:                                               ; preds = %4
  %34 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %9, align 8
  %35 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %9, align 8
  %38 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.gsc_context*, %struct.gsc_context** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %45 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %44, i32 0, i32 3
  %46 = call i32 @gsc_get_ratio_shift(%struct.gsc_context* %41, i32 %42, i32 %43, i32* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.gsc_context*, %struct.gsc_context** %6, align 8
  %51 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @DRM_DEV_ERROR(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %5, align 4
  br label %137

55:                                               ; preds = %40
  %56 = load %struct.gsc_context*, %struct.gsc_context** %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %60 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %59, i32 0, i32 2
  %61 = call i32 @gsc_get_ratio_shift(%struct.gsc_context* %56, i32 %57, i32 %58, i32* %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.gsc_context*, %struct.gsc_context** %6, align 8
  %66 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @DRM_DEV_ERROR(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %5, align 4
  br label %137

70:                                               ; preds = %55
  %71 = load %struct.gsc_context*, %struct.gsc_context** %6, align 8
  %72 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %75 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %78 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = shl i32 %81, 16
  %83 = load i32, i32* %13, align 4
  %84 = sdiv i32 %82, %83
  %85 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %86 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %12, align 4
  %88 = shl i32 %87, 16
  %89 = load i32, i32* %14, align 4
  %90 = sdiv i32 %88, %89
  %91 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %92 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.gsc_context*, %struct.gsc_context** %6, align 8
  %94 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %97 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %100 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %104 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %107 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %110 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %109, i32 0, i32 4
  %111 = call i32 @gsc_get_prescaler_shfactor(i32 %105, i32 %108, i32* %110)
  %112 = load %struct.gsc_context*, %struct.gsc_context** %6, align 8
  %113 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %116 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %120 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @GSC_PRESC_SHFACTOR(i32 %121)
  %123 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %124 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @GSC_PRESC_H_RATIO(i32 %125)
  %127 = or i32 %122, %126
  %128 = load %struct.gsc_scaler*, %struct.gsc_scaler** %7, align 8
  %129 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @GSC_PRESC_V_RATIO(i32 %130)
  %132 = or i32 %127, %131
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @GSC_PRE_SCALE_RATIO, align 4
  %135 = call i32 @gsc_write(i32 %133, i32 %134)
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %70, %64, %49
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @gsc_get_ratio_shift(%struct.gsc_context*, i32, i32, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, ...) #1

declare dso_local i32 @gsc_get_prescaler_shfactor(i32, i32, i32*) #1

declare dso_local i32 @GSC_PRESC_SHFACTOR(i32) #1

declare dso_local i32 @GSC_PRESC_H_RATIO(i32) #1

declare dso_local i32 @GSC_PRESC_V_RATIO(i32) #1

declare dso_local i32 @gsc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
