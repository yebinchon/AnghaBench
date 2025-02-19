; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_unpin_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_unpin_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { %struct.intel_context* }
%struct.intel_context = type { %struct.intel_timeline* }
%struct.intel_timeline = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_execbuffer*)* @eb_unpin_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eb_unpin_engine(%struct.i915_execbuffer* %0) #0 {
  %2 = alloca %struct.i915_execbuffer*, align 8
  %3 = alloca %struct.intel_context*, align 8
  %4 = alloca %struct.intel_timeline*, align 8
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %2, align 8
  %5 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %2, align 8
  %6 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %5, i32 0, i32 0
  %7 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  store %struct.intel_context* %7, %struct.intel_context** %3, align 8
  %8 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %9 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %8, i32 0, i32 0
  %10 = load %struct.intel_timeline*, %struct.intel_timeline** %9, align 8
  store %struct.intel_timeline* %10, %struct.intel_timeline** %4, align 8
  %11 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %12 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %15 = call i32 @intel_context_exit(%struct.intel_context* %14)
  %16 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %17 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %2, align 8
  %20 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %21 = call i32 @__eb_unpin_context(%struct.i915_execbuffer* %19, %struct.intel_context* %20)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_context_exit(%struct.intel_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__eb_unpin_context(%struct.i915_execbuffer*, %struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
