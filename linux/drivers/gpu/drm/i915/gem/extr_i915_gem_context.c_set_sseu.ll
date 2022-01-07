; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_set_sseu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_set_sseu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_context_param = type { i32, i32 }
%struct.drm_i915_gem_context_param_sseu = type { i32, i32, i64 }
%struct.intel_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.intel_sseu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX = common dso_local global i32 0, align 4
@LOOKUP_USER_INDEX = common dso_local global i64 0, align 8
@RENDER_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gem_context*, %struct.drm_i915_gem_context_param*)* @set_sseu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sseu(%struct.i915_gem_context* %0, %struct.drm_i915_gem_context_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca %struct.drm_i915_gem_context_param*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_i915_gem_context_param_sseu, align 8
  %8 = alloca %struct.intel_context*, align 8
  %9 = alloca %struct.intel_sseu, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %4, align 8
  store %struct.drm_i915_gem_context_param* %1, %struct.drm_i915_gem_context_param** %5, align 8
  %12 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %13 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  %15 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %5, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 16
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %110

23:                                               ; preds = %2
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %25 = call i32 @IS_GEN(%struct.drm_i915_private* %24, i32 11)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %110

30:                                               ; preds = %23
  %31 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %5, align 8
  %32 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @u64_to_user_ptr(i32 %33)
  %35 = call i64 @copy_from_user(%struct.drm_i915_gem_context_param_sseu* %7, i32 %34, i32 16)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %110

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %7, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %110

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %110

57:                                               ; preds = %47
  store i64 0, i64* %10, align 8
  %58 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i64, i64* @LOOKUP_USER_INDEX, align 8
  %65 = load i64, i64* %10, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_context_param_sseu, %struct.drm_i915_gem_context_param_sseu* %7, i32 0, i32 1
  %71 = call %struct.intel_context* @lookup_user_engine(%struct.i915_gem_context* %68, i64 %69, i32* %70)
  store %struct.intel_context* %71, %struct.intel_context** %8, align 8
  %72 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %73 = call i64 @IS_ERR(%struct.intel_context* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %77 = call i32 @PTR_ERR(%struct.intel_context* %76)
  store i32 %77, i32* %3, align 4
  br label %110

78:                                               ; preds = %67
  %79 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %80 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @RENDER_CLASS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %106

89:                                               ; preds = %78
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %91 = call i32 @user_to_context_sseu(%struct.drm_i915_private* %90, %struct.drm_i915_gem_context_param_sseu* %7, %struct.intel_sseu* %9)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %106

95:                                               ; preds = %89
  %96 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %97 = getelementptr inbounds %struct.intel_sseu, %struct.intel_sseu* %9, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @intel_context_reconfigure_sseu(%struct.intel_context* %96, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %106

103:                                              ; preds = %95
  %104 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %5, align 8
  %105 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %104, i32 0, i32 0
  store i32 16, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %102, %94, %86
  %107 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %108 = call i32 @intel_context_put(%struct.intel_context* %107)
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %75, %54, %44, %37, %27, %20
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @copy_from_user(%struct.drm_i915_gem_context_param_sseu*, i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local %struct.intel_context* @lookup_user_engine(%struct.i915_gem_context*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.intel_context*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_context*) #1

declare dso_local i32 @user_to_context_sseu(%struct.drm_i915_private*, %struct.drm_i915_gem_context_param_sseu*, %struct.intel_sseu*) #1

declare dso_local i32 @intel_context_reconfigure_sseu(%struct.intel_context*, i32) #1

declare dso_local i32 @intel_context_put(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
