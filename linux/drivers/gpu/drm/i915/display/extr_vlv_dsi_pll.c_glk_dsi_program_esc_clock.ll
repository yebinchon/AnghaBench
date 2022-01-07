; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_glk_dsi_program_esc_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_glk_dsi_program_esc_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@BXT_DSI_PLL_RATIO_MASK = common dso_local global i32 0, align 4
@BXT_REF_CLOCK_KHZ = common dso_local global i32 0, align 4
@MIPIO_TXESC_CLK_DIV1 = common dso_local global i32 0, align 4
@GLK_TX_ESC_CLK_DIV1_MASK = common dso_local global i32 0, align 4
@MIPIO_TXESC_CLK_DIV2 = common dso_local global i32 0, align 4
@GLK_TX_ESC_CLK_DIV2_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.intel_crtc_state*)* @glk_dsi_program_esc_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glk_dsi_program_esc_clock(%struct.drm_device* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BXT_DSI_PLL_RATIO_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @BXT_REF_CLOCK_KHZ, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @DIV_ROUND_CLOSEST(i32 %27, i32 20000)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %29, 10
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %11, align 4
  br label %74

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 10
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 %37, 20
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @DIV_ROUND_UP(i32 %40, i32 2)
  store i32 %41, i32* %11, align 4
  br label %73

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 20
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp sle i32 %46, 30
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @DIV_ROUND_UP(i32 %49, i32 4)
  store i32 %50, i32* %11, align 4
  br label %72

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 30
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp sle i32 %55, 40
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @DIV_ROUND_UP(i32 %58, i32 6)
  store i32 %59, i32* %11, align 4
  br label %71

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 40
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp sle i32 %64, 50
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @DIV_ROUND_UP(i32 %67, i32 8)
  store i32 %68, i32* %11, align 4
  br label %70

69:                                               ; preds = %63, %60
  store i32 10, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %66
  br label %71

71:                                               ; preds = %70, %57
  br label %72

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72, %39
  br label %74

74:                                               ; preds = %73, %31
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @DIV_ROUND_UP(i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 10
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %12, align 4
  br label %83

82:                                               ; preds = %74
  store i32 10, i32* %12, align 4
  br label %83

83:                                               ; preds = %82, %80
  %84 = load i32, i32* @MIPIO_TXESC_CLK_DIV1, align 4
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, 1
  %87 = shl i32 1, %86
  %88 = load i32, i32* @GLK_TX_ESC_CLK_DIV1_MASK, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @I915_WRITE(i32 %84, i32 %89)
  %91 = load i32, i32* @MIPIO_TXESC_CLK_DIV2, align 4
  %92 = load i32, i32* %12, align 4
  %93 = sub nsw i32 %92, 1
  %94 = shl i32 1, %93
  %95 = load i32, i32* @GLK_TX_ESC_CLK_DIV2_MASK, align 4
  %96 = and i32 %94, %95
  %97 = call i32 @I915_WRITE(i32 %91, i32 %96)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
