; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_bxt_ddi_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_bxt_ddi_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@PORT_PLL_REF_SEL = common dso_local global i32 0, align 4
@PORT_PLL_POWER_ENABLE = common dso_local global i32 0, align 4
@PORT_PLL_POWER_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Power state not set for PLL:%d\0A\00", align 1
@PORT_PLL_10BIT_CLK_ENABLE = common dso_local global i32 0, align 4
@PORT_PLL_P1_MASK = common dso_local global i32 0, align 4
@PORT_PLL_P2_MASK = common dso_local global i32 0, align 4
@PORT_PLL_M2_MASK = common dso_local global i32 0, align 4
@PORT_PLL_N_MASK = common dso_local global i32 0, align 4
@PORT_PLL_M2_FRAC_MASK = common dso_local global i32 0, align 4
@PORT_PLL_M2_FRAC_ENABLE = common dso_local global i32 0, align 4
@PORT_PLL_PROP_COEFF_MASK = common dso_local global i32 0, align 4
@PORT_PLL_INT_COEFF_MASK = common dso_local global i32 0, align 4
@PORT_PLL_GAIN_CTL_MASK = common dso_local global i32 0, align 4
@PORT_PLL_TARGET_CNT_MASK = common dso_local global i32 0, align 4
@PORT_PLL_LOCK_THRESHOLD_MASK = common dso_local global i32 0, align 4
@PORT_PLL_DCO_AMP_OVR_EN_H = common dso_local global i32 0, align 4
@PORT_PLL_DCO_AMP_MASK = common dso_local global i32 0, align 4
@PORT_PLL_RECALIBRATE = common dso_local global i32 0, align 4
@PORT_PLL_ENABLE = common dso_local global i32 0, align 4
@PORT_PLL_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"PLL %d not locked\0A\00", align 1
@DCC_DELAY_RANGE_2 = common dso_local global i32 0, align 4
@LANE_STAGGER_MASK = common dso_local global i32 0, align 4
@LANESTAGGER_STRAP_OVRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* @bxt_ddi_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_ddi_pll_enable(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_shared_dpll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %4, align 8
  %9 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %10 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @bxt_port_to_phy_channel(%struct.drm_i915_private* %14, i32 %15, i32* %7, i32* %8)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BXT_PORT_PLL_ENABLE(i32 %17)
  %19 = call i32 @I915_READ(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @PORT_PLL_REF_SEL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @BXT_PORT_PLL_ENABLE(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @I915_WRITE(i32 %24, i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @BXT_PORT_PLL_ENABLE(i32 %31)
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @PORT_PLL_POWER_ENABLE, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @BXT_PORT_PLL_ENABLE(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @I915_WRITE(i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @BXT_PORT_PLL_ENABLE(i32 %41)
  %43 = call i32 @I915_READ(i32 %42)
  %44 = load i32, i32* @PORT_PLL_POWER_STATE, align 4
  %45 = and i32 %43, %44
  %46 = call i64 @wait_for_us(i32 %45, i32 200)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %30
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %30
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @BXT_PORT_PLL_EBB_4(i32 %53, i32 %54)
  %56 = call i32 @I915_READ(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @PORT_PLL_10BIT_CLK_ENABLE, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @BXT_PORT_PLL_EBB_4(i32 %61, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @I915_WRITE(i32 %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @BXT_PORT_PLL_EBB_0(i32 %66, i32 %67)
  %69 = call i32 @I915_READ(i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @PORT_PLL_P1_MASK, align 4
  %71 = load i32, i32* @PORT_PLL_P2_MASK, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %77 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @BXT_PORT_PLL_EBB_0(i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @I915_WRITE(i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @BXT_PORT_PLL(i32 %88, i32 %89, i32 0)
  %91 = call i32 @I915_READ(i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @PORT_PLL_M2_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %97 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @BXT_PORT_PLL(i32 %103, i32 %104, i32 0)
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @I915_WRITE(i32 %105, i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @BXT_PORT_PLL(i32 %108, i32 %109, i32 1)
  %111 = call i32 @I915_READ(i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @PORT_PLL_N_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %117 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @BXT_PORT_PLL(i32 %123, i32 %124, i32 1)
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @I915_WRITE(i32 %125, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @BXT_PORT_PLL(i32 %128, i32 %129, i32 2)
  %131 = call i32 @I915_READ(i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* @PORT_PLL_M2_FRAC_MASK, align 4
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %137 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %5, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @BXT_PORT_PLL(i32 %143, i32 %144, i32 2)
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @I915_WRITE(i32 %145, i32 %146)
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @BXT_PORT_PLL(i32 %148, i32 %149, i32 3)
  %151 = call i32 @I915_READ(i32 %150)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* @PORT_PLL_M2_FRAC_ENABLE, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %5, align 4
  %156 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %157 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @BXT_PORT_PLL(i32 %163, i32 %164, i32 3)
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @I915_WRITE(i32 %165, i32 %166)
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @BXT_PORT_PLL(i32 %168, i32 %169, i32 6)
  %171 = call i32 @I915_READ(i32 %170)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* @PORT_PLL_PROP_COEFF_MASK, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* @PORT_PLL_INT_COEFF_MASK, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %5, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* @PORT_PLL_GAIN_CTL_MASK, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %5, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %5, align 4
  %184 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %185 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %5, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @BXT_PORT_PLL(i32 %191, i32 %192, i32 6)
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @I915_WRITE(i32 %193, i32 %194)
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @BXT_PORT_PLL(i32 %196, i32 %197, i32 8)
  %199 = call i32 @I915_READ(i32 %198)
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* @PORT_PLL_TARGET_CNT_MASK, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %5, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %5, align 4
  %204 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %205 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %5, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @BXT_PORT_PLL(i32 %211, i32 %212, i32 8)
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @I915_WRITE(i32 %213, i32 %214)
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @BXT_PORT_PLL(i32 %216, i32 %217, i32 9)
  %219 = call i32 @I915_READ(i32 %218)
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* @PORT_PLL_LOCK_THRESHOLD_MASK, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %5, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %5, align 4
  %224 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %225 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %5, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %5, align 4
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @BXT_PORT_PLL(i32 %231, i32 %232, i32 9)
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @I915_WRITE(i32 %233, i32 %234)
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @BXT_PORT_PLL(i32 %236, i32 %237, i32 10)
  %239 = call i32 @I915_READ(i32 %238)
  store i32 %239, i32* %5, align 4
  %240 = load i32, i32* @PORT_PLL_DCO_AMP_OVR_EN_H, align 4
  %241 = xor i32 %240, -1
  %242 = load i32, i32* %5, align 4
  %243 = and i32 %242, %241
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* @PORT_PLL_DCO_AMP_MASK, align 4
  %245 = xor i32 %244, -1
  %246 = load i32, i32* %5, align 4
  %247 = and i32 %246, %245
  store i32 %247, i32* %5, align 4
  %248 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %249 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 8
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %5, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %5, align 4
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* %8, align 4
  %257 = call i32 @BXT_PORT_PLL(i32 %255, i32 %256, i32 10)
  %258 = load i32, i32* %5, align 4
  %259 = call i32 @I915_WRITE(i32 %257, i32 %258)
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %8, align 4
  %262 = call i32 @BXT_PORT_PLL_EBB_4(i32 %260, i32 %261)
  %263 = call i32 @I915_READ(i32 %262)
  store i32 %263, i32* %5, align 4
  %264 = load i32, i32* @PORT_PLL_RECALIBRATE, align 4
  %265 = load i32, i32* %5, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %5, align 4
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %8, align 4
  %269 = call i32 @BXT_PORT_PLL_EBB_4(i32 %267, i32 %268)
  %270 = load i32, i32* %5, align 4
  %271 = call i32 @I915_WRITE(i32 %269, i32 %270)
  %272 = load i32, i32* @PORT_PLL_10BIT_CLK_ENABLE, align 4
  %273 = xor i32 %272, -1
  %274 = load i32, i32* %5, align 4
  %275 = and i32 %274, %273
  store i32 %275, i32* %5, align 4
  %276 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %277 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 9
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %5, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %5, align 4
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* %8, align 4
  %285 = call i32 @BXT_PORT_PLL_EBB_4(i32 %283, i32 %284)
  %286 = load i32, i32* %5, align 4
  %287 = call i32 @I915_WRITE(i32 %285, i32 %286)
  %288 = load i32, i32* %6, align 4
  %289 = call i32 @BXT_PORT_PLL_ENABLE(i32 %288)
  %290 = call i32 @I915_READ(i32 %289)
  store i32 %290, i32* %5, align 4
  %291 = load i32, i32* @PORT_PLL_ENABLE, align 4
  %292 = load i32, i32* %5, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* %5, align 4
  %294 = load i32, i32* %6, align 4
  %295 = call i32 @BXT_PORT_PLL_ENABLE(i32 %294)
  %296 = load i32, i32* %5, align 4
  %297 = call i32 @I915_WRITE(i32 %295, i32 %296)
  %298 = load i32, i32* %6, align 4
  %299 = call i32 @BXT_PORT_PLL_ENABLE(i32 %298)
  %300 = call i32 @POSTING_READ(i32 %299)
  %301 = load i32, i32* %6, align 4
  %302 = call i32 @BXT_PORT_PLL_ENABLE(i32 %301)
  %303 = call i32 @I915_READ(i32 %302)
  %304 = load i32, i32* @PORT_PLL_LOCK, align 4
  %305 = and i32 %303, %304
  %306 = call i64 @wait_for_us(i32 %305, i32 200)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %52
  %309 = load i32, i32* %6, align 4
  %310 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %309)
  br label %311

311:                                              ; preds = %308, %52
  %312 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %313 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %328

315:                                              ; preds = %311
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* %8, align 4
  %318 = call i32 @BXT_PORT_TX_DW5_LN0(i32 %316, i32 %317)
  %319 = call i32 @I915_READ(i32 %318)
  store i32 %319, i32* %5, align 4
  %320 = load i32, i32* @DCC_DELAY_RANGE_2, align 4
  %321 = load i32, i32* %5, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %5, align 4
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* %8, align 4
  %325 = call i32 @BXT_PORT_TX_DW5_GRP(i32 %323, i32 %324)
  %326 = load i32, i32* %5, align 4
  %327 = call i32 @I915_WRITE(i32 %325, i32 %326)
  br label %328

328:                                              ; preds = %315, %311
  %329 = load i32, i32* %7, align 4
  %330 = load i32, i32* %8, align 4
  %331 = call i32 @BXT_PORT_PCS_DW12_LN01(i32 %329, i32 %330)
  %332 = call i32 @I915_READ(i32 %331)
  store i32 %332, i32* %5, align 4
  %333 = load i32, i32* @LANE_STAGGER_MASK, align 4
  %334 = xor i32 %333, -1
  %335 = load i32, i32* %5, align 4
  %336 = and i32 %335, %334
  store i32 %336, i32* %5, align 4
  %337 = load i32, i32* @LANESTAGGER_STRAP_OVRD, align 4
  %338 = xor i32 %337, -1
  %339 = load i32, i32* %5, align 4
  %340 = and i32 %339, %338
  store i32 %340, i32* %5, align 4
  %341 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %342 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 10
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %5, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %5, align 4
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* %8, align 4
  %350 = call i32 @BXT_PORT_PCS_DW12_GRP(i32 %348, i32 %349)
  %351 = load i32, i32* %5, align 4
  %352 = call i32 @I915_WRITE(i32 %350, i32 %351)
  ret void
}

declare dso_local i32 @bxt_port_to_phy_channel(%struct.drm_i915_private*, i32, i32*, i32*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @BXT_PORT_PLL_ENABLE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @wait_for_us(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @BXT_PORT_PLL_EBB_4(i32, i32) #1

declare dso_local i32 @BXT_PORT_PLL_EBB_0(i32, i32) #1

declare dso_local i32 @BXT_PORT_PLL(i32, i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @BXT_PORT_TX_DW5_LN0(i32, i32) #1

declare dso_local i32 @BXT_PORT_TX_DW5_GRP(i32, i32) #1

declare dso_local i32 @BXT_PORT_PCS_DW12_LN01(i32, i32) #1

declare dso_local i32 @BXT_PORT_PCS_DW12_GRP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
