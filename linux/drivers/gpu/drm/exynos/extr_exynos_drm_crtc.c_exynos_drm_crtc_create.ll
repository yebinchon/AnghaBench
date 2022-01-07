; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_drm_crtc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_drm_crtc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { i32, %struct.drm_crtc, i8*, %struct.exynos_drm_crtc_ops* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_plane*)* }
%struct.exynos_drm_crtc_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@exynos_crtc_funcs = common dso_local global i32 0, align 4
@exynos_crtc_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.exynos_drm_crtc* @exynos_drm_crtc_create(%struct.drm_device* %0, %struct.drm_plane* %1, i32 %2, %struct.exynos_drm_crtc_ops* %3, i8* %4) #0 {
  %6 = alloca %struct.exynos_drm_crtc*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.exynos_drm_crtc_ops*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.exynos_drm_crtc*, align 8
  %13 = alloca %struct.drm_crtc*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.exynos_drm_crtc_ops* %3, %struct.exynos_drm_crtc_ops** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.exynos_drm_crtc* @kzalloc(i32 24, i32 %15)
  store %struct.exynos_drm_crtc* %16, %struct.exynos_drm_crtc** %12, align 8
  %17 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %12, align 8
  %18 = icmp ne %struct.exynos_drm_crtc* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.exynos_drm_crtc* @ERR_PTR(i32 %21)
  store %struct.exynos_drm_crtc* %22, %struct.exynos_drm_crtc** %6, align 8
  br label %58

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %12, align 8
  %26 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.exynos_drm_crtc_ops*, %struct.exynos_drm_crtc_ops** %10, align 8
  %28 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %12, align 8
  %29 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %28, i32 0, i32 3
  store %struct.exynos_drm_crtc_ops* %27, %struct.exynos_drm_crtc_ops** %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %12, align 8
  %32 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %12, align 8
  %34 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %33, i32 0, i32 1
  store %struct.drm_crtc* %34, %struct.drm_crtc** %13, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %37 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %38 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %35, %struct.drm_crtc* %36, %struct.drm_plane* %37, i32* null, i32* @exynos_crtc_funcs, i32* null)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %46

42:                                               ; preds = %23
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %44 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %43, i32* @exynos_crtc_helper_funcs)
  %45 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %12, align 8
  store %struct.exynos_drm_crtc* %45, %struct.exynos_drm_crtc** %6, align 8
  br label %58

46:                                               ; preds = %41
  %47 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %48 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.drm_plane*)*, i32 (%struct.drm_plane*)** %50, align 8
  %52 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %53 = call i32 %51(%struct.drm_plane* %52)
  %54 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %12, align 8
  %55 = call i32 @kfree(%struct.exynos_drm_crtc* %54)
  %56 = load i32, i32* %14, align 4
  %57 = call %struct.exynos_drm_crtc* @ERR_PTR(i32 %56)
  store %struct.exynos_drm_crtc* %57, %struct.exynos_drm_crtc** %6, align 8
  br label %58

58:                                               ; preds = %46, %42, %19
  %59 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %6, align 8
  ret %struct.exynos_drm_crtc* %59
}

declare dso_local %struct.exynos_drm_crtc* @kzalloc(i32, i32) #1

declare dso_local %struct.exynos_drm_crtc* @ERR_PTR(i32) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, i32*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @kfree(%struct.exynos_drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
