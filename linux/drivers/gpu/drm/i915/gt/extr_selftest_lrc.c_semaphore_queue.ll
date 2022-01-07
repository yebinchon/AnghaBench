; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_lrc.c_semaphore_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_lrc.c_semaphore_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.intel_engine_cs = type { i32 }
%struct.i915_vma = type { i32 }
%struct.i915_gem_context = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_request* (%struct.intel_engine_cs*, %struct.i915_vma*, i32)* @semaphore_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_request* @semaphore_queue(%struct.intel_engine_cs* %0, %struct.i915_vma* %1, i32 %2) #0 {
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i915_gem_context*, align 8
  %9 = alloca %struct.i915_request*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %5, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %12 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.i915_gem_context* @kernel_context(i32 %13)
  store %struct.i915_gem_context* %14, %struct.i915_gem_context** %8, align 8
  %15 = load %struct.i915_gem_context*, %struct.i915_gem_context** %8, align 8
  %16 = icmp ne %struct.i915_gem_context* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.i915_request* @ERR_PTR(i32 %19)
  store %struct.i915_request* %20, %struct.i915_request** %4, align 8
  br label %46

21:                                               ; preds = %3
  %22 = load %struct.i915_gem_context*, %struct.i915_gem_context** %8, align 8
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %24 = call %struct.i915_request* @igt_request_alloc(%struct.i915_gem_context* %22, %struct.intel_engine_cs* %23)
  store %struct.i915_request* %24, %struct.i915_request** %9, align 8
  %25 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %26 = call i64 @IS_ERR(%struct.i915_request* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %42

29:                                               ; preds = %21
  %30 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %31 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @emit_semaphore_chain(%struct.i915_request* %30, %struct.i915_vma* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %35 = call i32 @i915_request_add(%struct.i915_request* %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %10, align 4
  %40 = call %struct.i915_request* @ERR_PTR(i32 %39)
  store %struct.i915_request* %40, %struct.i915_request** %9, align 8
  br label %41

41:                                               ; preds = %38, %29
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.i915_gem_context*, %struct.i915_gem_context** %8, align 8
  %44 = call i32 @kernel_context_close(%struct.i915_gem_context* %43)
  %45 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  store %struct.i915_request* %45, %struct.i915_request** %4, align 8
  br label %46

46:                                               ; preds = %42, %17
  %47 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  ret %struct.i915_request* %47
}

declare dso_local %struct.i915_gem_context* @kernel_context(i32) #1

declare dso_local %struct.i915_request* @ERR_PTR(i32) #1

declare dso_local %struct.i915_request* @igt_request_alloc(%struct.i915_gem_context*, %struct.intel_engine_cs*) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @emit_semaphore_chain(%struct.i915_request*, %struct.i915_vma*, i32) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

declare dso_local i32 @kernel_context_close(%struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
