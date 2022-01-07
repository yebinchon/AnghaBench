; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c___confirm_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c___confirm_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.intel_uc = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_i915_private* }

@.str = private unnamed_addr constant [45 x i8] c"enable_guc=%d (guc:%s submission:%s huc:%s)\0A\00", align 1
@i915_modparams = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Incompatible option enable_guc=%d - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GuC is not supported!\00", align 1
@ENABLE_GUC_LOAD_HUC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"HuC is not supported!\00", align 1
@ENABLE_GUC_SUBMISSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"GuC submission is N/A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"undocumented flag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uc*)* @__confirm_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__confirm_options(%struct.intel_uc* %0) #0 {
  %2 = alloca %struct.intel_uc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_uc* %0, %struct.intel_uc** %2, align 8
  %4 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %5 = call %struct.TYPE_5__* @uc_to_gt(%struct.intel_uc* %4)
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %13 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %14 = call i32 @intel_uc_uses_guc(%struct.intel_uc* %13)
  %15 = call i32 @yesno(i32 %14)
  %16 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %17 = call i32 @intel_uc_uses_guc_submission(%struct.intel_uc* %16)
  %18 = call i32 @yesno(i32 %17)
  %19 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %20 = call i32 @intel_uc_uses_huc(%struct.intel_uc* %19)
  %21 = call i32 @yesno(i32 %20)
  %22 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %97

26:                                               ; preds = %1
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %31 = call i32 @intel_uc_uses_guc(%struct.intel_uc* %30)
  %32 = call i32 @GEM_BUG_ON(i32 %31)
  %33 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %34 = call i32 @intel_uc_uses_guc_submission(%struct.intel_uc* %33)
  %35 = call i32 @GEM_BUG_ON(i32 %34)
  %36 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %37 = call i32 @intel_uc_uses_huc(%struct.intel_uc* %36)
  %38 = call i32 @GEM_BUG_ON(i32 %37)
  br label %97

39:                                               ; preds = %26
  %40 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %41 = call i32 @intel_uc_supports_guc(%struct.intel_uc* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %49 = call i32 @dev_info(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %43, %39
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %52 = load i32, i32* @ENABLE_GUC_LOAD_HUC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %57 = call i32 @intel_uc_supports_huc(%struct.intel_uc* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %65 = call i32 @dev_info(i32 %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %59, %55, %50
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %68 = load i32, i32* @ENABLE_GUC_SUBMISSION, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %73 = call i32 @intel_uc_supports_guc_submission(%struct.intel_uc* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %77 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %81 = call i32 @dev_info(i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %75, %71, %66
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %84 = load i32, i32* @ENABLE_GUC_SUBMISSION, align 4
  %85 = load i32, i32* @ENABLE_GUC_LOAD_HUC, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %83, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %92 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %96 = call i32 @dev_info(i32 %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %97

97:                                               ; preds = %25, %29, %90, %82
  ret void
}

declare dso_local %struct.TYPE_5__* @uc_to_gt(%struct.intel_uc*) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @intel_uc_uses_guc(%struct.intel_uc*) #1

declare dso_local i32 @intel_uc_uses_guc_submission(%struct.intel_uc*) #1

declare dso_local i32 @intel_uc_uses_huc(%struct.intel_uc*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_uc_supports_guc(%struct.intel_uc*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*) #1

declare dso_local i32 @intel_uc_supports_huc(%struct.intel_uc*) #1

declare dso_local i32 @intel_uc_supports_guc_submission(%struct.intel_uc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
