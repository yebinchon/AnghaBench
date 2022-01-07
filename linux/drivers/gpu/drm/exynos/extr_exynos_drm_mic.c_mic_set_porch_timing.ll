; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_set_porch_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_set_porch_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_mic = type { i64, %struct.videomode }
%struct.videomode = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@MIC_V_TIMING_0 = common dso_local global i64 0, align 8
@MIC_V_TIMING_1 = common dso_local global i64 0, align 8
@MIC_INPUT_TIMING_0 = common dso_local global i64 0, align 8
@MIC_INPUT_TIMING_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_mic*)* @mic_set_porch_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_set_porch_timing(%struct.exynos_mic* %0) #0 {
  %2 = alloca %struct.exynos_mic*, align 8
  %3 = alloca %struct.videomode, align 8
  %4 = alloca i64, align 8
  store %struct.exynos_mic* %0, %struct.exynos_mic** %2, align 8
  %5 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %5, i32 0, i32 1
  %7 = bitcast %struct.videomode* %3 to i8*
  %8 = bitcast %struct.videomode* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 64, i1 false)
  %9 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @MIC_V_PULSE_WIDTH(i64 %10)
  %12 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %13, %15
  %17 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %16, %18
  %20 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %19, %21
  %23 = call i64 @MIC_V_PERIOD_LINE(i64 %22)
  %24 = add nsw i64 %11, %23
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %27 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MIC_V_TIMING_0, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i64 %25, i64 %30)
  %32 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @MIC_VBP_SIZE(i64 %33)
  %35 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @MIC_VFP_SIZE(i64 %36)
  %38 = add nsw i64 %34, %37
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %41 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MIC_V_TIMING_1, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i64 %39, i64 %44)
  %46 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @MIC_V_PULSE_WIDTH(i64 %47)
  %49 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %50, %52
  %54 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %53, %55
  %57 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %56, %58
  %60 = call i64 @MIC_V_PERIOD_LINE(i64 %59)
  %61 = add nsw i64 %48, %60
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %64 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MIC_INPUT_TIMING_0, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i64 %62, i64 %67)
  %69 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @MIC_VBP_SIZE(i64 %70)
  %72 = getelementptr inbounds %struct.videomode, %struct.videomode* %3, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @MIC_VFP_SIZE(i64 %73)
  %75 = add nsw i64 %71, %74
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %78 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MIC_INPUT_TIMING_1, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i64 %76, i64 %81)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @MIC_V_PULSE_WIDTH(i64) #2

declare dso_local i64 @MIC_V_PERIOD_LINE(i64) #2

declare dso_local i32 @writel(i64, i64) #2

declare dso_local i64 @MIC_VBP_SIZE(i64) #2

declare dso_local i64 @MIC_VFP_SIZE(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
