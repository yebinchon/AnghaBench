; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpio_phy.c_bxt_ddi_phy_set_signal_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpio_phy.c_bxt_ddi_phy_set_signal_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@TX2_SWING_CALC_INIT = common dso_local global i32 0, align 4
@TX1_SWING_CALC_INIT = common dso_local global i32 0, align 4
@MARGIN_000 = common dso_local global i32 0, align 4
@UNIQ_TRANS_SCALE = common dso_local global i32 0, align 4
@MARGIN_000_SHIFT = common dso_local global i32 0, align 4
@UNIQ_TRANS_SCALE_SHIFT = common dso_local global i32 0, align 4
@SCALE_DCOMP_METHOD = common dso_local global i32 0, align 4
@UNIQUE_TRANGE_EN_METHOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Disabled scaling while ouniqetrangenmethod was set\00", align 1
@DE_EMPHASIS = common dso_local global i32 0, align 4
@DEEMPH_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxt_ddi_phy_set_signal_level(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @bxt_port_to_phy_channel(%struct.drm_i915_private* %16, i32 %17, i32* %14, i32* %15)
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %15, align 4
  %21 = call i32 @BXT_PORT_PCS_DW10_LN01(i32 %19, i32 %20)
  %22 = call i32 @I915_READ(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @TX2_SWING_CALC_INIT, align 4
  %24 = load i32, i32* @TX1_SWING_CALC_INIT, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %13, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @BXT_PORT_PCS_DW10_GRP(i32 %29, i32 %30)
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @I915_WRITE(i32 %31, i32 %32)
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @BXT_PORT_TX_DW2_LN0(i32 %34, i32 %35)
  %37 = call i32 @I915_READ(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* @MARGIN_000, align 4
  %39 = load i32, i32* @UNIQ_TRANS_SCALE, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MARGIN_000_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @UNIQ_TRANS_SCALE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @BXT_PORT_TX_DW2_GRP(i32 %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @I915_WRITE(i32 %55, i32 %56)
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @BXT_PORT_TX_DW3_LN0(i32 %58, i32 %59)
  %61 = call i32 @I915_READ(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* @SCALE_DCOMP_METHOD, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %6
  %69 = load i32, i32* @SCALE_DCOMP_METHOD, align 4
  %70 = load i32, i32* %13, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %68, %6
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @UNIQUE_TRANGE_EN_METHOD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @SCALE_DCOMP_METHOD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %77, %72
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @BXT_PORT_TX_DW3_GRP(i32 %85, i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @I915_WRITE(i32 %87, i32 %88)
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @BXT_PORT_TX_DW4_LN0(i32 %90, i32 %91)
  %93 = call i32 @I915_READ(i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* @DE_EMPHASIS, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %13, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @DEEMPH_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %13, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @BXT_PORT_TX_DW4_GRP(i32 %103, i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @I915_WRITE(i32 %105, i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @BXT_PORT_PCS_DW10_LN01(i32 %108, i32 %109)
  %111 = call i32 @I915_READ(i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* @TX2_SWING_CALC_INIT, align 4
  %113 = load i32, i32* @TX1_SWING_CALC_INIT, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @BXT_PORT_PCS_DW10_GRP(i32 %117, i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @I915_WRITE(i32 %119, i32 %120)
  ret void
}

declare dso_local i32 @bxt_port_to_phy_channel(%struct.drm_i915_private*, i32, i32*, i32*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @BXT_PORT_PCS_DW10_LN01(i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @BXT_PORT_PCS_DW10_GRP(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW2_LN0(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW2_GRP(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW3_LN0(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @BXT_PORT_TX_DW3_GRP(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW4_LN0(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW4_GRP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
