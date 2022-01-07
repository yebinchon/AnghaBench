; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_plane_wm_equals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_skl_plane_wm_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.skl_plane_wm = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.skl_plane_wm*, %struct.skl_plane_wm*)* @skl_plane_wm_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_plane_wm_equals(%struct.drm_i915_private* %0, %struct.skl_plane_wm* %1, %struct.skl_plane_wm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.skl_plane_wm*, align 8
  %7 = alloca %struct.skl_plane_wm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.skl_plane_wm* %1, %struct.skl_plane_wm** %6, align 8
  store %struct.skl_plane_wm* %2, %struct.skl_plane_wm** %7, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %11 = call i32 @ilk_wm_max_level(%struct.drm_i915_private* %10)
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %48, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %6, align 8
  %18 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %7, align 8
  %24 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @skl_wm_level_equals(i32* %22, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %16
  %32 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %6, align 8
  %33 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %7, align 8
  %39 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @skl_wm_level_equals(i32* %37, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %31, %16
  store i32 0, i32* %4, align 4
  br label %57

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %12

51:                                               ; preds = %12
  %52 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %6, align 8
  %53 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %52, i32 0, i32 0
  %54 = load %struct.skl_plane_wm*, %struct.skl_plane_wm** %7, align 8
  %55 = getelementptr inbounds %struct.skl_plane_wm, %struct.skl_plane_wm* %54, i32 0, i32 0
  %56 = call i32 @skl_wm_level_equals(i32* %53, i32* %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ilk_wm_max_level(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_wm_level_equals(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
