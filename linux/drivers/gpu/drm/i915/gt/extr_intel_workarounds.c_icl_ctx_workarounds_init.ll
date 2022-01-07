; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_icl_ctx_workarounds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_icl_ctx_workarounds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }

@GEN8_L3CNTLREG = common dso_local global i32 0, align 4
@GEN8_ERRDETBCTRL = common dso_local global i32 0, align 4
@ICL_REVID_A0 = common dso_local global i32 0, align 4
@ICL_REVID_B0 = common dso_local global i32 0, align 4
@GEN7_ROW_CHICKEN2 = common dso_local global i32 0, align 4
@PUSH_CONSTANT_DEREF_DISABLE = common dso_local global i32 0, align 4
@ICL_HDC_MODE = common dso_local global i32 0, align 4
@HDC_FORCE_NON_COHERENT = common dso_local global i32 0, align 4
@GEN11_TDL_CLOCK_GATING_FIX_DISABLE = common dso_local global i32 0, align 4
@GEN11_COMMON_SLICE_CHICKEN3 = common dso_local global i32 0, align 4
@GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC = common dso_local global i32 0, align 4
@GEN10_CACHE_MODE_SS = common dso_local global i32 0, align 4
@FLOAT_BLEND_OPTIMIZATION_ENABLE = common dso_local global i32 0, align 4
@GEN8_CS_CHICKEN1 = common dso_local global i32 0, align 4
@GEN9_PREEMPT_GPGPU_LEVEL_MASK = common dso_local global i32 0, align 4
@GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL = common dso_local global i32 0, align 4
@GEN10_SAMPLER_MODE = common dso_local global i32 0, align 4
@GEN11_SAMPLER_ENABLE_HEADLESS_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_wa_list*)* @icl_ctx_workarounds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_ctx_workarounds_init(%struct.intel_engine_cs* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 1
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %5, align 8
  %9 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %10 = load i32, i32* @GEN8_L3CNTLREG, align 4
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %12 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GEN8_L3CNTLREG, align 4
  %15 = call i32 @intel_uncore_read(i32 %13, i32 %14)
  %16 = load i32, i32* @GEN8_ERRDETBCTRL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @wa_write(%struct.i915_wa_list* %9, i32 %10, i32 %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %20 = load i32, i32* @ICL_REVID_A0, align 4
  %21 = load i32, i32* @ICL_REVID_B0, align 4
  %22 = call i64 @IS_ICL_REVID(%struct.drm_i915_private* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @GEN7_ROW_CHICKEN2, align 4
  %26 = load i32, i32* @PUSH_CONSTANT_DEREF_DISABLE, align 4
  %27 = call i32 @WA_SET_BIT_MASKED(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @ICL_HDC_MODE, align 4
  %30 = load i32, i32* @HDC_FORCE_NON_COHERENT, align 4
  %31 = call i32 @WA_SET_BIT_MASKED(i32 %29, i32 %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %33 = load i32, i32* @ICL_REVID_A0, align 4
  %34 = load i32, i32* @ICL_REVID_A0, align 4
  %35 = call i64 @IS_ICL_REVID(%struct.drm_i915_private* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @GEN7_ROW_CHICKEN2, align 4
  %39 = load i32, i32* @GEN11_TDL_CLOCK_GATING_FIX_DISABLE, align 4
  %40 = call i32 @WA_SET_BIT_MASKED(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %28
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = load i32, i32* @ICL_REVID_A0, align 4
  %44 = load i32, i32* @ICL_REVID_A0, align 4
  %45 = call i64 @IS_ICL_REVID(%struct.drm_i915_private* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @GEN11_COMMON_SLICE_CHICKEN3, align 4
  %49 = load i32, i32* @GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC, align 4
  %50 = call i32 @WA_SET_BIT_MASKED(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %53 = load i32, i32* @GEN10_CACHE_MODE_SS, align 4
  %54 = load i32, i32* @FLOAT_BLEND_OPTIMIZATION_ENABLE, align 4
  %55 = call i32 @_MASKED_BIT_ENABLE(i32 %54)
  %56 = call i32 @wa_write_masked_or(%struct.i915_wa_list* %52, i32 %53, i32 0, i32 %55)
  %57 = load i32, i32* @GEN8_CS_CHICKEN1, align 4
  %58 = load i32, i32* @GEN9_PREEMPT_GPGPU_LEVEL_MASK, align 4
  %59 = load i32, i32* @GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL, align 4
  %60 = call i32 @WA_SET_FIELD_MASKED(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @GEN10_SAMPLER_MODE, align 4
  %62 = load i32, i32* @GEN11_SAMPLER_ENABLE_HEADLESS_MSG, align 4
  %63 = call i32 @WA_SET_BIT_MASKED(i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @wa_write(%struct.i915_wa_list*, i32, i32) #1

declare dso_local i32 @intel_uncore_read(i32, i32) #1

declare dso_local i64 @IS_ICL_REVID(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @WA_SET_BIT_MASKED(i32, i32) #1

declare dso_local i32 @wa_write_masked_or(%struct.i915_wa_list*, i32, i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @WA_SET_FIELD_MASKED(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
