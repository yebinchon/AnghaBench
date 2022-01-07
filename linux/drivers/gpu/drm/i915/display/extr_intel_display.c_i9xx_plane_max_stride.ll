; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_plane_max_stride.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_plane_max_stride.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@I915_FORMAT_MOD_X_TILED = common dso_local global i64 0, align 8
@PLANE_C = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i9xx_plane_max_stride(%struct.intel_plane* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_plane* %0, %struct.intel_plane** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %12 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %10, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %17 = call i32 @HAS_GMCH(%struct.drm_i915_private* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 32768, i32* %5, align 4
  br label %48

20:                                               ; preds = %4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %22 = call i32 @INTEL_GEN(%struct.drm_i915_private* %21)
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @I915_FORMAT_MOD_X_TILED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 16384, i32* %5, align 4
  br label %48

29:                                               ; preds = %24
  store i32 32768, i32* %5, align 4
  br label %48

30:                                               ; preds = %20
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %32 = call i32 @INTEL_GEN(%struct.drm_i915_private* %31)
  %33 = icmp sge i32 %32, 3
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @I915_FORMAT_MOD_X_TILED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 8192, i32* %5, align 4
  br label %48

39:                                               ; preds = %34
  store i32 16384, i32* %5, align 4
  br label %48

40:                                               ; preds = %30
  %41 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %42 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PLANE_C, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 4096, i32* %5, align 4
  br label %48

47:                                               ; preds = %40
  store i32 8192, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %46, %39, %38, %29, %28, %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
