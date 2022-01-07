; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vidi_context = type { i32, %struct.exynos_drm_plane*, %struct.drm_device*, %struct.drm_encoder }
%struct.exynos_drm_plane = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.exynos_drm_plane_config = type { i32, i32, i32, i32, i32 }

@formats = common dso_local global i32 0, align 4
@WINDOWS_NR = common dso_local global i32 0, align 4
@vidi_win_types = common dso_local global i32* null, align 8
@DEFAULT_WIN = common dso_local global i64 0, align 8
@EXYNOS_DISPLAY_TYPE_VIDI = common dso_local global i32 0, align 4
@vidi_crtc_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to create crtc.\0A\00", align 1
@exynos_vidi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@exynos_vidi_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to create connector ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @vidi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vidi_context*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca %struct.exynos_drm_plane*, align 8
  %12 = alloca %struct.exynos_drm_plane_config, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.vidi_context* @dev_get_drvdata(%struct.device* %15)
  store %struct.vidi_context* %16, %struct.vidi_context** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.drm_device*
  store %struct.drm_device* %18, %struct.drm_device** %9, align 8
  %19 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %20 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %19, i32 0, i32 3
  store %struct.drm_encoder* %20, %struct.drm_encoder** %10, align 8
  %21 = bitcast %struct.exynos_drm_plane_config* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 20, i1 false)
  %22 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %23 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %24 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %23, i32 0, i32 2
  store %struct.drm_device* %22, %struct.drm_device** %24, align 8
  %25 = load i32, i32* @formats, align 4
  %26 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %12, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @formats, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %12, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %57, %3
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @WINDOWS_NR, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %12, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** @vidi_win_types, align 8
  %38 = load i32, i32* %13, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %12, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %44 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %45 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %44, i32 0, i32 1
  %46 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %46, i64 %48
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @exynos_plane_init(%struct.drm_device* %43, %struct.exynos_drm_plane* %49, i32 %50, %struct.exynos_drm_plane_config* %12)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %4, align 4
  br label %113

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %13, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %62 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %61, i32 0, i32 1
  %63 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %62, align 8
  %64 = load i64, i64* @DEFAULT_WIN, align 8
  %65 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %63, i64 %64
  store %struct.exynos_drm_plane* %65, %struct.exynos_drm_plane** %11, align 8
  %66 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %67 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %11, align 8
  %68 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %67, i32 0, i32 0
  %69 = load i32, i32* @EXYNOS_DISPLAY_TYPE_VIDI, align 4
  %70 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %71 = call i32 @exynos_drm_crtc_create(%struct.drm_device* %66, i32* %68, i32 %69, i32* @vidi_crtc_ops, %struct.vidi_context* %70)
  %72 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %73 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %75 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %60
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %83 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %4, align 4
  br label %113

86:                                               ; preds = %60
  %87 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %88 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %89 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %90 = call i32 @drm_encoder_init(%struct.drm_device* %87, %struct.drm_encoder* %88, i32* @exynos_vidi_encoder_funcs, i32 %89, i32* null)
  %91 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %92 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %91, i32* @exynos_vidi_encoder_helper_funcs)
  %93 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %94 = load i32, i32* @EXYNOS_DISPLAY_TYPE_VIDI, align 4
  %95 = call i32 @exynos_drm_set_possible_crtcs(%struct.drm_encoder* %93, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %4, align 4
  br label %113

100:                                              ; preds = %86
  %101 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %102 = call i32 @vidi_create_connector(%struct.drm_encoder* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %110 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %109)
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %4, align 4
  br label %113

112:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %105, %98, %79, %54
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.vidi_context* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @exynos_plane_init(%struct.drm_device*, %struct.exynos_drm_plane*, i32, %struct.exynos_drm_plane_config*) #1

declare dso_local i32 @exynos_drm_crtc_create(%struct.drm_device*, i32*, i32, i32*, %struct.vidi_context*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @exynos_drm_set_possible_crtcs(%struct.drm_encoder*, i32) #1

declare dso_local i32 @vidi_create_connector(%struct.drm_encoder*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
