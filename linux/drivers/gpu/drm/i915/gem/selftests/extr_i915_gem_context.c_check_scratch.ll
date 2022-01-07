; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c_check_scratch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c_check_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_mm_node = type { i64, i64 }

@.str = private unnamed_addr constant [59 x i8] c"Target offset 0x%08x_%08x overlaps with a node in the mm!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gem_context*, i64)* @check_scratch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_scratch(%struct.i915_gem_context* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_gem_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_mm_node*, align 8
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.i915_gem_context*, %struct.i915_gem_context** %4, align 8
  %8 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add i64 %12, 4
  %14 = sub i64 %13, 1
  %15 = call %struct.drm_mm_node* @__drm_mm_interval_first(i32* %10, i64 %11, i64 %14)
  store %struct.drm_mm_node* %15, %struct.drm_mm_node** %6, align 8
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %17 = icmp ne %struct.drm_mm_node* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %20 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %44

25:                                               ; preds = %18
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %28 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %31 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = icmp sge i64 %26, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @GEM_BUG_ON(i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @upper_32_bits(i64 %37)
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @lower_32_bits(i64 %39)
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %25, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.drm_mm_node* @__drm_mm_interval_first(i32*, i64, i64) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
