; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_set_img_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_set_img_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_mic = type { i64, %struct.videomode }
%struct.videomode = type { i32, i32 }

@MIC_IMG_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_mic*)* @mic_set_img_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_set_img_size(%struct.exynos_mic* %0) #0 {
  %2 = alloca %struct.exynos_mic*, align 8
  %3 = alloca %struct.videomode*, align 8
  %4 = alloca i64, align 8
  store %struct.exynos_mic* %0, %struct.exynos_mic** %2, align 8
  %5 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %5, i32 0, i32 1
  store %struct.videomode* %6, %struct.videomode** %3, align 8
  %7 = load %struct.videomode*, %struct.videomode** %3, align 8
  %8 = getelementptr inbounds %struct.videomode, %struct.videomode* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @MIC_IMG_H_SIZE(i32 %9)
  %11 = load %struct.videomode*, %struct.videomode** %3, align 8
  %12 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @MIC_IMG_V_SIZE(i32 %13)
  %15 = add nsw i64 %10, %14
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.exynos_mic*, %struct.exynos_mic** %2, align 8
  %18 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MIC_IMG_SIZE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i64 %16, i64 %21)
  ret void
}

declare dso_local i64 @MIC_IMG_H_SIZE(i32) #1

declare dso_local i64 @MIC_IMG_V_SIZE(i32) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
