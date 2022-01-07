; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_engines_iter_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_engines_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32 }
%struct.i915_gem_engines_iter = type { i64, %struct.i915_gem_engines* }
%struct.i915_gem_engines = type { i64, %struct.intel_context** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_context* @i915_gem_engines_iter_next(%struct.i915_gem_engines_iter* %0) #0 {
  %2 = alloca %struct.intel_context*, align 8
  %3 = alloca %struct.i915_gem_engines_iter*, align 8
  %4 = alloca %struct.i915_gem_engines*, align 8
  %5 = alloca %struct.intel_context*, align 8
  store %struct.i915_gem_engines_iter* %0, %struct.i915_gem_engines_iter** %3, align 8
  %6 = load %struct.i915_gem_engines_iter*, %struct.i915_gem_engines_iter** %3, align 8
  %7 = getelementptr inbounds %struct.i915_gem_engines_iter, %struct.i915_gem_engines_iter* %6, i32 0, i32 1
  %8 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %7, align 8
  store %struct.i915_gem_engines* %8, %struct.i915_gem_engines** %4, align 8
  br label %9

9:                                                ; preds = %28, %1
  %10 = load %struct.i915_gem_engines_iter*, %struct.i915_gem_engines_iter** %3, align 8
  %11 = getelementptr inbounds %struct.i915_gem_engines_iter, %struct.i915_gem_engines_iter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %4, align 8
  %14 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store %struct.intel_context* null, %struct.intel_context** %2, align 8
  br label %34

18:                                               ; preds = %9
  %19 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %4, align 8
  %20 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %19, i32 0, i32 1
  %21 = load %struct.intel_context**, %struct.intel_context*** %20, align 8
  %22 = load %struct.i915_gem_engines_iter*, %struct.i915_gem_engines_iter** %3, align 8
  %23 = getelementptr inbounds %struct.i915_gem_engines_iter, %struct.i915_gem_engines_iter* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds %struct.intel_context*, %struct.intel_context** %21, i64 %24
  %27 = load %struct.intel_context*, %struct.intel_context** %26, align 8
  store %struct.intel_context* %27, %struct.intel_context** %5, align 8
  br label %28

28:                                               ; preds = %18
  %29 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %30 = icmp ne %struct.intel_context* %29, null
  %31 = xor i1 %30, true
  br i1 %31, label %9, label %32

32:                                               ; preds = %28
  %33 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  store %struct.intel_context* %33, %struct.intel_context** %2, align 8
  br label %34

34:                                               ; preds = %32, %17
  %35 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  ret %struct.intel_context* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
