; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_quirks.c_intel_init_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_quirks.c_intel_init_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_quirk = type { i64, i64, i64, i32 (%struct.drm_i915_private.0*)*, i32* }
%struct.drm_i915_private.0 = type opaque
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i64 }

@intel_quirks = common dso_local global %struct.intel_quirk* null, align 8
@PCI_ANY_ID = common dso_local global i64 0, align 8
@intel_dmi_quirks = common dso_local global %struct.intel_quirk* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_init_quirks(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_quirk*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %63, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.intel_quirk*, %struct.intel_quirk** @intel_quirks, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.intel_quirk* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %10
  %16 = load %struct.intel_quirk*, %struct.intel_quirk** @intel_quirks, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %16, i64 %18
  store %struct.intel_quirk* %19, %struct.intel_quirk** %5, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %24 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %15
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %32 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %37 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI_ANY_ID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %35, %27
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %46 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %51 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCI_ANY_ID, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49, %41
  %56 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %57 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %56, i32 0, i32 3
  %58 = load i32 (%struct.drm_i915_private.0*)*, i32 (%struct.drm_i915_private.0*)** %57, align 8
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %60 = bitcast %struct.drm_i915_private* %59 to %struct.drm_i915_private.0*
  %61 = call i32 %58(%struct.drm_i915_private.0* %60)
  br label %62

62:                                               ; preds = %55, %49, %35, %15
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %10

66:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %93, %66
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.intel_quirk*, %struct.intel_quirk** @intel_dmi_quirks, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.intel_quirk* %69)
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %67
  %73 = load %struct.intel_quirk*, %struct.intel_quirk** @intel_dmi_quirks, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %73, i64 %75
  %77 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @dmi_check_system(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = load %struct.intel_quirk*, %struct.intel_quirk** @intel_dmi_quirks, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %83, i64 %85
  %87 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %86, i32 0, i32 3
  %88 = load i32 (%struct.drm_i915_private.0*)*, i32 (%struct.drm_i915_private.0*)** %87, align 8
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %90 = bitcast %struct.drm_i915_private* %89 to %struct.drm_i915_private.0*
  %91 = call i32 %88(%struct.drm_i915_private.0* %90)
  br label %92

92:                                               ; preds = %82, %72
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %67

96:                                               ; preds = %67
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.intel_quirk*) #1

declare dso_local i64 @dmi_check_system(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
