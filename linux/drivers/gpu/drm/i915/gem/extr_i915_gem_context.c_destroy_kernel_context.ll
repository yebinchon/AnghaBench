; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_destroy_kernel_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_destroy_kernel_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_gem_context**)* @destroy_kernel_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_kernel_context(%struct.i915_gem_context** %0) #0 {
  %2 = alloca %struct.i915_gem_context**, align 8
  %3 = alloca %struct.i915_gem_context*, align 8
  store %struct.i915_gem_context** %0, %struct.i915_gem_context*** %2, align 8
  %4 = load %struct.i915_gem_context**, %struct.i915_gem_context*** %2, align 8
  %5 = call i32 @fetch_and_zero(%struct.i915_gem_context** %4)
  %6 = call %struct.i915_gem_context* @i915_gem_context_get(i32 %5)
  store %struct.i915_gem_context* %6, %struct.i915_gem_context** %3, align 8
  %7 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %8 = call i32 @i915_gem_context_is_kernel(%struct.i915_gem_context* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @GEM_BUG_ON(i32 %11)
  %13 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %14 = call i32 @context_close(%struct.i915_gem_context* %13)
  %15 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %16 = call i32 @i915_gem_context_free(%struct.i915_gem_context* %15)
  ret void
}

declare dso_local %struct.i915_gem_context* @i915_gem_context_get(i32) #1

declare dso_local i32 @fetch_and_zero(%struct.i915_gem_context**) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_context_is_kernel(%struct.i915_gem_context*) #1

declare dso_local i32 @context_close(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_free(%struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
