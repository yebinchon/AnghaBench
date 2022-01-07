; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_set_output_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_set_output_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_mic = type { i64, i32, i32, %struct.videomode }
%struct.videomode = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"w: %u, h: %u\0A\00", align 1
@MIC_2D_OUTPUT_TIMING_2 = common dso_local global i64 0, align 8
@MIC_2D_OUTPUT_TIMING_0 = common dso_local global i64 0, align 8
@MIC_2D_OUTPUT_TIMING_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_mic*)* @mic_set_output_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_set_output_timing(%struct.exynos_mic* %0) #0 {
  %2 = alloca %struct.exynos_mic*, align 8
  %3 = alloca %struct.videomode, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.exynos_mic* %0, %struct.exynos_mic** %2, align 8
  %6 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %7 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %6, i32 0, i32 3
  %8 = bitcast %struct.videomode* %3 to i8*
  %9 = bitcast %struct.videomode* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 32, i1 false)
  %10 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %11 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DRM_DEV_DEBUG(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16)
  %18 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 2
  %21 = shl i32 %20, 1
  %22 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %23, 4
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @MIC_BS_SIZE_2D(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %30 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MIC_2D_OUTPUT_TIMING_2, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %36 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %77, label %39

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @MIC_H_PULSE_WIDTH_2D(i64 %41)
  %43 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %47, %49
  %51 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %50, %52
  %54 = call i32 @MIC_H_PERIOD_PIXEL_2D(i64 %53)
  %55 = add nsw i32 %42, %54
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %58 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MIC_2D_OUTPUT_TIMING_0, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @MIC_HBP_SIZE_2D(i64 %64)
  %66 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @MIC_H_PERIOD_PIXEL_2D(i64 %67)
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %72 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MIC_2D_OUTPUT_TIMING_1, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  br label %77

77:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*, i32, i32) #2

declare dso_local i32 @MIC_BS_SIZE_2D(i32) #2

declare dso_local i32 @writel(i32, i64) #2

declare dso_local i32 @MIC_H_PULSE_WIDTH_2D(i64) #2

declare dso_local i32 @MIC_H_PERIOD_PIXEL_2D(i64) #2

declare dso_local i32 @MIC_HBP_SIZE_2D(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
