; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_create_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_create_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32 }
%struct.drm_i915_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i915_ppgtt = type { i32 }
%struct.intel_timeline = type { i32 }

@I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PPGTT setup failed (%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_gem_context* (%struct.drm_i915_private*, i32)* @i915_gem_create_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_gem_context* @i915_gem_create_context(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_gem_context*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_gem_context*, align 8
  %7 = alloca %struct.i915_ppgtt*, align 8
  %8 = alloca %struct.intel_timeline*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %19 = call i32 @HAS_EXECLISTS(%struct.drm_i915_private* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.intel_timeline* @ERR_PTR(i32 %23)
  %25 = bitcast %struct.intel_timeline* %24 to %struct.i915_gem_context*
  store %struct.i915_gem_context* %25, %struct.i915_gem_context** %3, align 8
  br label %102

26:                                               ; preds = %17, %2
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %28 = call i32 @contexts_free_first(%struct.drm_i915_private* %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = call %struct.intel_timeline* @__create_context(%struct.drm_i915_private* %29)
  %31 = bitcast %struct.intel_timeline* %30 to %struct.i915_gem_context*
  store %struct.i915_gem_context* %31, %struct.i915_gem_context** %6, align 8
  %32 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %33 = bitcast %struct.i915_gem_context* %32 to %struct.intel_timeline*
  %34 = call i64 @IS_ERR(%struct.intel_timeline* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  store %struct.i915_gem_context* %37, %struct.i915_gem_context** %3, align 8
  br label %102

38:                                               ; preds = %26
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %40 = call i64 @HAS_FULL_PPGTT(%struct.drm_i915_private* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %44 = call %struct.intel_timeline* @i915_ppgtt_create(%struct.drm_i915_private* %43)
  %45 = bitcast %struct.intel_timeline* %44 to %struct.i915_ppgtt*
  store %struct.i915_ppgtt* %45, %struct.i915_ppgtt** %7, align 8
  %46 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %7, align 8
  %47 = bitcast %struct.i915_ppgtt* %46 to %struct.intel_timeline*
  %48 = call i64 @IS_ERR(%struct.intel_timeline* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %7, align 8
  %52 = bitcast %struct.i915_ppgtt* %51 to %struct.intel_timeline*
  %53 = call i32 @PTR_ERR(%struct.intel_timeline* %52)
  %54 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %56 = bitcast %struct.i915_gem_context* %55 to %struct.intel_timeline*
  %57 = call i32 @context_close(%struct.intel_timeline* %56)
  %58 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %7, align 8
  %59 = bitcast %struct.i915_ppgtt* %58 to %struct.intel_timeline*
  %60 = call %struct.intel_timeline* @ERR_CAST(%struct.intel_timeline* %59)
  %61 = bitcast %struct.intel_timeline* %60 to %struct.i915_gem_context*
  store %struct.i915_gem_context* %61, %struct.i915_gem_context** %3, align 8
  br label %102

62:                                               ; preds = %42
  %63 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %64 = bitcast %struct.i915_gem_context* %63 to %struct.intel_timeline*
  %65 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %7, align 8
  %66 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %65, i32 0, i32 0
  %67 = call i32 @__assign_ppgtt(%struct.intel_timeline* %64, i32* %66)
  %68 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %7, align 8
  %69 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %68, i32 0, i32 0
  %70 = call i32 @i915_vm_put(i32* %69)
  br label %71

71:                                               ; preds = %62, %38
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %71
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %78 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %77, i32 0, i32 0
  %79 = call %struct.intel_timeline* @intel_timeline_create(i32* %78, i32* null)
  store %struct.intel_timeline* %79, %struct.intel_timeline** %8, align 8
  %80 = load %struct.intel_timeline*, %struct.intel_timeline** %8, align 8
  %81 = call i64 @IS_ERR(%struct.intel_timeline* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %85 = bitcast %struct.i915_gem_context* %84 to %struct.intel_timeline*
  %86 = call i32 @context_close(%struct.intel_timeline* %85)
  %87 = load %struct.intel_timeline*, %struct.intel_timeline** %8, align 8
  %88 = call %struct.intel_timeline* @ERR_CAST(%struct.intel_timeline* %87)
  %89 = bitcast %struct.intel_timeline* %88 to %struct.i915_gem_context*
  store %struct.i915_gem_context* %89, %struct.i915_gem_context** %3, align 8
  br label %102

90:                                               ; preds = %76
  %91 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %92 = bitcast %struct.i915_gem_context* %91 to %struct.intel_timeline*
  %93 = load %struct.intel_timeline*, %struct.intel_timeline** %8, align 8
  %94 = call i32 @__assign_timeline(%struct.intel_timeline* %92, %struct.intel_timeline* %93)
  %95 = load %struct.intel_timeline*, %struct.intel_timeline** %8, align 8
  %96 = call i32 @intel_timeline_put(%struct.intel_timeline* %95)
  br label %97

97:                                               ; preds = %90, %71
  %98 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %99 = bitcast %struct.i915_gem_context* %98 to %struct.intel_timeline*
  %100 = call i32 @trace_i915_context_create(%struct.intel_timeline* %99)
  %101 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  store %struct.i915_gem_context* %101, %struct.i915_gem_context** %3, align 8
  br label %102

102:                                              ; preds = %97, %83, %50, %36, %21
  %103 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  ret %struct.i915_gem_context* %103
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @HAS_EXECLISTS(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_timeline* @ERR_PTR(i32) #1

declare dso_local i32 @contexts_free_first(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_timeline* @__create_context(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_ERR(%struct.intel_timeline*) #1

declare dso_local i64 @HAS_FULL_PPGTT(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_timeline* @i915_ppgtt_create(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.intel_timeline*) #1

declare dso_local i32 @context_close(%struct.intel_timeline*) #1

declare dso_local %struct.intel_timeline* @ERR_CAST(%struct.intel_timeline*) #1

declare dso_local i32 @__assign_ppgtt(%struct.intel_timeline*, i32*) #1

declare dso_local i32 @i915_vm_put(i32*) #1

declare dso_local %struct.intel_timeline* @intel_timeline_create(i32*, i32*) #1

declare dso_local i32 @__assign_timeline(%struct.intel_timeline*, %struct.intel_timeline*) #1

declare dso_local i32 @intel_timeline_put(%struct.intel_timeline*) #1

declare dso_local i32 @trace_i915_context_create(%struct.intel_timeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
