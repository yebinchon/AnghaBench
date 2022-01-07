; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_clone_sseu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_clone_sseu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { %struct.i915_gem_engines* }
%struct.i915_gem_engines = type { i64, %struct.intel_context** }
%struct.intel_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gem_context*, %struct.i915_gem_context*)* @clone_sseu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_sseu(%struct.i915_gem_context* %0, %struct.i915_gem_context* %1) #0 {
  %3 = alloca %struct.i915_gem_context*, align 8
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca %struct.i915_gem_engines*, align 8
  %6 = alloca %struct.i915_gem_engines*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_context*, align 8
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %3, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %4, align 8
  %10 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %11 = call %struct.i915_gem_engines* @i915_gem_context_lock_engines(%struct.i915_gem_context* %10)
  store %struct.i915_gem_engines* %11, %struct.i915_gem_engines** %5, align 8
  %12 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %13 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %12, i32 0, i32 0
  %14 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %13, align 8
  store %struct.i915_gem_engines* %14, %struct.i915_gem_engines** %6, align 8
  %15 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %5, align 8
  %16 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %6, align 8
  %19 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %81

25:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %77, %25
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %5, align 8
  %29 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %80

32:                                               ; preds = %26
  %33 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %5, align 8
  %34 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %33, i32 0, i32 1
  %35 = load %struct.intel_context**, %struct.intel_context*** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.intel_context*, %struct.intel_context** %35, i64 %36
  %38 = load %struct.intel_context*, %struct.intel_context** %37, align 8
  store %struct.intel_context* %38, %struct.intel_context** %9, align 8
  %39 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %6, align 8
  %40 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %39, i32 0, i32 1
  %41 = load %struct.intel_context**, %struct.intel_context*** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.intel_context*, %struct.intel_context** %41, i64 %42
  %44 = load %struct.intel_context*, %struct.intel_context** %43, align 8
  %45 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.intel_context*, %struct.intel_context** %9, align 8
  %50 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %48, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %32
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %81

58:                                               ; preds = %32
  %59 = load %struct.intel_context*, %struct.intel_context** %9, align 8
  %60 = call i32 @intel_context_lock_pinned(%struct.intel_context* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %81

64:                                               ; preds = %58
  %65 = load %struct.intel_context*, %struct.intel_context** %9, align 8
  %66 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.i915_gem_engines*, %struct.i915_gem_engines** %6, align 8
  %69 = getelementptr inbounds %struct.i915_gem_engines, %struct.i915_gem_engines* %68, i32 0, i32 1
  %70 = load %struct.intel_context**, %struct.intel_context*** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds %struct.intel_context*, %struct.intel_context** %70, i64 %71
  %73 = load %struct.intel_context*, %struct.intel_context** %72, align 8
  %74 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %73, i32 0, i32 0
  store i32 %67, i32* %74, align 8
  %75 = load %struct.intel_context*, %struct.intel_context** %9, align 8
  %76 = call i32 @intel_context_unlock_pinned(%struct.intel_context* %75)
  br label %77

77:                                               ; preds = %64
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %26

80:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %80, %63, %55, %22
  %82 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %83 = call i32 @i915_gem_context_unlock_engines(%struct.i915_gem_context* %82)
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local %struct.i915_gem_engines* @i915_gem_context_lock_engines(%struct.i915_gem_context*) #1

declare dso_local i32 @intel_context_lock_pinned(%struct.intel_context*) #1

declare dso_local i32 @intel_context_unlock_pinned(%struct.intel_context*) #1

declare dso_local i32 @i915_gem_context_unlock_engines(%struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
