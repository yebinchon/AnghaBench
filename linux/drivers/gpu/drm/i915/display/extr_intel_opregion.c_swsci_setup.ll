; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_swsci_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_swsci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_opregion }
%struct.intel_opregion = type { i32, i32 }

@SWSCI_GBDA_SUPPORTED_CALLS = common dso_local global i32 0, align 4
@SWSCI_GBDA_REQUESTED_CALLBACKS = common dso_local global i32 0, align 4
@SWSCI_SBCB_SUPPORTED_CALLBACKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"SWSCI BIOS requested (%08x) SBCB callbacks that are not supported (%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"SWSCI GBDA callbacks %08x, SBCB callbacks %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @swsci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swsci_setup(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_opregion*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  store %struct.intel_opregion* %10, %struct.intel_opregion** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %12 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %14 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = load i32, i32* @SWSCI_GBDA_SUPPORTED_CALLS, align 4
  %17 = call i64 @swsci(%struct.drm_i915_private* %15, i32 %16, i32 0, i32* %5)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %24 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = load i32, i32* @SWSCI_GBDA_REQUESTED_CALLBACKS, align 4
  %30 = call i64 @swsci(%struct.drm_i915_private* %28, i32 %29, i32 0, i32* %5)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %35 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = load i32, i32* @SWSCI_SBCB_SUPPORTED_CALLBACKS, align 4
  %41 = call i64 @swsci(%struct.drm_i915_private* %39, i32 %40, i32 0, i32* %5)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 2047
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, -4096
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 4
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %50, 1
  %52 = or i32 %49, %51
  %53 = or i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %43
  %57 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %58 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %56
  br label %76

70:                                               ; preds = %43
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %73 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %69
  br label %77

77:                                               ; preds = %76, %38
  %78 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %79 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %82 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %83)
  ret void
}

declare dso_local i64 @swsci(%struct.drm_i915_private*, i32, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
