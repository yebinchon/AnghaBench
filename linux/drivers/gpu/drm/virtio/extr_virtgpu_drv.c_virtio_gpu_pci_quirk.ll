; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_drv.c_virtio_gpu_pci_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_drv.c_virtio_gpu_pci_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }
%struct.virtio_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pci: %s detected at %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"virtio-vga\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"virtio-gpu-pci\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"virtiodrmfb\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"pci:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.virtio_device*)* @virtio_gpu_pci_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_pci_quirk(%struct.drm_device* %0, %struct.virtio_device* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.virtio_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [20 x i8], align 16
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.virtio_device* %1, %struct.virtio_device** %4, align 8
  %9 = load %struct.virtio_device*, %struct.virtio_device** %4, align 8
  %10 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pci_dev* @to_pci_dev(i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = call i8* @dev_name(i32* %15)
  store i8* %16, i8** %6, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 8
  %21 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @DRM_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  store %struct.pci_dev* %30, %struct.pci_dev** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = call i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev* %36, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %2
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @snprintf(i8* %39, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %44 = call i32 @drm_dev_set_unique(%struct.drm_device* %42, i8* %43)
  ret i32 %44
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @DRM_INFO(i8*, i8*, i8*) #1

declare dso_local i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @drm_dev_set_unique(%struct.drm_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
