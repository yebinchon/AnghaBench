; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_get_sseu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_get_sseu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32 }
%struct.drm_i915_gem_context_param = type { i32, i32 }
%struct.drm_i915_gem_context_param_sseu = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.intel_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX = common dso_local global i32 0, align 4
@LOOKUP_USER_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gem_context*, %struct.drm_i915_gem_context_param*)* @get_sseu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sseu(%struct.i915_gem_context* %0, %struct.drm_i915_gem_context_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca %struct.drm_i915_gem_context_param*, align 8
  %6 = alloca %struct.drm_i915_gem_context_param_sseu, align 8
  %7 = alloca %struct.intel_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %4, align 8
  store %struct.drm_i915_gem_context_param* %1, %struct.drm_i915_gem_context_param** %5, align 8
  %10 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %5, align 8
  %11 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %117

15:                                               ; preds = %2
  %16 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %5, align 8
  %17 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 32
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %120

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %5, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @u64_to_user_ptr(i32 %28)
  %30 = call i64 @copy_from_user(%struct.drm_i915_gem_context_param_sseu* %6, i32 %29, i32 32)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %120

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %6, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %120

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %120

52:                                               ; preds = %42
  store i64 0, i64* %8, align 8
  %53 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i64, i64* @LOOKUP_USER_INDEX, align 8
  %60 = load i64, i64* %8, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %6, i32 0, i32 5
  %66 = call %struct.intel_context* @lookup_user_engine(%struct.i915_gem_context* %63, i64 %64, i32* %65)
  store %struct.intel_context* %66, %struct.intel_context** %7, align 8
  %67 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %68 = call i64 @IS_ERR(%struct.intel_context* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %72 = call i32 @PTR_ERR(%struct.intel_context* %71)
  store i32 %72, i32* %3, align 4
  br label %120

73:                                               ; preds = %62
  %74 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %75 = call i32 @intel_context_lock_pinned(%struct.intel_context* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %80 = call i32 @intel_context_put(%struct.intel_context* %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %120

82:                                               ; preds = %73
  %83 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %84 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %6, i32 0, i32 4
  store i32 %86, i32* %87, align 8
  %88 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %89 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %6, i32 0, i32 3
  store i32 %91, i32* %92, align 4
  %93 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %94 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %6, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %99 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %6, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %104 = call i32 @intel_context_unlock_pinned(%struct.intel_context* %103)
  %105 = load %struct.intel_context*, %struct.intel_context** %7, align 8
  %106 = call i32 @intel_context_put(%struct.intel_context* %105)
  %107 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %5, align 8
  %108 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @u64_to_user_ptr(i32 %109)
  %111 = call i64 @copy_to_user(i32 %110, %struct.drm_i915_gem_context_param_sseu* %6, i32 32)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %82
  %114 = load i32, i32* @EFAULT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %120

116:                                              ; preds = %82
  br label %117

117:                                              ; preds = %116, %14
  %118 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %5, align 8
  %119 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %118, i32 0, i32 0
  store i32 32, i32* %119, align 4
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %113, %78, %70, %49, %39, %32, %21
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @copy_from_user(%struct.drm_i915_gem_context_param_sseu*, i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local %struct.intel_context* @lookup_user_engine(%struct.i915_gem_context*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.intel_context*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_context*) #1

declare dso_local i32 @intel_context_lock_pinned(%struct.intel_context*) #1

declare dso_local i32 @intel_context_put(%struct.intel_context*) #1

declare dso_local i32 @intel_context_unlock_pinned(%struct.intel_context*) #1

declare dso_local i64 @copy_to_user(i32, %struct.drm_i915_gem_context_param_sseu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
