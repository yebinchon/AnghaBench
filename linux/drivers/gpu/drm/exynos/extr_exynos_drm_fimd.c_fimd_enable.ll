; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.fimd_context* }
%struct.fimd_context = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @fimd_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimd_enable(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.fimd_context*, align 8
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %4 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %4, i32 0, i32 0
  %6 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  store %struct.fimd_context* %6, %struct.fimd_context** %3, align 8
  %7 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %8 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %14 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %16 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  %19 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %20 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %19, i32 0, i32 2
  %21 = call i64 @test_and_clear_bit(i32 0, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %25 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fimd_enable_vblank(i32 %26)
  br label %28

28:                                               ; preds = %23, %12
  %29 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %30 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fimd_commit(i32 %31)
  br label %33

33:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @fimd_enable_vblank(i32) #1

declare dso_local i32 @fimd_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
