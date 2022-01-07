; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_drm_resume_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_drm_resume_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to set PCI D0 power state (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Resume prepare failed: %d, continuing anyway\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @i915_drm_resume_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_drm_resume_early(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %7)
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = load i32, i32* @PCI_D0, align 4
  %15 = call i32 @pci_set_power_state(%struct.pci_dev* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %73

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = call i64 @pci_enable_device(%struct.pci_dev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %73

29:                                               ; preds = %22
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = call i32 @pci_set_master(%struct.pci_dev* %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = call i32 @disable_rpm_wakeref_asserts(i32* %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %36 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %40 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %29
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %44 = call i32 @vlv_resume_prepare(%struct.drm_i915_private* %43, i32 0)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 2
  %54 = call i32 @intel_uncore_resume_early(i32* %53)
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 1
  %57 = call i32 @intel_gt_check_and_clear_faults(i32* %56)
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %59 = call i32 @intel_display_power_resume_early(%struct.drm_i915_private* %58)
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = call i32 @intel_sanitize_gt_powersave(%struct.drm_i915_private* %60)
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %63 = call i32 @intel_power_domains_resume(%struct.drm_i915_private* %62)
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %65 = call i32 @i915_rc6_ctx_wa_resume(%struct.drm_i915_private* %64)
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %67 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %66, i32 0, i32 1
  %68 = call i32 @intel_gt_sanitize(i32* %67, i32 1)
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %70 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %69, i32 0, i32 0
  %71 = call i32 @enable_rpm_wakeref_asserts(i32* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %51, %26, %18
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @disable_rpm_wakeref_asserts(i32*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_resume_prepare(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_resume_early(i32*) #1

declare dso_local i32 @intel_gt_check_and_clear_faults(i32*) #1

declare dso_local i32 @intel_display_power_resume_early(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_sanitize_gt_powersave(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_power_domains_resume(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_rc6_ctx_wa_resume(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_sanitize(i32*, i32) #1

declare dso_local i32 @enable_rpm_wakeref_asserts(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
