; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_gt_powersave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_gt_powersave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"RC6 disabled, disabling runtime PM support\0A\00", align 1
@GEN6_READ_OC_PARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Overclocking supported, max: %dMHz, overclock: %dMHz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_init_gt_powersave(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_rps*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.intel_rps* %7, %struct.intel_rps** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = call i32 @sanitize_rc6(%struct.drm_i915_private* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = call i32 @DRM_INFO(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @pm_runtime_get(i32* %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = call i32 @i915_rc6_ctx_wa_init(%struct.drm_i915_private* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = call i32 @cherryview_init_gt_powersave(%struct.drm_i915_private* %26)
  br label %44

28:                                               ; preds = %19
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = call i32 @valleyview_init_gt_powersave(%struct.drm_i915_private* %33)
  br label %43

35:                                               ; preds = %28
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %37 = call i32 @INTEL_GEN(%struct.drm_i915_private* %36)
  %38 = icmp sge i32 %37, 6
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %41 = call i32 @gen6_init_rps_frequencies(%struct.drm_i915_private* %40)
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42, %32
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %46 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %49 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %51 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %54 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %56 = call i64 @IS_GEN(%struct.drm_i915_private* %55, i32 6)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %44
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %60 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %64 = call i64 @IS_HASWELL(%struct.drm_i915_private* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %62, %58, %44
  store i32 0, i32* %4, align 4
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %68 = load i32, i32* @GEN6_READ_OC_PARAMS, align 4
  %69 = call i32 @sandybridge_pcode_read(%struct.drm_i915_private* %67, i32 %68, i32* %4, i32* null)
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @BIT(i32 31)
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %66
  %75 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %76 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 255
  %79 = mul nsw i32 %78, 50
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 255
  %82 = mul nsw i32 %81, 50
  %83 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 255
  %86 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %87 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %74, %66
  br label %89

89:                                               ; preds = %88, %62
  %90 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %91 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %94 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %96 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %99 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %101 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %104 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  ret void
}

declare dso_local i32 @sanitize_rc6(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @pm_runtime_get(i32*) #1

declare dso_local i32 @i915_rc6_ctx_wa_init(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @cherryview_init_gt_powersave(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @valleyview_init_gt_powersave(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @gen6_init_rps_frequencies(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @sandybridge_pcode_read(%struct.drm_i915_private*, i32, i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
