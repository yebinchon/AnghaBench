; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_context.c_intel_context_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_context.c_intel_context_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32 }
%struct.i915_gem_context = type { i32 }
%struct.intel_engine_cs = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_context* @intel_context_create(%struct.i915_gem_context* %0, %struct.intel_engine_cs* %1) #0 {
  %3 = alloca %struct.intel_context*, align 8
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca %struct.intel_context*, align 8
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %4, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %5, align 8
  %7 = call %struct.intel_context* (...) @intel_context_alloc()
  store %struct.intel_context* %7, %struct.intel_context** %6, align 8
  %8 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %9 = icmp ne %struct.intel_context* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.intel_context* @ERR_PTR(i32 %12)
  store %struct.intel_context* %13, %struct.intel_context** %3, align 8
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %16 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %17 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %18 = call i32 @intel_context_init(%struct.intel_context* %15, %struct.i915_gem_context* %16, %struct.intel_engine_cs* %17)
  %19 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  store %struct.intel_context* %19, %struct.intel_context** %3, align 8
  br label %20

20:                                               ; preds = %14, %10
  %21 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  ret %struct.intel_context* %21
}

declare dso_local %struct.intel_context* @intel_context_alloc(...) #1

declare dso_local %struct.intel_context* @ERR_PTR(i32) #1

declare dso_local i32 @intel_context_init(%struct.intel_context*, %struct.i915_gem_context*, %struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
