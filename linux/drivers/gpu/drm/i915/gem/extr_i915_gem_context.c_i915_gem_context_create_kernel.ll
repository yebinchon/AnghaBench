; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_create_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_create_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_gem_context* @i915_gem_context_create_kernel(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_gem_context*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_gem_context*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = call %struct.i915_gem_context* @i915_gem_create_context(%struct.drm_i915_private* %8, i32 0)
  store %struct.i915_gem_context* %9, %struct.i915_gem_context** %6, align 8
  %10 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %11 = call i64 @IS_ERR(%struct.i915_gem_context* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  store %struct.i915_gem_context* %14, %struct.i915_gem_context** %3, align 8
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %17 = call i32 @i915_gem_context_pin_hw_id(%struct.i915_gem_context* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = call i32 @destroy_kernel_context(%struct.i915_gem_context** %6)
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.i915_gem_context* @ERR_PTR(i32 %22)
  store %struct.i915_gem_context* %23, %struct.i915_gem_context** %3, align 8
  br label %39

24:                                               ; preds = %15
  %25 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %26 = call i32 @i915_gem_context_clear_bannable(%struct.i915_gem_context* %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @I915_USER_PRIORITY(i32 %27)
  %29 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %30 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %33 = call i32 @i915_gem_context_is_kernel(%struct.i915_gem_context* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @GEM_BUG_ON(i32 %36)
  %38 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  store %struct.i915_gem_context* %38, %struct.i915_gem_context** %3, align 8
  br label %39

39:                                               ; preds = %24, %20, %13
  %40 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  ret %struct.i915_gem_context* %40
}

declare dso_local %struct.i915_gem_context* @i915_gem_create_context(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_pin_hw_id(%struct.i915_gem_context*) #1

declare dso_local i32 @destroy_kernel_context(%struct.i915_gem_context**) #1

declare dso_local %struct.i915_gem_context* @ERR_PTR(i32) #1

declare dso_local i32 @i915_gem_context_clear_bannable(%struct.i915_gem_context*) #1

declare dso_local i32 @I915_USER_PRIORITY(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_context_is_kernel(%struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
