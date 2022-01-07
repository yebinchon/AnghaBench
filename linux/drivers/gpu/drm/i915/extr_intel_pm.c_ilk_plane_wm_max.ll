; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_plane_wm_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_plane_wm_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_wm_config = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@INTEL_DDB_PART_5_6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, %struct.intel_wm_config*, i32, i32)* @ilk_plane_wm_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilk_plane_wm_max(%struct.drm_i915_private* %0, i32 %1, %struct.intel_wm_config* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_wm_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.intel_wm_config* %2, %struct.intel_wm_config** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %14 = call i32 @ilk_display_fifo_size(%struct.drm_i915_private* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load %struct.intel_wm_config*, %struct.intel_wm_config** %9, align 8
  %19 = getelementptr inbounds %struct.intel_wm_config, %struct.intel_wm_config* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %77

23:                                               ; preds = %17, %5
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load %struct.intel_wm_config*, %struct.intel_wm_config** %9, align 8
  %28 = getelementptr inbounds %struct.intel_wm_config, %struct.intel_wm_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %45

31:                                               ; preds = %26, %23
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %33 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_i915_private* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %12, align 4
  %37 = udiv i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %39 = call i32 @INTEL_GEN(%struct.drm_i915_private* %38)
  %40 = icmp sle i32 %39, 6
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %12, align 4
  %43 = udiv i32 %42, 2
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %41, %31
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.intel_wm_config*, %struct.intel_wm_config** %9, align 8
  %47 = getelementptr inbounds %struct.intel_wm_config, %struct.intel_wm_config* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @INTEL_DDB_PART_5_6, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = mul i32 %61, 5
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %12, align 4
  %65 = udiv i32 %64, 6
  store i32 %65, i32* %12, align 4
  br label %69

66:                                               ; preds = %53, %50
  %67 = load i32, i32* %12, align 4
  %68 = udiv i32 %67, 2
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @ilk_plane_wm_reg_max(%struct.drm_i915_private* %72, i32 %73, i32 %74)
  %76 = call i32 @min(i32 %71, i32 %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %70, %22
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @ilk_display_fifo_size(%struct.drm_i915_private*) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ilk_plane_wm_reg_max(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
