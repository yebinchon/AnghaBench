; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_display.c_virtio_gpu_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_display.c_virtio_gpu_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32*, i32* }

@virtio_gpu_mode_funcs = common dso_local global i32 0, align 4
@virtio_mode_config_helpers = common dso_local global i32 0, align 4
@XRES_MIN = common dso_local global i32 0, align 4
@YRES_MIN = common dso_local global i32 0, align 4
@XRES_MAX = common dso_local global i32 0, align 4
@YRES_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virtio_gpu_modeset_init(%struct.virtio_gpu_device* %0) #0 {
  %2 = alloca %struct.virtio_gpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.virtio_gpu_device* %0, %struct.virtio_gpu_device** %2, align 8
  %4 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = call i32 @drm_mode_config_init(%struct.TYPE_5__* %6)
  %8 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 6
  store i32* @virtio_gpu_mode_funcs, i32** %17, align 8
  %18 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %2, align 8
  %19 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  store i32* @virtio_mode_config_helpers, i32** %22, align 8
  %23 = load i32, i32* @XRES_MIN, align 4
  %24 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i32 %23, i32* %28, align 8
  %29 = load i32, i32* @YRES_MIN, align 4
  %30 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %2, align 8
  %31 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* @XRES_MAX, align 4
  %36 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %35, i32* %40, align 8
  %41 = load i32, i32* @YRES_MAX, align 4
  %42 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %2, align 8
  %43 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %57, %1
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %2, align 8
  %50 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @vgdev_output_init(%struct.virtio_gpu_device* %54, i32 %55)
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %47

60:                                               ; preds = %47
  %61 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %2, align 8
  %62 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = call i32 @drm_mode_config_reset(%struct.TYPE_5__* %63)
  ret void
}

declare dso_local i32 @drm_mode_config_init(%struct.TYPE_5__*) #1

declare dso_local i32 @vgdev_output_init(%struct.virtio_gpu_device*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
