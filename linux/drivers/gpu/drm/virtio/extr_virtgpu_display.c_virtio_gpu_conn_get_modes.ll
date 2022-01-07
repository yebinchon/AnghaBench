; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_display.c_virtio_gpu_conn_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_display.c_virtio_gpu_conn_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.virtio_gpu_output = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_display_mode = type { i32 }

@XRES_MAX = common dso_local global i32 0, align 4
@YRES_MAX = common dso_local global i32 0, align 4
@XRES_DEF = common dso_local global i32 0, align 4
@YRES_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"add mode: %dx%d\0A\00", align 1
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @virtio_gpu_conn_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_conn_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.virtio_gpu_output*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.virtio_gpu_output* @drm_connector_to_virtio_gpu_output(%struct.drm_connector* %9)
  store %struct.virtio_gpu_output* %10, %struct.virtio_gpu_output** %4, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  %11 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %4, align 8
  %12 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %4, align 8
  %18 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @drm_add_edid_modes(%struct.drm_connector* %16, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %77

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %4, align 8
  %28 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %4, align 8
  %34 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %40 = load i32, i32* @XRES_MAX, align 4
  %41 = load i32, i32* @YRES_MAX, align 4
  %42 = call i32 @drm_add_modes_noedid(%struct.drm_connector* %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %26
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45, %26
  %49 = load i32, i32* @XRES_DEF, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @YRES_DEF, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %52 = load i32, i32* @XRES_DEF, align 4
  %53 = load i32, i32* @YRES_DEF, align 4
  %54 = call i32 @drm_set_preferred_mode(%struct.drm_connector* %51, i32 %52, i32 %53)
  br label %75

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.drm_display_mode* @drm_cvt_mode(i32 %61, i32 %62, i32 %63, i32 60, i32 0, i32 0, i32 0)
  store %struct.drm_display_mode* %64, %struct.drm_display_mode** %5, align 8
  %65 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %72 = call i32 @drm_mode_probed_add(%struct.drm_connector* %70, %struct.drm_display_mode* %71)
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %55, %48
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %23
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.virtio_gpu_output* @drm_connector_to_virtio_gpu_output(%struct.drm_connector*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @drm_add_modes_noedid(%struct.drm_connector*, i32, i32) #1

declare dso_local i32 @drm_set_preferred_mode(%struct.drm_connector*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
