; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpio_phy.c__bxt_ddi_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpio_phy.c__bxt_ddi_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32 }
%struct.bxt_ddi_phy_info = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"DDI PHY %d already enabled, won't reprogram it\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"DDI PHY %d enabled with invalid state, force reprogramming it\0A\00", align 1
@BXT_P_CR_GT_DISP_PWRON = common dso_local global i32 0, align 4
@PHY_RESERVED = common dso_local global i32 0, align 4
@PHY_POWER_GOOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"timeout during PHY%d power on\0A\00", align 1
@IREF0RC_OFFSET_MASK = common dso_local global i32 0, align 4
@IREF0RC_OFFSET_SHIFT = common dso_local global i32 0, align 4
@IREF1RC_OFFSET_MASK = common dso_local global i32 0, align 4
@IREF1RC_OFFSET_SHIFT = common dso_local global i32 0, align 4
@OCL1_POWER_DOWN_EN = common dso_local global i32 0, align 4
@DW28_OLDO_DYN_PWR_DOWN_EN = common dso_local global i32 0, align 4
@SUS_CLK_CONFIG = common dso_local global i32 0, align 4
@DW6_OLDO_DYN_PWR_DOWN_EN = common dso_local global i32 0, align 4
@GRC_CODE_FAST_SHIFT = common dso_local global i32 0, align 4
@GRC_CODE_SLOW_SHIFT = common dso_local global i32 0, align 4
@GRC_DIS = common dso_local global i32 0, align 4
@GRC_RDY_OVRD = common dso_local global i32 0, align 4
@COMMON_RESET_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @_bxt_ddi_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bxt_ddi_phy_init(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxt_ddi_phy_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.bxt_ddi_phy_info* @bxt_get_phy_info(%struct.drm_i915_private* %8, i32 %9)
  store %struct.bxt_ddi_phy_info* %10, %struct.bxt_ddi_phy_info** %5, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @bxt_ddi_phy_is_enabled(%struct.drm_i915_private* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %5, align 8
  %17 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @bxt_get_grc(%struct.drm_i915_private* %21, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @bxt_ddi_phy_verify_state(%struct.drm_i915_private* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %187

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %2
  %39 = load i32, i32* @BXT_P_CR_GT_DISP_PWRON, align 4
  %40 = call i32 @I915_READ(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %5, align 8
  %42 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @BXT_P_CR_GT_DISP_PWRON, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @I915_WRITE(i32 %46, i32 %47)
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %49, i32 0, i32 1
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @BXT_PORT_CL1CM_DW0(i32 %51)
  %53 = load i32, i32* @PHY_RESERVED, align 4
  %54 = load i32, i32* @PHY_POWER_GOOD, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @PHY_POWER_GOOD, align 4
  %57 = call i64 @intel_wait_for_register_fw(i32* %50, i32 %52, i32 %55, i32 %56, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %38
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %38
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @BXT_PORT_CL1CM_DW9(i32 %63)
  %65 = call i32 @I915_READ(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @IREF0RC_OFFSET_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* @IREF0RC_OFFSET_SHIFT, align 4
  %71 = shl i32 228, %70
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @BXT_PORT_CL1CM_DW9(i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @I915_WRITE(i32 %75, i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @BXT_PORT_CL1CM_DW10(i32 %78)
  %80 = call i32 @I915_READ(i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @IREF1RC_OFFSET_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @IREF1RC_OFFSET_SHIFT, align 4
  %86 = shl i32 228, %85
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @BXT_PORT_CL1CM_DW10(i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @I915_WRITE(i32 %90, i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @BXT_PORT_CL1CM_DW28(i32 %93)
  %95 = call i32 @I915_READ(i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @OCL1_POWER_DOWN_EN, align 4
  %97 = load i32, i32* @DW28_OLDO_DYN_PWR_DOWN_EN, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @SUS_CLK_CONFIG, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @BXT_PORT_CL1CM_DW28(i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @I915_WRITE(i32 %104, i32 %105)
  %107 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %5, align 8
  %108 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %62
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @BXT_PORT_CL2CM_DW6(i32 %112)
  %114 = call i32 @I915_READ(i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* @DW6_OLDO_DYN_PWR_DOWN_EN, align 4
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @BXT_PORT_CL2CM_DW6(i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @I915_WRITE(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %111, %62
  %123 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %5, align 8
  %124 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %166

127:                                              ; preds = %122
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %129 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %5, align 8
  %130 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @bxt_phy_wait_grc_done(%struct.drm_i915_private* %128, i32 %131)
  %133 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %134 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %5, align 8
  %135 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @bxt_get_grc(%struct.drm_i915_private* %133, i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %140 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  store i32 %138, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @GRC_CODE_FAST_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @GRC_CODE_SLOW_SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = or i32 %143, %146
  %148 = load i32, i32* %6, align 4
  %149 = or i32 %147, %148
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @BXT_PORT_REF_DW6(i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @I915_WRITE(i32 %151, i32 %152)
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @BXT_PORT_REF_DW8(i32 %154)
  %156 = call i32 @I915_READ(i32 %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* @GRC_DIS, align 4
  %158 = load i32, i32* @GRC_RDY_OVRD, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* %6, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @BXT_PORT_REF_DW8(i32 %162)
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @I915_WRITE(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %127, %122
  %167 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %5, align 8
  %168 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %5, align 8
  %173 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @udelay(i64 %174)
  br label %176

176:                                              ; preds = %171, %166
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @BXT_PHY_CTL_FAMILY(i32 %177)
  %179 = call i32 @I915_READ(i32 %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* @COMMON_RESET_DIS, align 4
  %181 = load i32, i32* %6, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @BXT_PHY_CTL_FAMILY(i32 %183)
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @I915_WRITE(i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %176, %32
  ret void
}

declare dso_local %struct.bxt_ddi_phy_info* @bxt_get_phy_info(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @bxt_ddi_phy_is_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @bxt_get_grc(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @bxt_ddi_phy_verify_state(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @intel_wait_for_register_fw(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @BXT_PORT_CL1CM_DW0(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @BXT_PORT_CL1CM_DW9(i32) #1

declare dso_local i32 @BXT_PORT_CL1CM_DW10(i32) #1

declare dso_local i32 @BXT_PORT_CL1CM_DW28(i32) #1

declare dso_local i32 @BXT_PORT_CL2CM_DW6(i32) #1

declare dso_local i32 @bxt_phy_wait_grc_done(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @BXT_PORT_REF_DW6(i32) #1

declare dso_local i32 @BXT_PORT_REF_DW8(i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @BXT_PHY_CTL_FAMILY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
