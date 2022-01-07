; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_pre_emphasis_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_pre_emphasis_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.TYPE_2__ = type { %struct.intel_encoder }

@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPH_LEVEL_3 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPH_LEVEL_2 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPH_LEVEL_1 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPH_LEVEL_0 = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_pre_emphasis_max(%struct.intel_dp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %10 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %6, align 8
  %11 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %12 = call %struct.TYPE_2__* @dp_to_dig_port(%struct.intel_dp* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.intel_encoder* %13, %struct.intel_encoder** %7, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = call i64 @HAS_DDI(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @intel_ddi_dp_pre_emphasis_max(%struct.intel_encoder* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %76

24:                                               ; preds = %2
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %26 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %30 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %43 [
    i32 131, label %36
    i32 130, label %38
    i32 129, label %40
    i32 128, label %42
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_3, align 4
  store i32 %37, i32* %3, align 4
  br label %76

38:                                               ; preds = %32
  %39 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_2, align 4
  store i32 %39, i32* %3, align 4
  br label %76

40:                                               ; preds = %32
  %41 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_1, align 4
  store i32 %41, i32* %3, align 4
  br label %76

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %32, %42
  %44 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_0, align 4
  store i32 %44, i32* %3, align 4
  br label %76

45:                                               ; preds = %28
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %47 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @PORT_A, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %56 = and i32 %54, %55
  switch i32 %56, label %61 [
    i32 131, label %57
    i32 130, label %59
    i32 129, label %59
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_2, align 4
  store i32 %58, i32* %3, align 4
  br label %76

59:                                               ; preds = %53, %53
  %60 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_1, align 4
  store i32 %60, i32* %3, align 4
  br label %76

61:                                               ; preds = %53
  %62 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_0, align 4
  store i32 %62, i32* %3, align 4
  br label %76

63:                                               ; preds = %49, %45
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %66 = and i32 %64, %65
  switch i32 %66, label %74 [
    i32 131, label %67
    i32 130, label %69
    i32 129, label %71
    i32 128, label %73
  ]

67:                                               ; preds = %63
  %68 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_2, align 4
  store i32 %68, i32* %3, align 4
  br label %76

69:                                               ; preds = %63
  %70 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_2, align 4
  store i32 %70, i32* %3, align 4
  br label %76

71:                                               ; preds = %63
  %72 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_1, align 4
  store i32 %72, i32* %3, align 4
  br label %76

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %63, %73
  %75 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_0, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %71, %69, %67, %61, %59, %57, %43, %40, %38, %36, %20
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.TYPE_2__* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_ddi_dp_pre_emphasis_max(%struct.intel_encoder*, i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
