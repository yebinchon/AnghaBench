; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_display.c_virtio_gpu_conn_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_display.c_virtio_gpu_conn_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.virtio_gpu_output = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@XRES_DEF = common dso_local global i32 0, align 4
@YRES_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"del mode: %dx%d\0A\00", align 1
@MODE_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @virtio_gpu_conn_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_conn_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.virtio_gpu_output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = call %struct.virtio_gpu_output* @drm_connector_to_virtio_gpu_output(%struct.drm_connector* %9)
  store %struct.virtio_gpu_output* %10, %struct.virtio_gpu_output** %6, align 8
  %11 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %6, align 8
  %12 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %6, align 8
  %18 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @MODE_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %82

31:                                               ; preds = %2
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XRES_DEF, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @YRES_DEF, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @MODE_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %82

45:                                               ; preds = %37, %31
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 16
  %57 = icmp sge i32 %54, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 16
  %70 = icmp sge i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @MODE_OK, align 4
  store i32 %72, i32* %3, align 4
  br label %82

73:                                               ; preds = %64, %58, %51, %45
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load i32, i32* @MODE_BAD, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %73, %71, %43, %29
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.virtio_gpu_output* @drm_connector_to_virtio_gpu_output(%struct.drm_connector*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
