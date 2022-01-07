; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fb.c_exynos_drm_fb_dma_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fb.c_exynos_drm_fb_dma_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i64*, i32* }
%struct.exynos_drm_gem = type { i64 }

@MAX_FB_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.exynos_drm_gem*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MAX_FB_BUFFER, align 4
  %9 = icmp sge i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON_ONCE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %16 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.exynos_drm_gem* @to_exynos_gem(i32 %21)
  store %struct.exynos_drm_gem* %22, %struct.exynos_drm_gem** %6, align 8
  %23 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %24 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %27 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %25, %32
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %14, %13
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.exynos_drm_gem* @to_exynos_gem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
