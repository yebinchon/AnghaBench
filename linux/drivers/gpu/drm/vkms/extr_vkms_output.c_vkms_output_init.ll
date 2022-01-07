; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_output.c_vkms_output_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_output.c_vkms_output_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vkms_device = type { %struct.drm_device, %struct.vkms_output }
%struct.drm_device = type { i32 }
%struct.vkms_output = type { %struct.drm_crtc, %struct.drm_encoder, %struct.drm_connector }
%struct.drm_crtc = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.drm_plane = type { i32 }

@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@enable_cursor = common dso_local global i64 0, align 8
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@vkms_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to init connector\0A\00", align 1
@vkms_conn_helper_funcs = common dso_local global i32 0, align 4
@vkms_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_VIRTUAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to init encoder\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to attach connector to encoder\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vkms_output_init(%struct.vkms_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vkms_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vkms_output*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.drm_crtc*, align 8
  %11 = alloca %struct.drm_plane*, align 8
  %12 = alloca %struct.drm_plane*, align 8
  %13 = alloca i32, align 4
  store %struct.vkms_device* %0, %struct.vkms_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.vkms_device*, %struct.vkms_device** %4, align 8
  %15 = getelementptr inbounds %struct.vkms_device, %struct.vkms_device* %14, i32 0, i32 1
  store %struct.vkms_output* %15, %struct.vkms_output** %6, align 8
  %16 = load %struct.vkms_device*, %struct.vkms_device** %4, align 8
  %17 = getelementptr inbounds %struct.vkms_device, %struct.vkms_device* %16, i32 0, i32 0
  store %struct.drm_device* %17, %struct.drm_device** %7, align 8
  %18 = load %struct.vkms_output*, %struct.vkms_output** %6, align 8
  %19 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %18, i32 0, i32 2
  store %struct.drm_connector* %19, %struct.drm_connector** %8, align 8
  %20 = load %struct.vkms_output*, %struct.vkms_output** %6, align 8
  %21 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %20, i32 0, i32 1
  store %struct.drm_encoder* %21, %struct.drm_encoder** %9, align 8
  %22 = load %struct.vkms_output*, %struct.vkms_output** %6, align 8
  %23 = getelementptr inbounds %struct.vkms_output, %struct.vkms_output* %22, i32 0, i32 0
  store %struct.drm_crtc* %23, %struct.drm_crtc** %10, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %12, align 8
  %24 = load %struct.vkms_device*, %struct.vkms_device** %4, align 8
  %25 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.drm_plane* @vkms_plane_init(%struct.vkms_device* %24, i32 %25, i32 %26)
  store %struct.drm_plane* %27, %struct.drm_plane** %11, align 8
  %28 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %29 = call i64 @IS_ERR(%struct.drm_plane* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %33 = call i32 @PTR_ERR(%struct.drm_plane* %32)
  store i32 %33, i32* %3, align 4
  br label %111

34:                                               ; preds = %2
  %35 = load i64, i64* @enable_cursor, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.vkms_device*, %struct.vkms_device** %4, align 8
  %39 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.drm_plane* @vkms_plane_init(%struct.vkms_device* %38, i32 %39, i32 %40)
  store %struct.drm_plane* %41, %struct.drm_plane** %12, align 8
  %42 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %43 = call i64 @IS_ERR(%struct.drm_plane* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %47 = call i32 @PTR_ERR(%struct.drm_plane* %46)
  store i32 %47, i32* %13, align 4
  br label %107

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %34
  %50 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %52 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %53 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %54 = call i32 @vkms_crtc_init(%struct.drm_device* %50, %struct.drm_crtc* %51, %struct.drm_plane* %52, %struct.drm_plane* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %100

58:                                               ; preds = %49
  %59 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %60 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %61 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %62 = call i32 @drm_connector_init(%struct.drm_device* %59, %struct.drm_connector* %60, i32* @vkms_connector_funcs, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %97

67:                                               ; preds = %58
  %68 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %69 = call i32 @drm_connector_helper_add(%struct.drm_connector* %68, i32* @vkms_conn_helper_funcs)
  %70 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %71 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %72 = load i32, i32* @DRM_MODE_ENCODER_VIRTUAL, align 4
  %73 = call i32 @drm_encoder_init(%struct.drm_device* %70, %struct.drm_encoder* %71, i32* @vkms_encoder_funcs, i32 %72, i32* null)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %94

78:                                               ; preds = %67
  %79 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %80 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %82 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %83 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %81, %struct.drm_encoder* %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %91

88:                                               ; preds = %78
  %89 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %90 = call i32 @drm_mode_config_reset(%struct.drm_device* %89)
  store i32 0, i32* %3, align 4
  br label %111

91:                                               ; preds = %86
  %92 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %93 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %92)
  br label %94

94:                                               ; preds = %91, %76
  %95 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %96 = call i32 @drm_connector_cleanup(%struct.drm_connector* %95)
  br label %97

97:                                               ; preds = %94, %65
  %98 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %99 = call i32 @drm_crtc_cleanup(%struct.drm_crtc* %98)
  br label %100

100:                                              ; preds = %97, %57
  %101 = load i64, i64* @enable_cursor, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %105 = call i32 @drm_plane_cleanup(%struct.drm_plane* %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %45
  %108 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %109 = call i32 @drm_plane_cleanup(%struct.drm_plane* %108)
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %88, %31
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.drm_plane* @vkms_plane_init(%struct.vkms_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane*) #1

declare dso_local i32 @vkms_crtc_init(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, %struct.drm_plane*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @drm_crtc_cleanup(%struct.drm_crtc*) #1

declare dso_local i32 @drm_plane_cleanup(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
