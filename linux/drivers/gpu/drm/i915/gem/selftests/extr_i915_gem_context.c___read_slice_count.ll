; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c___read_slice_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c___read_slice_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.igt_spinner = type { i32 }
%struct.i915_request = type { i32 }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@I915_MAP_WB = common dso_local global i32 0, align 4
@GEN11_RPCS_S_CNT_MASK = common dso_local global i32 0, align 4
@GEN11_RPCS_S_CNT_SHIFT = common dso_local global i32 0, align 4
@GEN8_RPCS_S_CNT_MASK = common dso_local global i32 0, align 4
@GEN8_RPCS_S_CNT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_context*, %struct.drm_i915_gem_object*, %struct.igt_spinner*, i32*)* @__read_slice_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__read_slice_count(%struct.intel_context* %0, %struct.drm_i915_gem_object* %1, %struct.igt_spinner* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_context*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca %struct.igt_spinner*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i915_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.intel_context* %0, %struct.intel_context** %6, align 8
  store %struct.drm_i915_gem_object* %1, %struct.drm_i915_gem_object** %7, align 8
  store %struct.igt_spinner* %2, %struct.igt_spinner** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.i915_request* null, %struct.i915_request** %10, align 8
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %18 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %19 = call i64 @emit_rpcs_query(%struct.drm_i915_gem_object* %17, %struct.intel_context* %18, %struct.i915_request** %10)
  store i64 %19, i64* %16, align 8
  %20 = load i64, i64* %16, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* %16, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %81

25:                                               ; preds = %4
  %26 = load %struct.igt_spinner*, %struct.igt_spinner** %8, align 8
  %27 = icmp ne %struct.igt_spinner* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.igt_spinner*, %struct.igt_spinner** %8, align 8
  %30 = call i32 @igt_spinner_end(%struct.igt_spinner* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %33 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %34 = call i64 @i915_request_wait(%struct.i915_request* %32, i32 0, i32 %33)
  store i64 %34, i64* %16, align 8
  %35 = load %struct.i915_request*, %struct.i915_request** %10, align 8
  %36 = call i32 @i915_request_put(%struct.i915_request* %35)
  %37 = load i64, i64* %16, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i64, i64* %16, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %81

42:                                               ; preds = %31
  %43 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %44 = load i32, i32* @I915_MAP_WB, align 4
  %45 = call i32* @i915_gem_object_pin_map(%struct.drm_i915_gem_object* %43, i32 %44)
  store i32* %45, i32** %14, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i64 @IS_ERR(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32*, i32** %14, align 8
  %51 = call i64 @PTR_ERR(i32* %50)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %81

54:                                               ; preds = %42
  %55 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %56 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @INTEL_GEN(i32 %59)
  %61 = icmp sge i32 %60, 11
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @GEN11_RPCS_S_CNT_MASK, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @GEN11_RPCS_S_CNT_SHIFT, align 4
  store i32 %64, i32* %12, align 4
  br label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @GEN8_RPCS_S_CNT_MASK, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* @GEN8_RPCS_S_CNT_SHIFT, align 4
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* %12, align 4
  %75 = lshr i32 %73, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %79 = call i32 @i915_gem_object_unpin_map(%struct.drm_i915_gem_object* %78)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %68, %49, %39, %22
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @emit_rpcs_query(%struct.drm_i915_gem_object*, %struct.intel_context*, %struct.i915_request**) #1

declare dso_local i32 @igt_spinner_end(%struct.igt_spinner*) #1

declare dso_local i64 @i915_request_wait(%struct.i915_request*, i32, i32) #1

declare dso_local i32 @i915_request_put(%struct.i915_request*) #1

declare dso_local i32* @i915_gem_object_pin_map(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i64 @PTR_ERR(i32*) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @i915_gem_object_unpin_map(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
