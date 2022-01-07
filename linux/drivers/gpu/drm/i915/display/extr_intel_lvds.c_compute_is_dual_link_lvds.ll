; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_compute_is_dual_link_lvds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_compute_is_dual_link_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.intel_lvds_encoder = type { i32, %struct.TYPE_10__*, %struct.TYPE_13__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@i915_modparams = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@intel_dual_link_lvds = common dso_local global i32 0, align 4
@LVDS_DETECTED = common dso_local global i32 0, align 4
@LVDS_PIPE_SEL_MASK_CPT = common dso_local global i32 0, align 4
@LVDS_PIPE_SEL_MASK = common dso_local global i32 0, align 4
@LVDS_CLKB_POWER_MASK = common dso_local global i32 0, align 4
@LVDS_CLKB_POWER_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_lvds_encoder*)* @compute_is_dual_link_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_is_dual_link_lvds(%struct.intel_lvds_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_lvds_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_lvds_encoder* %0, %struct.intel_lvds_encoder** %3, align 8
  %7 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i915_modparams, i32 0, i32 0), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i915_modparams, i32 0, i32 0), align 4
  %18 = icmp eq i32 %17, 2
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %73

20:                                               ; preds = %1
  %21 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %3, align 8
  %22 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 112999
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %73

31:                                               ; preds = %20
  %32 = load i32, i32* @intel_dual_link_lvds, align 4
  %33 = call i64 @dmi_check_system(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %73

36:                                               ; preds = %31
  %37 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %3, align 8
  %38 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @I915_READ(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %42 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load i32, i32* @LVDS_DETECTED, align 4
  %46 = load i32, i32* @LVDS_PIPE_SEL_MASK_CPT, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %58

51:                                               ; preds = %36
  %52 = load i32, i32* @LVDS_DETECTED, align 4
  %53 = load i32, i32* @LVDS_PIPE_SEL_MASK, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %51, %44
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @LVDS_CLKB_POWER_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @LVDS_CLKB_POWER_UP, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %35, %30, %16
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
