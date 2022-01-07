; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_cdv_chip_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_cdv_chip_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, i32 }

@cdv_hotplug_work_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Enabling MSI failed!\0A\00", align 1
@cdv_regmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @cdv_chip_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_chip_setup(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 2
  %6 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  store %struct.drm_psb_private* %6, %struct.drm_psb_private** %3, align 8
  %7 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %7, i32 0, i32 1
  %9 = load i32, i32* @cdv_hotplug_work_func, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @pci_enable_msi(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @cdv_regmap, align 4
  %23 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %24 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = call i32 @gma_get_core_freq(%struct.drm_device* %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = call i32 @psb_intel_opregion_init(%struct.drm_device* %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %30 = call i32 @psb_intel_init_bios(%struct.drm_device* %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %32 = call i32 @cdv_hotplug_enable(%struct.drm_device* %31, i32 0)
  ret i32 0
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @pci_enable_msi(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @gma_get_core_freq(%struct.drm_device*) #1

declare dso_local i32 @psb_intel_opregion_init(%struct.drm_device*) #1

declare dso_local i32 @psb_intel_init_bios(%struct.drm_device*) #1

declare dso_local i32 @cdv_hotplug_enable(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
