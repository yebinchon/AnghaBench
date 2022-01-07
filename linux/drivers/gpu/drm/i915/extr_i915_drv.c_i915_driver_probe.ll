; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.intel_device_info = type { i32 }
%struct.drm_i915_private = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@i915_modparams = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@DRIVER_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Device initialization failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_driver_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.intel_device_info*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %10 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.intel_device_info*
  store %struct.intel_device_info* %12, %struct.intel_device_info** %6, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %15 = call %struct.drm_i915_private* @i915_driver_create(%struct.pci_dev* %13, %struct.pci_device_id* %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %7, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %17 = call i64 @IS_ERR(%struct.drm_i915_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %21 = call i32 @PTR_ERR(%struct.drm_i915_private* %20)
  store i32 %21, i32* %3, align 4
  br label %108

22:                                               ; preds = %2
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @i915_modparams, i32 0, i32 0), align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = load %struct.intel_device_info*, %struct.intel_device_info** %6, align 8
  %27 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* @DRIVER_ATOMIC, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %32
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %25, %22
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i32 @pci_enable_device(%struct.pci_dev* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %101

44:                                               ; preds = %38
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %46 = call i32 @i915_driver_early_probe(%struct.drm_i915_private* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %98

50:                                               ; preds = %44
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  %53 = call i32 @disable_rpm_wakeref_asserts(i32* %52)
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %55 = call i32 @i915_detect_vgpu(%struct.drm_i915_private* %54)
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %57 = call i32 @i915_driver_mmio_probe(%struct.drm_i915_private* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %92

61:                                               ; preds = %50
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %63 = call i32 @i915_driver_hw_probe(%struct.drm_i915_private* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %89

67:                                               ; preds = %61
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %69 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %68, i32 0, i32 1
  %70 = call i32 @i915_driver_modeset_probe(%struct.TYPE_4__* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %82

74:                                               ; preds = %67
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %76 = call i32 @i915_driver_register(%struct.drm_i915_private* %75)
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %78 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %77, i32 0, i32 0
  %79 = call i32 @enable_rpm_wakeref_asserts(i32* %78)
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %81 = call i32 @i915_welcome_messages(%struct.drm_i915_private* %80)
  store i32 0, i32* %3, align 4
  br label %108

82:                                               ; preds = %73
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %84 = call i32 @i915_driver_hw_remove(%struct.drm_i915_private* %83)
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %86 = call i32 @i915_ggtt_driver_release(%struct.drm_i915_private* %85)
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %88 = call i32 @intel_sanitize_gt_powersave(%struct.drm_i915_private* %87)
  br label %89

89:                                               ; preds = %82, %66
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %91 = call i32 @i915_driver_mmio_release(%struct.drm_i915_private* %90)
  br label %92

92:                                               ; preds = %89, %60
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 0
  %95 = call i32 @enable_rpm_wakeref_asserts(i32* %94)
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %97 = call i32 @i915_driver_late_release(%struct.drm_i915_private* %96)
  br label %98

98:                                               ; preds = %92, %49
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = call i32 @pci_disable_device(%struct.pci_dev* %99)
  br label %101

101:                                              ; preds = %98, %43
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @i915_probe_error(%struct.drm_i915_private* %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %106 = call i32 @i915_driver_destroy(%struct.drm_i915_private* %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %101, %74, %19
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.drm_i915_private* @i915_driver_create(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i64 @IS_ERR(%struct.drm_i915_private*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @i915_driver_early_probe(%struct.drm_i915_private*) #1

declare dso_local i32 @disable_rpm_wakeref_asserts(i32*) #1

declare dso_local i32 @i915_detect_vgpu(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_driver_mmio_probe(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_driver_hw_probe(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_driver_modeset_probe(%struct.TYPE_4__*) #1

declare dso_local i32 @i915_driver_register(%struct.drm_i915_private*) #1

declare dso_local i32 @enable_rpm_wakeref_asserts(i32*) #1

declare dso_local i32 @i915_welcome_messages(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_driver_hw_remove(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_ggtt_driver_release(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_sanitize_gt_powersave(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_driver_mmio_release(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_driver_late_release(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @i915_probe_error(%struct.drm_i915_private*, i8*, i32) #1

declare dso_local i32 @i915_driver_destroy(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
