; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pch.c_intel_detect_pch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pch.c_intel_detect_pch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i16 }
%struct.pci_dev = type { i64, i16, i32, i32 }

@PCI_CLASS_BRIDGE_ISA = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@INTEL_PCH_DEVICE_ID_MASK = common dso_local global i16 0, align 2
@PCH_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Display disabled, reverting to NOP PCH\0A\00", align 1
@PCH_NOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"No PCH found.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_detect_pch(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %6

6:                                                ; preds = %78, %18, %1
  %7 = load i32, i32* @PCI_CLASS_BRIDGE_ISA, align 4
  %8 = shl i32 %7, 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call %struct.pci_dev* @pci_get_class(i32 %8, %struct.pci_dev* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %12, label %79

12:                                               ; preds = %6
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %6

19:                                               ; preds = %12
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* @INTEL_PCH_DEVICE_ID_MASK, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %23, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %4, align 2
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = load i16, i16* %4, align 2
  %30 = call i32 @intel_pch_type(%struct.drm_i915_private* %28, i16 zeroext %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PCH_NONE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i16, i16* %4, align 2
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 1
  store i16 %38, i16* %40, align 4
  br label %79

41:                                               ; preds = %19
  %42 = load i16, i16* %4, align 2
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @intel_is_virt_pch(i16 zeroext %42, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %41
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %53 = call zeroext i16 @intel_virt_detect_pch(%struct.drm_i915_private* %52)
  store i16 %53, i16* %4, align 2
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %55 = load i16, i16* %4, align 2
  %56 = call i32 @intel_pch_type(%struct.drm_i915_private* %54, i16 zeroext %55)
  store i32 %56, i32* %5, align 4
  %57 = load i16, i16* %4, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @PCH_NONE, align 4
  %63 = icmp eq i32 %61, %62
  br label %64

64:                                               ; preds = %60, %51
  %65 = phi i1 [ false, %51 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 @WARN_ON(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i16 0, i16* %4, align 2
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %73 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i16, i16* %4, align 2
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 1
  store i16 %74, i16* %76, align 4
  br label %79

77:                                               ; preds = %41
  br label %78

78:                                               ; preds = %77
  br label %6

79:                                               ; preds = %70, %34, %6
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = icmp ne %struct.pci_dev* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %84 = call i32 @HAS_DISPLAY(%struct.drm_i915_private* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @PCH_NOP, align 4
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %90 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %92 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %91, i32 0, i32 1
  store i16 0, i16* %92, align 4
  br label %93

93:                                               ; preds = %86, %82, %79
  %94 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %95 = icmp ne %struct.pci_dev* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %93
  %99 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %100 = call i32 @pci_dev_put(%struct.pci_dev* %99)
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_class(i32, %struct.pci_dev*) #1

declare dso_local i32 @intel_pch_type(%struct.drm_i915_private*, i16 zeroext) #1

declare dso_local i64 @intel_is_virt_pch(i16 zeroext, i32, i32) #1

declare dso_local zeroext i16 @intel_virt_detect_pch(%struct.drm_i915_private*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @HAS_DISPLAY(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
