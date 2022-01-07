; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_drv.c_amdgpu_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_drv.c_amdgpu_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.drm_device = type { %struct.pci_dev*, i32 }

@amdgpu_virtual_display = common dso_local global i32 0, align 4
@AMD_ASIC_MASK = common dso_local global i64 0, align 8
@AMD_EXP_HW_SUPPORT = common dso_local global i64 0, align 8
@amdgpu_exp_hw_support = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"This hardware requires experimental hardware support.\0ASee modparam exp_hw_support\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"amdgpudrmfb\00", align 1
@kms_driver = common dso_local global i32 0, align 4
@DRIVER_ATOMIC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"retry init %d\0A\00", align 1
@amdgpu_cik_support = common dso_local global i32 0, align 4
@amdgpu_si_support = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @amdgpu_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @amdgpu_virtual_display, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @AMD_ASIC_MASK, align 8
  %19 = and i64 %17, %18
  %20 = call i64 @amdgpu_device_asic_has_dc_support(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %10, align 4
  br label %23

23:                                               ; preds = %22, %16, %2
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @AMD_EXP_HW_SUPPORT, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, i32* @amdgpu_exp_hw_support, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %106

35:                                               ; preds = %28, %23
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev* %36, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %106

42:                                               ; preds = %35
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call %struct.drm_device* @drm_dev_alloc(i32* @kms_driver, i32* %44)
  store %struct.drm_device* %45, %struct.drm_device** %6, align 8
  %46 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %47 = call i64 @IS_ERR(%struct.drm_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %51 = call i32 @PTR_ERR(%struct.drm_device* %50)
  store i32 %51, i32* %3, align 4
  br label %106

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @DRIVER_ATOMIC, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %52
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = call i32 @pci_enable_device(%struct.pci_dev* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %102

68:                                               ; preds = %62
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %71 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %70, i32 0, i32 0
  store %struct.pci_dev* %69, %struct.pci_dev** %71, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %74 = call i32 @pci_set_drvdata(%struct.pci_dev* %72, %struct.drm_device* %73)
  br label %75

75:                                               ; preds = %89, %68
  %76 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %77 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %78 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @drm_dev_register(%struct.drm_device* %76, i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %75
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = icmp sle i32 %87, 3
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = call i32 @msleep(i32 5000)
  br label %75

93:                                               ; preds = %85, %75
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %99

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97
  store i32 0, i32* %3, align 4
  br label %106

99:                                               ; preds = %96
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = call i32 @pci_disable_device(%struct.pci_dev* %100)
  br label %102

102:                                              ; preds = %99, %67
  %103 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %104 = call i32 @drm_dev_put(%struct.drm_device* %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %98, %49, %40, %31
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @amdgpu_device_asic_has_dc_support(i64) #1

declare dso_local i32 @DRM_INFO(i8*, ...) #1

declare dso_local i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev*, i32, i8*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
