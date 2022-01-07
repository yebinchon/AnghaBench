; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_drv.c_bochs_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_drv.c_bochs_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.drm_device = type { %struct.pci_dev* }

@.str = private unnamed_addr constant [46 x i8] c"less than 4 MB video memory, ignoring device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"bochsdrmfb\00", align 1
@bochs_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @bochs_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bochs_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i64 @pci_resource_len(%struct.pci_dev* %9, i32 0)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 4194304
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev* %18, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %69

24:                                               ; preds = %17
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = call %struct.drm_device* @drm_dev_alloc(i32* @bochs_driver, i32* %26)
  store %struct.drm_device* %27, %struct.drm_device** %6, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %29 = call i64 @IS_ERR(%struct.drm_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %33 = call i32 @PTR_ERR(%struct.drm_device* %32)
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %24
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_enable_device(%struct.pci_dev* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %65

40:                                               ; preds = %34
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  store %struct.pci_dev* %41, %struct.pci_dev** %43, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %46 = call i32 @pci_set_drvdata(%struct.pci_dev* %44, %struct.drm_device* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %48 = call i32 @bochs_load(%struct.drm_device* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %65

52:                                               ; preds = %40
  %53 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %54 = call i32 @drm_dev_register(%struct.drm_device* %53, i32 0)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %62

58:                                               ; preds = %52
  %59 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %60 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %59, i32 32)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %69

62:                                               ; preds = %57
  %63 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %64 = call i32 @bochs_unload(%struct.drm_device* %63)
  br label %65

65:                                               ; preds = %62, %51, %39
  %66 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %67 = call i32 @drm_dev_put(%struct.drm_device* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %58, %31, %22, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev*, i32, i8*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.drm_device*) #1

declare dso_local i32 @bochs_load(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @bochs_unload(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
