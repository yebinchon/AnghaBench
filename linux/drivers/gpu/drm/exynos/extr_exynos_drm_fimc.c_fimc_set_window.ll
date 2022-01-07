; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_set_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_set_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }
%struct.exynos_drm_ipp_buffer = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [40 x i8] c"x[%d]y[%d]w[%d]h[%d]hsize[%d]vsize[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"h1[%d]h2[%d]v1[%d]v2[%d]\0A\00", align 1
@EXYNOS_CIWDOFST = common dso_local global i32 0, align 4
@EXYNOS_CIWDOFST_WINHOROFST_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIWDOFST_WINVEROFST_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIWDOFST_WINOFSEN = common dso_local global i32 0, align 4
@EXYNOS_CIWDOFST2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*, %struct.exynos_drm_ipp_buffer*)* @fimc_set_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_set_window(%struct.fimc_context* %0, %struct.exynos_drm_ipp_buffer* %1) #0 {
  %3 = alloca %struct.fimc_context*, align 8
  %4 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %3, align 8
  store %struct.exynos_drm_ipp_buffer* %1, %struct.exynos_drm_ipp_buffer** %4, align 8
  %11 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = udiv i32 %16, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %29, %33
  %35 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub i32 %34, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %47, %51
  %53 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %52, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %59 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %62 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %70 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %68, i32 %72, i32 %76, i32 %77, i32 %81)
  %83 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %84 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %92 = load i32, i32* @EXYNOS_CIWDOFST, align 4
  %93 = call i32 @fimc_read(%struct.fimc_context* %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @EXYNOS_CIWDOFST_WINHOROFST_MASK, align 4
  %95 = load i32, i32* @EXYNOS_CIWDOFST_WINVEROFST_MASK, align 4
  %96 = or i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @EXYNOS_CIWDOFST_WINHOROFST(i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @EXYNOS_CIWDOFST_WINVEROFST(i32 %102)
  %104 = or i32 %101, %103
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* @EXYNOS_CIWDOFST_WINOFSEN, align 4
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @EXYNOS_CIWDOFST, align 4
  %113 = call i32 @fimc_write(%struct.fimc_context* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @EXYNOS_CIWDOFST2_WINHOROFST2(i32 %114)
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @EXYNOS_CIWDOFST2_WINVEROFST2(i32 %116)
  %118 = or i32 %115, %117
  store i32 %118, i32* %6, align 4
  %119 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @EXYNOS_CIWDOFST2, align 4
  %122 = call i32 @fimc_write(%struct.fimc_context* %119, i32 %120, i32 %121)
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @EXYNOS_CIWDOFST_WINHOROFST(i32) #1

declare dso_local i32 @EXYNOS_CIWDOFST_WINVEROFST(i32) #1

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @EXYNOS_CIWDOFST2_WINHOROFST2(i32) #1

declare dso_local i32 @EXYNOS_CIWDOFST2_WINVEROFST2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
