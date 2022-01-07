; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_fdi_post_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_fdi_post_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@PIPE_A = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@FDI_RX_PWRDN_LANE1_MASK = common dso_local global i32 0, align 4
@FDI_RX_PWRDN_LANE0_MASK = common dso_local global i32 0, align 4
@FDI_PCDCLK = common dso_local global i32 0, align 4
@FDI_RX_PLL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_fdi_post_disable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %7, align 8
  %14 = load i32, i32* @PIPE_A, align 4
  %15 = call i32 @FDI_RX_CTL(i32 %14)
  %16 = call i32 @I915_READ(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @FDI_RX_ENABLE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @PIPE_A, align 4
  %22 = call i32 @FDI_RX_CTL(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @I915_WRITE(i32 %22, i32 %23)
  %25 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %27 = call i32 @intel_disable_ddi_buf(%struct.intel_encoder* %25, %struct.intel_crtc_state* %26)
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %29 = call i32 @intel_ddi_clk_disable(%struct.intel_encoder* %28)
  %30 = load i32, i32* @PIPE_A, align 4
  %31 = call i32 @FDI_RX_MISC(i32 %30)
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @FDI_RX_PWRDN_LANE1_MASK, align 4
  %34 = load i32, i32* @FDI_RX_PWRDN_LANE0_MASK, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = call i32 @FDI_RX_PWRDN_LANE1_VAL(i32 2)
  %40 = call i32 @FDI_RX_PWRDN_LANE0_VAL(i32 2)
  %41 = or i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @PIPE_A, align 4
  %45 = call i32 @FDI_RX_MISC(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @I915_WRITE(i32 %45, i32 %46)
  %48 = load i32, i32* @PIPE_A, align 4
  %49 = call i32 @FDI_RX_CTL(i32 %48)
  %50 = call i32 @I915_READ(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @FDI_PCDCLK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @PIPE_A, align 4
  %56 = call i32 @FDI_RX_CTL(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @I915_WRITE(i32 %56, i32 %57)
  %59 = load i32, i32* @PIPE_A, align 4
  %60 = call i32 @FDI_RX_CTL(i32 %59)
  %61 = call i32 @I915_READ(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @FDI_RX_PLL_ENABLE, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @PIPE_A, align 4
  %67 = call i32 @FDI_RX_CTL(i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @I915_WRITE(i32 %67, i32 %68)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @intel_disable_ddi_buf(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_ddi_clk_disable(%struct.intel_encoder*) #1

declare dso_local i32 @FDI_RX_MISC(i32) #1

declare dso_local i32 @FDI_RX_PWRDN_LANE1_VAL(i32) #1

declare dso_local i32 @FDI_RX_PWRDN_LANE0_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
