; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_display.c_vgdev_output_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_display.c_vgdev_output_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_device = type { i64, %struct.virtio_gpu_output*, %struct.drm_device* }
%struct.virtio_gpu_output = type { i32, %struct.TYPE_4__, %struct.drm_crtc, %struct.drm_encoder, %struct.drm_connector }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.drm_crtc = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_plane = type { i32 }

@XRES_DEF = common dso_local global i32 0, align 4
@YRES_DEF = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@virtio_gpu_crtc_funcs = common dso_local global i32 0, align 4
@virtio_gpu_crtc_helper_funcs = common dso_local global i32 0, align 4
@virtio_gpu_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4
@virtio_gpu_conn_helper_funcs = common dso_local global i32 0, align 4
@virtio_gpu_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_VIRTUAL = common dso_local global i32 0, align 4
@virtio_gpu_enc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_gpu_device*, i32)* @vgdev_output_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgdev_output_init(%struct.virtio_gpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtio_gpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.virtio_gpu_output*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.drm_crtc*, align 8
  %11 = alloca %struct.drm_plane*, align 8
  %12 = alloca %struct.drm_plane*, align 8
  store %struct.virtio_gpu_device* %0, %struct.virtio_gpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %13, i32 0, i32 2
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %4, align 8
  %17 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %16, i32 0, i32 1
  %18 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %18, i64 %20
  store %struct.virtio_gpu_output* %21, %struct.virtio_gpu_output** %7, align 8
  %22 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %23 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %22, i32 0, i32 4
  store %struct.drm_connector* %23, %struct.drm_connector** %8, align 8
  %24 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %25 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %24, i32 0, i32 3
  store %struct.drm_encoder* %25, %struct.drm_encoder** %9, align 8
  %26 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %27 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %26, i32 0, i32 2
  store %struct.drm_crtc* %27, %struct.drm_crtc** %10, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %30 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %2
  %34 = call i8* @cpu_to_le32(i32 1)
  %35 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %36 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load i32, i32* @XRES_DEF, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %41 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i8* %39, i8** %43, align 8
  %44 = load i32, i32* @YRES_DEF, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %47 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  br label %50

50:                                               ; preds = %33, %2
  %51 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %4, align 8
  %52 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call %struct.drm_plane* @virtio_gpu_plane_init(%struct.virtio_gpu_device* %51, i32 %52, i32 %53)
  store %struct.drm_plane* %54, %struct.drm_plane** %11, align 8
  %55 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %56 = call i64 @IS_ERR(%struct.drm_plane* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %60 = call i32 @PTR_ERR(%struct.drm_plane* %59)
  store i32 %60, i32* %3, align 4
  br label %109

61:                                               ; preds = %50
  %62 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %4, align 8
  %63 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call %struct.drm_plane* @virtio_gpu_plane_init(%struct.virtio_gpu_device* %62, i32 %63, i32 %64)
  store %struct.drm_plane* %65, %struct.drm_plane** %12, align 8
  %66 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %67 = call i64 @IS_ERR(%struct.drm_plane* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %71 = call i32 @PTR_ERR(%struct.drm_plane* %70)
  store i32 %71, i32* %3, align 4
  br label %109

72:                                               ; preds = %61
  %73 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %74 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %75 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %76 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %77 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %73, %struct.drm_crtc* %74, %struct.drm_plane* %75, %struct.drm_plane* %76, i32* @virtio_gpu_crtc_funcs, i32* null)
  %78 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %79 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %78, i32* @virtio_gpu_crtc_helper_funcs)
  %80 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %81 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %82 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %83 = call i32 @drm_connector_init(%struct.drm_device* %80, %struct.drm_connector* %81, i32* @virtio_gpu_connector_funcs, i32 %82)
  %84 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %85 = call i32 @drm_connector_helper_add(%struct.drm_connector* %84, i32* @virtio_gpu_conn_helper_funcs)
  %86 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %4, align 8
  %87 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %72
  %91 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %92 = call i32 @drm_connector_attach_edid_property(%struct.drm_connector* %91)
  br label %93

93:                                               ; preds = %90, %72
  %94 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %95 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %96 = load i32, i32* @DRM_MODE_ENCODER_VIRTUAL, align 4
  %97 = call i32 @drm_encoder_init(%struct.drm_device* %94, %struct.drm_encoder* %95, i32* @virtio_gpu_enc_funcs, i32 %96, i32* null)
  %98 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %99 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %98, i32* @virtio_gpu_enc_helper_funcs)
  %100 = load i32, i32* %5, align 4
  %101 = shl i32 1, %100
  %102 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %103 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %105 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %106 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %104, %struct.drm_encoder* %105)
  %107 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %108 = call i32 @drm_connector_register(%struct.drm_connector* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %93, %69, %58
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.drm_plane* @virtio_gpu_plane_init(%struct.virtio_gpu_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, %struct.drm_plane*, %struct.drm_plane*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_edid_property(%struct.drm_connector*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_connector_register(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
