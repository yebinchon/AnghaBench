; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mixer_context = type { i32, %struct.exynos_drm_plane*, i32 }
%struct.exynos_drm_plane = type { i32 }
%struct.drm_device = type { i32 }

@MIXER_WIN_NR = common dso_local global i32 0, align 4
@VP_DEFAULT_WIN = common dso_local global i32 0, align 4
@MXR_BIT_VP_ENABLED = common dso_local global i32 0, align 4
@plane_configs = common dso_local global i32* null, align 8
@DEFAULT_WIN = common dso_local global i64 0, align 8
@EXYNOS_DISPLAY_TYPE_HDMI = common dso_local global i32 0, align 4
@mixer_crtc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @mixer_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mixer_context*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.exynos_drm_plane*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.mixer_context* @dev_get_drvdata(%struct.device* %13)
  store %struct.mixer_context* %14, %struct.mixer_context** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.drm_device*
  store %struct.drm_device* %16, %struct.drm_device** %9, align 8
  %17 = load %struct.mixer_context*, %struct.mixer_context** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %19 = call i32 @mixer_initialize(%struct.mixer_context* %17, %struct.drm_device* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %94

24:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %59, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @MIXER_WIN_NR, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @VP_DEFAULT_WIN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* @MXR_BIT_VP_ENABLED, align 4
  %35 = load %struct.mixer_context*, %struct.mixer_context** %8, align 8
  %36 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %35, i32 0, i32 2
  %37 = call i32 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %59

40:                                               ; preds = %33, %29
  %41 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %42 = load %struct.mixer_context*, %struct.mixer_context** %8, align 8
  %43 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %42, i32 0, i32 1
  %44 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %44, i64 %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** @plane_configs, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @exynos_plane_init(%struct.drm_device* %41, %struct.exynos_drm_plane* %47, i32 %48, i32* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %40
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %4, align 4
  br label %94

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %39
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %25

62:                                               ; preds = %25
  %63 = load %struct.mixer_context*, %struct.mixer_context** %8, align 8
  %64 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %63, i32 0, i32 1
  %65 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %64, align 8
  %66 = load i64, i64* @DEFAULT_WIN, align 8
  %67 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %65, i64 %66
  store %struct.exynos_drm_plane* %67, %struct.exynos_drm_plane** %10, align 8
  %68 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %69 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %10, align 8
  %70 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %69, i32 0, i32 0
  %71 = load i32, i32* @EXYNOS_DISPLAY_TYPE_HDMI, align 4
  %72 = load %struct.mixer_context*, %struct.mixer_context** %8, align 8
  %73 = call i32 @exynos_drm_crtc_create(%struct.drm_device* %68, i32* %70, i32 %71, i32* @mixer_crtc_ops, %struct.mixer_context* %72)
  %74 = load %struct.mixer_context*, %struct.mixer_context** %8, align 8
  %75 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.mixer_context*, %struct.mixer_context** %8, align 8
  %77 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %62
  %82 = load %struct.mixer_context*, %struct.mixer_context** %8, align 8
  %83 = call i32 @mixer_ctx_remove(%struct.mixer_context* %82)
  %84 = load %struct.mixer_context*, %struct.mixer_context** %8, align 8
  %85 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @PTR_ERR(i32 %86)
  store i32 %87, i32* %12, align 4
  br label %89

88:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %94

89:                                               ; preds = %81
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load %struct.mixer_context*, %struct.mixer_context** %8, align 8
  %92 = call i32 @devm_kfree(%struct.device* %90, %struct.mixer_context* %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %88, %56, %22
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.mixer_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mixer_initialize(%struct.mixer_context*, %struct.drm_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @exynos_plane_init(%struct.drm_device*, %struct.exynos_drm_plane*, i32, i32*) #1

declare dso_local i32 @exynos_drm_crtc_create(%struct.drm_device*, i32*, i32, i32*, %struct.mixer_context*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @mixer_ctx_remove(%struct.mixer_context*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.mixer_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
