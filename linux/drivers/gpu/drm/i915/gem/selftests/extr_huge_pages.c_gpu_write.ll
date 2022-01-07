; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_gpu_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_gpu_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32, i32 }
%struct.i915_gem_context = type { i32 }
%struct.intel_engine_cs = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*, %struct.i915_gem_context*, %struct.intel_engine_cs*, i32, i32)* @gpu_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpu_write(%struct.i915_vma* %0, %struct.i915_gem_context* %1, %struct.intel_engine_cs* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i915_vma*, align 8
  %8 = alloca %struct.i915_gem_context*, align 8
  %9 = alloca %struct.intel_engine_cs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %7, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %8, align 8
  store %struct.intel_engine_cs* %2, %struct.intel_engine_cs** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %14 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @i915_gem_object_lock(i32 %15)
  %17 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %18 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @i915_gem_object_set_to_gtt_domain(i32 %19, i32 1)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %22 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @i915_gem_object_unlock(i32 %23)
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %6, align 4
  br label %44

29:                                               ; preds = %5
  %30 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %31 = load %struct.i915_gem_context*, %struct.i915_gem_context** %8, align 8
  %32 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %38 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = ashr i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @igt_gpu_fill_dw(%struct.i915_vma* %30, %struct.i915_gem_context* %31, %struct.intel_engine_cs* %32, i32 %36, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %29, %27
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @i915_gem_object_lock(i32) #1

declare dso_local i32 @i915_gem_object_set_to_gtt_domain(i32, i32) #1

declare dso_local i32 @i915_gem_object_unlock(i32) #1

declare dso_local i32 @igt_gpu_fill_dw(%struct.i915_vma*, %struct.i915_gem_context*, %struct.intel_engine_cs*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
