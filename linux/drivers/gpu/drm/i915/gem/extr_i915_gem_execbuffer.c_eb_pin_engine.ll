; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_pin_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_pin_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_execbuffer2 = type { i32 }
%struct.intel_context = type { i32 }

@I915_EXEC_RING_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*, %struct.drm_file*, %struct.drm_i915_gem_execbuffer2*)* @eb_pin_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_pin_engine(%struct.i915_execbuffer* %0, %struct.drm_file* %1, %struct.drm_i915_gem_execbuffer2* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_execbuffer*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_i915_gem_execbuffer2*, align 8
  %8 = alloca %struct.intel_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_i915_gem_execbuffer2* %2, %struct.drm_i915_gem_execbuffer2** %7, align 8
  %11 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %12 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @i915_gem_context_user_engines(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %7, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I915_EXEC_RING_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %9, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %24 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %25 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %7, align 8
  %26 = call i32 @eb_select_legacy_ring(%struct.i915_execbuffer* %23, %struct.drm_file* %24, %struct.drm_i915_gem_execbuffer2* %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %29 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.intel_context* @i915_gem_context_get_engine(i32 %30, i32 %31)
  store %struct.intel_context* %32, %struct.intel_context** %8, align 8
  %33 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %34 = call i64 @IS_ERR(%struct.intel_context* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %38 = call i32 @PTR_ERR(%struct.intel_context* %37)
  store i32 %38, i32* %4, align 4
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %41 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %42 = call i32 @__eb_pin_engine(%struct.i915_execbuffer* %40, %struct.intel_context* %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.intel_context*, %struct.intel_context** %8, align 8
  %44 = call i32 @intel_context_put(%struct.intel_context* %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @i915_gem_context_user_engines(i32) #1

declare dso_local i32 @eb_select_legacy_ring(%struct.i915_execbuffer*, %struct.drm_file*, %struct.drm_i915_gem_execbuffer2*) #1

declare dso_local %struct.intel_context* @i915_gem_context_get_engine(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.intel_context*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_context*) #1

declare dso_local i32 @__eb_pin_engine(%struct.i915_execbuffer*, %struct.intel_context*) #1

declare dso_local i32 @intel_context_put(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
