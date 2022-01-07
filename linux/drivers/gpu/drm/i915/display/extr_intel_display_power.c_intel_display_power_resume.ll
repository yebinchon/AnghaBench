; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_display_power_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_display_power_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@DC_STATE_EN_UPTO_DC6 = common dso_local global i32 0, align 4
@DC_STATE_EN_UPTO_DC5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_display_power_resume(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i32 @INTEL_GEN(%struct.drm_i915_private* %3)
  %5 = icmp sge i32 %4, 11
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i32 @bxt_disable_dc9(%struct.drm_i915_private* %7)
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = call i32 @icl_display_core_init(%struct.drm_i915_private* %9, i32 1)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %6
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DC_STATE_EN_UPTO_DC6, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = call i32 @skl_enable_dc6(%struct.drm_i915_private* %25)
  br label %39

27:                                               ; preds = %16
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DC_STATE_EN_UPTO_DC5, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %37 = call i32 @gen9_enable_dc5(%struct.drm_i915_private* %36)
  br label %38

38:                                               ; preds = %35, %27
  br label %39

39:                                               ; preds = %38, %24
  br label %40

40:                                               ; preds = %39, %6
  br label %80

41:                                               ; preds = %1
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = call i32 @bxt_disable_dc9(%struct.drm_i915_private* %46)
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = call i32 @bxt_display_core_init(%struct.drm_i915_private* %48, i32 1)
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %45
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DC_STATE_EN_UPTO_DC5, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %65 = call i32 @gen9_enable_dc5(%struct.drm_i915_private* %64)
  br label %66

66:                                               ; preds = %63, %55, %45
  br label %79

67:                                               ; preds = %41
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %69 = call i64 @IS_HASWELL(%struct.drm_i915_private* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %73 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %67
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %77 = call i32 @hsw_disable_pc8(%struct.drm_i915_private* %76)
  br label %78

78:                                               ; preds = %75, %71
  br label %79

79:                                               ; preds = %78, %66
  br label %80

80:                                               ; preds = %79, %40
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_disable_dc9(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_display_core_init(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @skl_enable_dc6(%struct.drm_i915_private*) #1

declare dso_local i32 @gen9_enable_dc5(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_display_core_init(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @hsw_disable_pc8(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
