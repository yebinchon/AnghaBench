; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_bxt_dsi_reset_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_bxt_dsi_reset_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }

@BXT_MIPI_CLOCK_CTL = common dso_local global i32 0, align 4
@MIPIO_TXESC_CLK_DIV1 = common dso_local global i32 0, align 4
@GLK_TX_ESC_CLK_DIV1_MASK = common dso_local global i32 0, align 4
@MIPIO_TXESC_CLK_DIV2 = common dso_local global i32 0, align 4
@GLK_TX_ESC_CLK_DIV2_MASK = common dso_local global i32 0, align 4
@CLOCKSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxt_dsi_reset_clocks(%struct.intel_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %7, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %15 = call i64 @IS_BROXTON(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  %18 = load i32, i32* @BXT_MIPI_CLOCK_CTL, align 4
  %19 = call i32 @I915_READ(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @BXT_MIPI_TX_ESCLK_FIXDIV_MASK(i32 %20)
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @BXT_MIPI_RX_ESCLK_UPPER_FIXDIV_MASK(i32 %25)
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @BXT_MIPI_8X_BY3_DIVIDER_MASK(i32 %30)
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @BXT_MIPI_RX_ESCLK_LOWER_FIXDIV_MASK(i32 %35)
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @BXT_MIPI_CLOCK_CTL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @I915_WRITE(i32 %40, i32 %41)
  br label %62

43:                                               ; preds = %2
  %44 = load i32, i32* @MIPIO_TXESC_CLK_DIV1, align 4
  %45 = call i32 @I915_READ(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @GLK_TX_ESC_CLK_DIV1_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @MIPIO_TXESC_CLK_DIV1, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @I915_WRITE(i32 %50, i32 %51)
  %53 = load i32, i32* @MIPIO_TXESC_CLK_DIV2, align 4
  %54 = call i32 @I915_READ(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @GLK_TX_ESC_CLK_DIV2_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @MIPIO_TXESC_CLK_DIV2, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @I915_WRITE(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %43, %17
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @MIPI_EOT_DISABLE(i32 %63)
  %65 = load i32, i32* @CLOCKSTOP, align 4
  %66 = call i32 @I915_WRITE(i32 %64, i32 %65)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @BXT_MIPI_TX_ESCLK_FIXDIV_MASK(i32) #1

declare dso_local i32 @BXT_MIPI_RX_ESCLK_UPPER_FIXDIV_MASK(i32) #1

declare dso_local i32 @BXT_MIPI_8X_BY3_DIVIDER_MASK(i32) #1

declare dso_local i32 @BXT_MIPI_RX_ESCLK_LOWER_FIXDIV_MASK(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @MIPI_EOT_DISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
