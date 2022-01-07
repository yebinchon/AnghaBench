; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_intel_device_info_subplatform_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_intel_device_info_subplatform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_device_info = type { i32 }
%struct.intel_runtime_info = type { i32* }

@subplatform_ult_ids = common dso_local global i32 0, align 4
@INTEL_SUBPLATFORM_ULT = common dso_local global i32 0, align 4
@subplatform_ulx_ids = common dso_local global i32 0, align 4
@INTEL_SUBPLATFORM_ULX = common dso_local global i32 0, align 4
@subplatform_portf_ids = common dso_local global i32 0, align 4
@INTEL_SUBPLATFORM_PORTF = common dso_local global i32 0, align 4
@INTEL_SUBPLATFORM_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_device_info_subplatform_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_device_info*, align 8
  %4 = alloca %struct.intel_runtime_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = call %struct.intel_device_info* @INTEL_INFO(%struct.drm_i915_private* %9)
  store %struct.intel_device_info* %10, %struct.intel_device_info** %3, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call %struct.intel_runtime_info* @RUNTIME_INFO(%struct.drm_i915_private* %11)
  store %struct.intel_runtime_info* %12, %struct.intel_runtime_info** %4, align 8
  %13 = load %struct.intel_runtime_info*, %struct.intel_runtime_info** %4, align 8
  %14 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %15 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__platform_mask_index(%struct.intel_runtime_info* %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.intel_runtime_info*, %struct.intel_runtime_info** %4, align 8
  %19 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %20 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__platform_mask_bit(%struct.intel_runtime_info* %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = call i32 @INTEL_DEVID(%struct.drm_i915_private* %23)
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call %struct.intel_runtime_info* @RUNTIME_INFO(%struct.drm_i915_private* %27)
  %29 = getelementptr inbounds %struct.intel_runtime_info, %struct.intel_runtime_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %26, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @subplatform_ult_ids, align 4
  %36 = load i32, i32* @subplatform_ult_ids, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i64 @find_devid(i32 %34, i32 %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %1
  %41 = load i32, i32* @INTEL_SUBPLATFORM_ULT, align 4
  %42 = call i32 @BIT(i32 %41)
  store i32 %42, i32* %8, align 4
  br label %78

43:                                               ; preds = %1
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @subplatform_ulx_ids, align 4
  %46 = load i32, i32* @subplatform_ulx_ids, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i64 @find_devid(i32 %44, i32 %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load i32, i32* @INTEL_SUBPLATFORM_ULX, align 4
  %52 = call i32 @BIT(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %54 = call i64 @IS_HASWELL(%struct.drm_i915_private* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %58 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %50
  %61 = load i32, i32* @INTEL_SUBPLATFORM_ULT, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %60, %56
  br label %77

66:                                               ; preds = %43
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @subplatform_portf_ids, align 4
  %69 = load i32, i32* @subplatform_portf_ids, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = call i64 @find_devid(i32 %67, i32 %68, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @INTEL_SUBPLATFORM_PORTF, align 4
  %75 = call i32 @BIT(i32 %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %66
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %40
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @INTEL_SUBPLATFORM_BITS, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = call i32 @GEM_BUG_ON(i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %86 = call %struct.intel_runtime_info* @RUNTIME_INFO(%struct.drm_i915_private* %85)
  %87 = getelementptr inbounds %struct.intel_runtime_info, %struct.intel_runtime_info* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %84
  store i32 %93, i32* %91, align 4
  ret void
}

declare dso_local %struct.intel_device_info* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_runtime_info* @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @__platform_mask_index(%struct.intel_runtime_info*, i32) #1

declare dso_local i32 @__platform_mask_bit(%struct.intel_runtime_info*, i32) #1

declare dso_local i32 @INTEL_DEVID(%struct.drm_i915_private*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @find_devid(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
