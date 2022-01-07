; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_simple_kms_helper.c_drm_simple_display_pipe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_simple_kms_helper.c_drm_simple_display_pipe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_simple_display_pipe = type { %struct.drm_simple_display_pipe_funcs*, %struct.drm_connector*, %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder }
%struct.drm_crtc = type { i32 }
%struct.drm_plane = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_simple_display_pipe_funcs = type { i32 }
%struct.drm_connector = type { i32 }

@drm_simple_kms_plane_helper_funcs = common dso_local global i32 0, align 4
@drm_simple_kms_plane_funcs = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@drm_simple_kms_crtc_helper_funcs = common dso_local global i32 0, align 4
@drm_simple_kms_crtc_funcs = common dso_local global i32 0, align 4
@drm_simple_kms_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_simple_display_pipe_init(%struct.drm_device* %0, %struct.drm_simple_display_pipe* %1, %struct.drm_simple_display_pipe_funcs* %2, i32* %3, i32 %4, i32* %5, %struct.drm_connector* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_simple_display_pipe*, align 8
  %11 = alloca %struct.drm_simple_display_pipe_funcs*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.drm_connector*, align 8
  %16 = alloca %struct.drm_encoder*, align 8
  %17 = alloca %struct.drm_plane*, align 8
  %18 = alloca %struct.drm_crtc*, align 8
  %19 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %9, align 8
  store %struct.drm_simple_display_pipe* %1, %struct.drm_simple_display_pipe** %10, align 8
  store %struct.drm_simple_display_pipe_funcs* %2, %struct.drm_simple_display_pipe_funcs** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store %struct.drm_connector* %6, %struct.drm_connector** %15, align 8
  %20 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %10, align 8
  %21 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %20, i32 0, i32 4
  store %struct.drm_encoder* %21, %struct.drm_encoder** %16, align 8
  %22 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %10, align 8
  %23 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %22, i32 0, i32 3
  store %struct.drm_plane* %23, %struct.drm_plane** %17, align 8
  %24 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %10, align 8
  %25 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %24, i32 0, i32 2
  store %struct.drm_crtc* %25, %struct.drm_crtc** %18, align 8
  %26 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %27 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %10, align 8
  %28 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %27, i32 0, i32 1
  store %struct.drm_connector* %26, %struct.drm_connector** %28, align 8
  %29 = load %struct.drm_simple_display_pipe_funcs*, %struct.drm_simple_display_pipe_funcs** %11, align 8
  %30 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %10, align 8
  %31 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %30, i32 0, i32 0
  store %struct.drm_simple_display_pipe_funcs* %29, %struct.drm_simple_display_pipe_funcs** %31, align 8
  %32 = load %struct.drm_plane*, %struct.drm_plane** %17, align 8
  %33 = call i32 @drm_plane_helper_add(%struct.drm_plane* %32, i32* @drm_simple_kms_plane_helper_funcs)
  %34 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %35 = load %struct.drm_plane*, %struct.drm_plane** %17, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %40 = call i32 @drm_universal_plane_init(%struct.drm_device* %34, %struct.drm_plane* %35, i32 0, i32* @drm_simple_kms_plane_funcs, i32* %36, i32 %37, i32* %38, i32 %39, i32* null)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %7
  %44 = load i32, i32* %19, align 4
  store i32 %44, i32* %8, align 4
  br label %76

45:                                               ; preds = %7
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %47 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %46, i32* @drm_simple_kms_crtc_helper_funcs)
  %48 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %50 = load %struct.drm_plane*, %struct.drm_plane** %17, align 8
  %51 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %48, %struct.drm_crtc* %49, %struct.drm_plane* %50, i32* null, i32* @drm_simple_kms_crtc_funcs, i32* null)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %19, align 4
  store i32 %55, i32* %8, align 4
  br label %76

56:                                               ; preds = %45
  %57 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %58 = call i32 @drm_crtc_mask(%struct.drm_crtc* %57)
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %16, align 8
  %60 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %62 = load %struct.drm_encoder*, %struct.drm_encoder** %16, align 8
  %63 = load i32, i32* @DRM_MODE_ENCODER_NONE, align 4
  %64 = call i32 @drm_encoder_init(%struct.drm_device* %61, %struct.drm_encoder* %62, i32* @drm_simple_kms_encoder_funcs, i32 %63, i32* null)
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %69 = icmp ne %struct.drm_connector* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67, %56
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %8, align 4
  br label %76

72:                                               ; preds = %67
  %73 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %74 = load %struct.drm_encoder*, %struct.drm_encoder** %16, align 8
  %75 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %73, %struct.drm_encoder* %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %72, %70, %54, %43
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, i32*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_mask(%struct.drm_crtc*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
