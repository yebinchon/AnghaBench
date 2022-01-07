; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_drv.c_qxl_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_drv.c_qxl_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.qxl_device = type { i32 }

@.str = private unnamed_addr constant [85 x i8] c"qxl too old, doesn't support client_monitors_config, use xf86-video-qxl in user mode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"qxl\00", align 1
@VGA_RSRC_LEGACY_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"can't get legacy vga ioports\0A\00", align 1
@qxl_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @qxl_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.qxl_device*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %101

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.qxl_device* @kzalloc(i32 4, i32 %17)
  store %struct.qxl_device* %18, %struct.qxl_device** %6, align 8
  %19 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %20 = icmp ne %struct.qxl_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %101

24:                                               ; preds = %16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @pci_enable_device(%struct.pci_dev* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %97

30:                                               ; preds = %24
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev* %31, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %94

36:                                               ; preds = %30
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i64 @is_vga(%struct.pci_dev* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %43 = call i32 @vga_get_interruptible(%struct.pci_dev* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %94

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %36
  %50 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = call i32 @qxl_device_init(%struct.qxl_device* %50, i32* @qxl_driver, %struct.pci_dev* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %85

56:                                               ; preds = %49
  %57 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %58 = call i32 @qxl_modeset_init(%struct.qxl_device* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %82

62:                                               ; preds = %56
  %63 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %64 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %63, i32 0, i32 0
  %65 = call i32 @drm_kms_helper_poll_init(i32* %64)
  %66 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %67 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %66, i32 0, i32 0
  %68 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %69 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @drm_dev_register(i32* %67, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %79

75:                                               ; preds = %62
  %76 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %77 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %76, i32 0, i32 0
  %78 = call i32 @drm_fbdev_generic_setup(i32* %77, i32 32)
  store i32 0, i32* %3, align 4
  br label %101

79:                                               ; preds = %74
  %80 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %81 = call i32 @qxl_modeset_fini(%struct.qxl_device* %80)
  br label %82

82:                                               ; preds = %79, %61
  %83 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %84 = call i32 @qxl_device_fini(%struct.qxl_device* %83)
  br label %85

85:                                               ; preds = %82, %55
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = call i64 @is_vga(%struct.pci_dev* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %92 = call i32 @vga_put(%struct.pci_dev* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %46, %35
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = call i32 @pci_disable_device(%struct.pci_dev* %95)
  br label %97

97:                                               ; preds = %94, %29
  %98 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %99 = call i32 @kfree(%struct.qxl_device* %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %75, %21, %12
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.qxl_device* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev*, i32, i8*) #1

declare dso_local i64 @is_vga(%struct.pci_dev*) #1

declare dso_local i32 @vga_get_interruptible(%struct.pci_dev*, i32) #1

declare dso_local i32 @qxl_device_init(%struct.qxl_device*, i32*, %struct.pci_dev*) #1

declare dso_local i32 @qxl_modeset_init(%struct.qxl_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(i32*) #1

declare dso_local i32 @drm_dev_register(i32*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(i32*, i32) #1

declare dso_local i32 @qxl_modeset_fini(%struct.qxl_device*) #1

declare dso_local i32 @qxl_device_fini(%struct.qxl_device*) #1

declare dso_local i32 @vga_put(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.qxl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
