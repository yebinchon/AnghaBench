; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { i64, %struct.decon_context* }
%struct.decon_context = type { i32, i64, i64, i64 }
%struct.drm_display_mode = type { i32 }

@MODE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Sink requires %s mode, but appropriate interrupt is not provided.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@MODE_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_crtc*, %struct.drm_display_mode*)* @decon_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decon_mode_valid(%struct.exynos_drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.decon_context*, align 8
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %7 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %4, align 8
  %8 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %7, i32 0, i32 1
  %9 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  store %struct.decon_context* %9, %struct.decon_context** %6, align 8
  %10 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %4, align 8
  %11 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %16 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %20 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i64 [ %17, %14 ], [ %21, %18 ]
  %24 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %25 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %27 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @MODE_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %22
  %33 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %34 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %4, align 8
  %37 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 @dev_info(i32 %35, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @MODE_BAD, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %32, %30
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
