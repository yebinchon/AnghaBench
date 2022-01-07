; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PORT_C = common dso_local global i32 0, align 4
@DDI_CLK_SEL_NONE = common dso_local global i32 0, align 4
@DPCLKA_CFGCR0 = common dso_local global i32 0, align 4
@DPLL_CTRL2 = common dso_local global i32 0, align 4
@PORT_CLK_SEL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_ddi_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_clk_disable(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %6 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %3, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i32 @INTEL_GEN(%struct.drm_i915_private* %17)
  %19 = icmp sge i32 %18, 11
  br i1 %19, label %20, label %39

20:                                               ; preds = %1
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @intel_phy_is_combo(%struct.drm_i915_private* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = call i64 @IS_ELKHARTLAKE(%struct.drm_i915_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PORT_C, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %20
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @DDI_CLK_SEL(i32 %34)
  %36 = load i32, i32* @DDI_CLK_SEL_NONE, align 4
  %37 = call i32 @I915_WRITE(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %29, %25
  br label %75

39:                                               ; preds = %1
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @DPCLKA_CFGCR0, align 4
  %45 = load i32, i32* @DPCLKA_CFGCR0, align 4
  %46 = call i32 @I915_READ(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @DPCLKA_CFGCR0_DDI_CLK_OFF(i32 %47)
  %49 = or i32 %46, %48
  %50 = call i32 @I915_WRITE(i32 %44, i32 %49)
  br label %74

51:                                               ; preds = %39
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %53 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* @DPLL_CTRL2, align 4
  %57 = load i32, i32* @DPLL_CTRL2, align 4
  %58 = call i32 @I915_READ(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @DPLL_CTRL2_DDI_CLK_OFF(i32 %59)
  %61 = or i32 %58, %60
  %62 = call i32 @I915_WRITE(i32 %56, i32 %61)
  br label %73

63:                                               ; preds = %51
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = call i32 @INTEL_GEN(%struct.drm_i915_private* %64)
  %66 = icmp slt i32 %65, 9
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @PORT_CLK_SEL(i32 %68)
  %70 = load i32, i32* @PORT_CLK_SEL_NONE, align 4
  %71 = call i32 @I915_WRITE(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %63
  br label %73

73:                                               ; preds = %72, %55
  br label %74

74:                                               ; preds = %73, %43
  br label %75

75:                                               ; preds = %74, %38
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_phy_is_combo(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DDI_CLK_SEL(i32) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DPCLKA_CFGCR0_DDI_CLK_OFF(i32) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @DPLL_CTRL2_DDI_CLK_OFF(i32) #1

declare dso_local i32 @PORT_CLK_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
