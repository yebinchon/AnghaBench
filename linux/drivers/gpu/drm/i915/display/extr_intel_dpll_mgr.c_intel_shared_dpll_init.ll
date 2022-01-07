; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_shared_dpll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_shared_dpll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dpll_mgr = type { %struct.dpll_info* }
%struct.dpll_info = type { i32, i64 }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32, i32, %struct.intel_dpll_mgr*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dpll_info* }

@tgl_pll_mgr = common dso_local global %struct.intel_dpll_mgr zeroinitializer, align 8
@ehl_pll_mgr = common dso_local global %struct.intel_dpll_mgr zeroinitializer, align 8
@icl_pll_mgr = common dso_local global %struct.intel_dpll_mgr zeroinitializer, align 8
@cnl_pll_mgr = common dso_local global %struct.intel_dpll_mgr zeroinitializer, align 8
@skl_pll_mgr = common dso_local global %struct.intel_dpll_mgr zeroinitializer, align 8
@bxt_pll_mgr = common dso_local global %struct.intel_dpll_mgr zeroinitializer, align 8
@hsw_pll_mgr = common dso_local global %struct.intel_dpll_mgr zeroinitializer, align 8
@pch_pll_mgr = common dso_local global %struct.intel_dpll_mgr zeroinitializer, align 8
@I915_NUM_PLLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_shared_dpll_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_dpll_mgr*, align 8
  %5 = alloca %struct.dpll_info*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %7)
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  store %struct.intel_dpll_mgr* null, %struct.intel_dpll_mgr** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = call i32 @INTEL_GEN(%struct.drm_i915_private* %9)
  %11 = icmp sge i32 %10, 12
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.intel_dpll_mgr* @tgl_pll_mgr, %struct.intel_dpll_mgr** %4, align 8
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call i64 @IS_ELKHARTLAKE(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.intel_dpll_mgr* @ehl_pll_mgr, %struct.intel_dpll_mgr** %4, align 8
  br label %58

18:                                               ; preds = %13
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = call i32 @INTEL_GEN(%struct.drm_i915_private* %19)
  %21 = icmp sge i32 %20, 11
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.intel_dpll_mgr* @icl_pll_mgr, %struct.intel_dpll_mgr** %4, align 8
  br label %57

23:                                               ; preds = %18
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.intel_dpll_mgr* @cnl_pll_mgr, %struct.intel_dpll_mgr** %4, align 8
  br label %56

28:                                               ; preds = %23
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store %struct.intel_dpll_mgr* @skl_pll_mgr, %struct.intel_dpll_mgr** %4, align 8
  br label %55

33:                                               ; preds = %28
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store %struct.intel_dpll_mgr* @bxt_pll_mgr, %struct.intel_dpll_mgr** %4, align 8
  br label %54

38:                                               ; preds = %33
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = call i64 @HAS_DDI(%struct.drm_i915_private* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.intel_dpll_mgr* @hsw_pll_mgr, %struct.intel_dpll_mgr** %4, align 8
  br label %53

43:                                               ; preds = %38
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43
  store %struct.intel_dpll_mgr* @pch_pll_mgr, %struct.intel_dpll_mgr** %4, align 8
  br label %52

52:                                               ; preds = %51, %47
  br label %53

53:                                               ; preds = %52, %42
  br label %54

54:                                               ; preds = %53, %37
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55, %27
  br label %57

57:                                               ; preds = %56, %22
  br label %58

58:                                               ; preds = %57, %17
  br label %59

59:                                               ; preds = %58, %12
  %60 = load %struct.intel_dpll_mgr*, %struct.intel_dpll_mgr** %4, align 8
  %61 = icmp ne %struct.intel_dpll_mgr* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %64 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %119

65:                                               ; preds = %59
  %66 = load %struct.intel_dpll_mgr*, %struct.intel_dpll_mgr** %4, align 8
  %67 = getelementptr inbounds %struct.intel_dpll_mgr, %struct.intel_dpll_mgr* %66, i32 0, i32 0
  %68 = load %struct.dpll_info*, %struct.dpll_info** %67, align 8
  store %struct.dpll_info* %68, %struct.dpll_info** %5, align 8
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %99, %65
  %70 = load %struct.dpll_info*, %struct.dpll_info** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %70, i64 %72
  %74 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.dpll_info*, %struct.dpll_info** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %79, i64 %81
  %83 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %78, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @WARN_ON(i32 %86)
  %88 = load %struct.dpll_info*, %struct.dpll_info** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %88, i64 %90
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %93 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store %struct.dpll_info* %91, %struct.dpll_info** %98, align 8
  br label %99

99:                                               ; preds = %77
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %69

102:                                              ; preds = %69
  %103 = load %struct.intel_dpll_mgr*, %struct.intel_dpll_mgr** %4, align 8
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %105 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %104, i32 0, i32 2
  store %struct.intel_dpll_mgr* %103, %struct.intel_dpll_mgr** %105, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %108 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %110 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %109, i32 0, i32 1
  %111 = call i32 @mutex_init(i32* %110)
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %113 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @I915_NUM_PLLS, align 4
  %116 = icmp sgt i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @BUG_ON(i32 %117)
  br label %119

119:                                              ; preds = %102, %62
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
