; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_drv.c_virtio_gpu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_drv.c_virtio_gpu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.drm_device*, %struct.TYPE_6__ }
%struct.drm_device = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@virtio_gpu_modeset = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @virtio_gpu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_probe(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %6 = call i64 (...) @vgacon_text_force()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @virtio_gpu_modeset, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %73

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @virtio_gpu_modeset, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %73

20:                                               ; preds = %14
  %21 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %22 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %21, i32 0, i32 1
  %23 = call %struct.drm_device* @drm_dev_alloc(i32* @driver, %struct.TYPE_6__* %22)
  store %struct.drm_device* %23, %struct.drm_device** %4, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = call i64 @IS_ERR(%struct.drm_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = call i32 @PTR_ERR(%struct.drm_device* %28)
  store i32 %29, i32* %2, align 4
  br label %73

30:                                               ; preds = %20
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %33 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %32, i32 0, i32 0
  store %struct.drm_device* %31, %struct.drm_device** %33, align 8
  %34 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %35 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcmp(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %30
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %47 = call i32 @virtio_gpu_pci_quirk(%struct.drm_device* %45, %struct.virtio_device* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %69

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %54 = call i32 @virtio_gpu_init(%struct.drm_device* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %69

58:                                               ; preds = %52
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = call i32 @drm_dev_register(%struct.drm_device* %59, i32 0)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %69

64:                                               ; preds = %58
  %65 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %66 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %65, i32 0, i32 0
  %67 = load %struct.drm_device*, %struct.drm_device** %66, align 8
  %68 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %67, i32 32)
  store i32 0, i32* %2, align 4
  br label %73

69:                                               ; preds = %63, %57, %50
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = call i32 @drm_dev_put(%struct.drm_device* %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %64, %27, %17, %11
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @vgacon_text_force(...) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @virtio_gpu_pci_quirk(%struct.drm_device*, %struct.virtio_device*) #1

declare dso_local i32 @virtio_gpu_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
