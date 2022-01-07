; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_switcheroo_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_switcheroo_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.drm_device = type { i8* }

@VGA_SWITCHEROO_OFF = common dso_local global i32 0, align 4
@VGA_SWITCHEROO_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"amdgpu: switched on\0A\00", align 1
@DRM_SWITCH_POWER_CHANGING = common dso_local global i8* null, align 8
@DRM_SWITCH_POWER_ON = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"amdgpu: switched off\0A\00", align 1
@DRM_SWITCH_POWER_OFF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @amdgpu_switcheroo_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_switcheroo_set_state(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.drm_device* %7, %struct.drm_device** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %9 = call i64 @amdgpu_device_is_px(%struct.drm_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @VGA_SWITCHEROO_OFF, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %44

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** @DRM_SWITCH_POWER_CHANGING, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = call i32 @amdgpu_device_resume(%struct.drm_device* %25, i32 1, i32 1)
  %27 = load i8*, i8** @DRM_SWITCH_POWER_ON, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = call i32 @drm_kms_helper_poll_enable(%struct.drm_device* %30)
  br label %44

32:                                               ; preds = %16
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = call i32 @drm_kms_helper_poll_disable(%struct.drm_device* %34)
  %36 = load i8*, i8** @DRM_SWITCH_POWER_CHANGING, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = call i32 @amdgpu_device_suspend(%struct.drm_device* %39, i32 1, i32 1)
  %41 = load i8*, i8** @DRM_SWITCH_POWER_OFF, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %15, %32, %20
  ret void
}

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @amdgpu_device_is_px(%struct.drm_device*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @amdgpu_device_resume(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @drm_kms_helper_poll_enable(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_disable(%struct.drm_device*) #1

declare dso_local i32 @amdgpu_device_suspend(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
