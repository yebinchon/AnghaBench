; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_prune_mmio_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_prune_mmio_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@I915_MAX_VCS = common dso_local global i32 0, align 4
@FW_DOMAIN_ID_MEDIA_VDBOX0 = common dso_local global i32 0, align 4
@I915_MAX_VECS = common dso_local global i32 0, align 4
@FW_DOMAIN_ID_MEDIA_VEBOX0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uncore_prune_mmio_domains(%struct.intel_uncore* %0) #0 {
  %2 = alloca %struct.intel_uncore*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %2, align 8
  %7 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %8 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %7, i32 0, i32 1
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %11 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %14 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i32 @INTEL_GEN(%struct.drm_i915_private* %17)
  %19 = icmp slt i32 %18, 11
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %1
  br label %79

21:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %47, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @I915_MAX_VCS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i32, i32* @FW_DOMAIN_ID_MEDIA_VDBOX0, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @_VCS(i32 %31)
  %33 = call i64 @HAS_ENGINE(%struct.drm_i915_private* %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %47

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @fw_domain_fini(%struct.intel_uncore* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %22

50:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @I915_MAX_VECS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load i32, i32* @FW_DOMAIN_ID_MEDIA_VEBOX0, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @_VECS(i32 %60)
  %62 = call i64 @HAS_ENGINE(%struct.drm_i915_private* %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %76

65:                                               ; preds = %55
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @fw_domain_fini(%struct.intel_uncore* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %65
  br label %76

76:                                               ; preds = %75, %64
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %51

79:                                               ; preds = %20, %51
  ret void
}

declare dso_local i32 @intel_uncore_has_forcewake(%struct.intel_uncore*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_ENGINE(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @_VCS(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fw_domain_fini(%struct.intel_uncore*, i32) #1

declare dso_local i32 @_VECS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
