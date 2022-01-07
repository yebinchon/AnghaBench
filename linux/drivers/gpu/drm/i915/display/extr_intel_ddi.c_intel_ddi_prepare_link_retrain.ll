; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_prepare_link_retrain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_prepare_link_retrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32, i64 }
%struct.intel_digital_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DP_TP_CTL_ENABLE = common dso_local global i32 0, align 4
@DDI_BUF_CTL_ENABLE = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_MASK = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_PAT1 = common dso_local global i32 0, align 4
@DP_TP_CTL_SCRAMBLE_DISABLE = common dso_local global i32 0, align 4
@DP_TP_CTL_MODE_MST = common dso_local global i32 0, align 4
@DP_TP_CTL_MODE_SST = common dso_local global i32 0, align 4
@DP_TP_CTL_ENHANCED_FRAME_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_ddi_prepare_link_retrain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_prepare_link_retrain(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %8)
  store %struct.intel_digital_port* %9, %struct.intel_digital_port** %3, align 8
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %11 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @DP_TP_CTL(i32 %20)
  %22 = call i32 @I915_READ(i32 %21)
  %23 = load i32, i32* @DP_TP_CTL_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @DDI_BUF_CTL(i32 %27)
  %29 = call i32 @I915_READ(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @DDI_BUF_CTL(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @I915_WRITE(i32 %40, i32 %41)
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %34, %26
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @DP_TP_CTL(i32 %44)
  %46 = call i32 @I915_READ(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @DP_TP_CTL_ENABLE, align 4
  %48 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_MASK, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT1, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @DP_TP_CTL(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @I915_WRITE(i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @DP_TP_CTL(i32 %60)
  %62 = call i32 @POSTING_READ(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %43
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @intel_wait_ddi_buf_idle(%struct.drm_i915_private* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %43
  br label %70

70:                                               ; preds = %69, %1
  %71 = load i32, i32* @DP_TP_CTL_ENABLE, align 4
  %72 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT1, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @DP_TP_CTL_SCRAMBLE_DISABLE, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %6, align 4
  %76 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %77 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i32, i32* @DP_TP_CTL_MODE_MST, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %98

84:                                               ; preds = %70
  %85 = load i32, i32* @DP_TP_CTL_MODE_SST, align 4
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %89 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @drm_dp_enhanced_frame_cap(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i32, i32* @DP_TP_CTL_ENHANCED_FRAME_ENABLE, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %84
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @DP_TP_CTL(i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @I915_WRITE(i32 %100, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @DP_TP_CTL(i32 %103)
  %105 = call i32 @POSTING_READ(i32 %104)
  %106 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %107 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %108 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @DDI_BUF_CTL(i32 %111)
  %113 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %114 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @I915_WRITE(i32 %112, i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @DDI_BUF_CTL(i32 %117)
  %119 = call i32 @POSTING_READ(i32 %118)
  %120 = call i32 @udelay(i32 600)
  ret void
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DP_TP_CTL(i32) #1

declare dso_local i32 @DDI_BUF_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_wait_ddi_buf_idle(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @drm_dp_enhanced_frame_cap(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
