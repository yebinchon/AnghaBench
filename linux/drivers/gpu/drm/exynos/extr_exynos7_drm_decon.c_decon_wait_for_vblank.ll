; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_wait_for_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_wait_for_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.decon_context* }
%struct.decon_context = type { i32, i32, i32, i64 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"vblank wait timed out.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @decon_wait_for_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_wait_for_vblank(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.decon_context*, align 8
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %4 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %4, i32 0, i32 0
  %6 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  store %struct.decon_context* %6, %struct.decon_context** %3, align 8
  %7 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %8 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %14 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %13, i32 0, i32 1
  %15 = call i32 @atomic_set(i32* %14, i32 1)
  %16 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %17 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %20 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %19, i32 0, i32 1
  %21 = call i32 @atomic_read(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @HZ, align 4
  %26 = sdiv i32 %25, 20
  %27 = call i32 @wait_event_timeout(i32 %18, i32 %24, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %12
  %30 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %31 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @DRM_DEV_DEBUG_KMS(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %11, %29, %12
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
