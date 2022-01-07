; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_vgpu.c_vgt_balloon_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_vgpu.c_vgt_balloon_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ggtt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_mm_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"balloon space: range [ 0x%lx - 0x%lx ] %lu KiB.\0A\00", align 1
@I915_COLOR_UNEVICTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_ggtt*, %struct.drm_mm_node*, i64, i64)* @vgt_balloon_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgt_balloon_space(%struct.i915_ggtt* %0, %struct.drm_mm_node* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_ggtt*, align 8
  %7 = alloca %struct.drm_mm_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %6, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = sub i64 %12, %13
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %45

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = udiv i64 %24, 1024
  %26 = call i32 @DRM_INFO(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23, i64 %25)
  %27 = load %struct.i915_ggtt*, %struct.i915_ggtt** %6, align 8
  %28 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %27, i32 0, i32 0
  %29 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* @I915_COLOR_UNEVICTABLE, align 4
  %33 = call i32 @i915_gem_gtt_reserve(%struct.TYPE_2__* %28, %struct.drm_mm_node* %29, i64 %30, i64 %31, i32 %32, i32 0)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %21
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.i915_ggtt*, %struct.i915_ggtt** %6, align 8
  %39 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %37
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %36, %21
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %18
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @DRM_INFO(i8*, i64, i64, i64) #1

declare dso_local i32 @i915_gem_gtt_reserve(%struct.TYPE_2__*, %struct.drm_mm_node*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
