; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_switcheroo_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_switcheroo_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@PM_EVENT_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"DRM not initialized, aborting switch.\0A\00", align 1
@VGA_SWITCHEROO_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"switched on\0A\00", align 1
@DRM_SWITCH_POWER_CHANGING = common dso_local global i8* null, align 8
@PCI_D0 = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"switched off\0A\00", align 1
@DRM_SWITCH_POWER_OFF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @i915_switcheroo_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_switcheroo_set_state(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.drm_i915_private* @pdev_to_i915(%struct.pci_dev* %7)
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %10 = load i32, i32* @PM_EVENT_SUSPEND, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = icmp ne %struct.drm_i915_private* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %50

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8*, i8** @DRM_SWITCH_POWER_CHANGING, align 8
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* @PCI_D0, align 4
  %29 = call i32 @pci_set_power_state(%struct.pci_dev* %27, i32 %28)
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %31 = call i32 @i915_resume_switcheroo(%struct.drm_i915_private* %30)
  %32 = load i8*, i8** @DRM_SWITCH_POWER_ON, align 8
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  br label %50

36:                                               ; preds = %17
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i8*, i8** @DRM_SWITCH_POWER_CHANGING, align 8
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @i915_suspend_switcheroo(%struct.drm_i915_private* %42, i32 %44)
  %46 = load i8*, i8** @DRM_SWITCH_POWER_OFF, align 8
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  br label %50

50:                                               ; preds = %13, %36, %21
  ret void
}

declare dso_local %struct.drm_i915_private* @pdev_to_i915(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @i915_resume_switcheroo(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_suspend_switcheroo(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
