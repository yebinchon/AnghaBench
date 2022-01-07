; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_gen9_ctx_workarounds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_gen9_ctx_workarounds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }

@COMMON_SLICE_CHICKEN2 = common dso_local global i32 0, align 4
@GEN9_PBE_COMPRESSED_HASH_SELECTION = common dso_local global i32 0, align 4
@GEN9_HALF_SLICE_CHICKEN7 = common dso_local global i32 0, align 4
@GEN9_SAMPLER_HASH_COMPRESSED_READ_ADDR = common dso_local global i32 0, align 4
@GEN8_ROW_CHICKEN = common dso_local global i32 0, align 4
@FLOW_CONTROL_ENABLE = common dso_local global i32 0, align 4
@PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE = common dso_local global i32 0, align 4
@GEN9_ENABLE_YV12_BUGFIX = common dso_local global i32 0, align 4
@GEN9_ENABLE_GPGPU_PREEMPTION = common dso_local global i32 0, align 4
@CACHE_MODE_1 = common dso_local global i32 0, align 4
@GEN8_4x4_STC_OPTIMIZATION_DISABLE = common dso_local global i32 0, align 4
@GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE = common dso_local global i32 0, align 4
@GEN9_HALF_SLICE_CHICKEN5 = common dso_local global i32 0, align 4
@GEN9_CCS_TLB_PREFETCH_ENABLE = common dso_local global i32 0, align 4
@HDC_CHICKEN0 = common dso_local global i32 0, align 4
@HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT = common dso_local global i32 0, align 4
@HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE = common dso_local global i32 0, align 4
@HDC_FORCE_NON_COHERENT = common dso_local global i32 0, align 4
@HALF_SLICE_CHICKEN3 = common dso_local global i32 0, align 4
@GEN8_SAMPLER_POWER_BYPASS_DIS = common dso_local global i32 0, align 4
@HALF_SLICE_CHICKEN2 = common dso_local global i32 0, align 4
@GEN8_ST_PO_DISABLE = common dso_local global i32 0, align 4
@GEN8_CS_CHICKEN1 = common dso_local global i32 0, align 4
@GEN9_PREEMPT_3D_OBJECT_LEVEL = common dso_local global i32 0, align 4
@GEN9_PREEMPT_GPGPU_LEVEL_MASK = common dso_local global i32 0, align 4
@GEN9_PREEMPT_GPGPU_COMMAND_LEVEL = common dso_local global i32 0, align 4
@GEN9_WM_CHICKEN3 = common dso_local global i32 0, align 4
@GEN9_FACTOR_IN_CLR_VAL_HIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_wa_list*)* @gen9_ctx_workarounds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen9_ctx_workarounds_init(%struct.intel_engine_cs* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %5, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %10 = call i64 @HAS_LLC(%struct.drm_i915_private* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @COMMON_SLICE_CHICKEN2, align 4
  %14 = load i32, i32* @GEN9_PBE_COMPRESSED_HASH_SELECTION, align 4
  %15 = call i32 @WA_SET_BIT_MASKED(i32 %13, i32 %14)
  %16 = load i32, i32* @GEN9_HALF_SLICE_CHICKEN7, align 4
  %17 = load i32, i32* @GEN9_SAMPLER_HASH_COMPRESSED_READ_ADDR, align 4
  %18 = call i32 @WA_SET_BIT_MASKED(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @GEN8_ROW_CHICKEN, align 4
  %21 = load i32, i32* @FLOW_CONTROL_ENABLE, align 4
  %22 = load i32, i32* @PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @WA_SET_BIT_MASKED(i32 %20, i32 %23)
  %25 = load i32, i32* @GEN9_HALF_SLICE_CHICKEN7, align 4
  %26 = load i32, i32* @GEN9_ENABLE_YV12_BUGFIX, align 4
  %27 = load i32, i32* @GEN9_ENABLE_GPGPU_PREEMPTION, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @WA_SET_BIT_MASKED(i32 %25, i32 %28)
  %30 = load i32, i32* @CACHE_MODE_1, align 4
  %31 = load i32, i32* @GEN8_4x4_STC_OPTIMIZATION_DISABLE, align 4
  %32 = load i32, i32* @GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @WA_SET_BIT_MASKED(i32 %30, i32 %33)
  %35 = load i32, i32* @GEN9_HALF_SLICE_CHICKEN5, align 4
  %36 = load i32, i32* @GEN9_CCS_TLB_PREFETCH_ENABLE, align 4
  %37 = call i32 @WA_CLR_BIT_MASKED(i32 %35, i32 %36)
  %38 = load i32, i32* @HDC_CHICKEN0, align 4
  %39 = load i32, i32* @HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT, align 4
  %40 = load i32, i32* @HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @WA_SET_BIT_MASKED(i32 %38, i32 %41)
  %43 = load i32, i32* @HDC_CHICKEN0, align 4
  %44 = load i32, i32* @HDC_FORCE_NON_COHERENT, align 4
  %45 = call i32 @WA_SET_BIT_MASKED(i32 %43, i32 %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %47 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %19
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %51 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %55 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %49, %19
  %58 = load i32, i32* @HALF_SLICE_CHICKEN3, align 4
  %59 = load i32, i32* @GEN8_SAMPLER_POWER_BYPASS_DIS, align 4
  %60 = call i32 @WA_SET_BIT_MASKED(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @HALF_SLICE_CHICKEN2, align 4
  %63 = load i32, i32* @GEN8_ST_PO_DISABLE, align 4
  %64 = call i32 @WA_SET_BIT_MASKED(i32 %62, i32 %63)
  %65 = load i32, i32* @GEN8_CS_CHICKEN1, align 4
  %66 = load i32, i32* @GEN9_PREEMPT_3D_OBJECT_LEVEL, align 4
  %67 = call i32 @WA_CLR_BIT_MASKED(i32 %65, i32 %66)
  %68 = load i32, i32* @GEN8_CS_CHICKEN1, align 4
  %69 = load i32, i32* @GEN9_PREEMPT_GPGPU_LEVEL_MASK, align 4
  %70 = load i32, i32* @GEN9_PREEMPT_GPGPU_COMMAND_LEVEL, align 4
  %71 = call i32 @WA_SET_FIELD_MASKED(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %73 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %61
  %76 = load i32, i32* @GEN9_WM_CHICKEN3, align 4
  %77 = load i32, i32* @GEN9_FACTOR_IN_CLR_VAL_HIZ, align 4
  %78 = call i32 @WA_SET_BIT_MASKED(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %61
  ret void
}

declare dso_local i64 @HAS_LLC(%struct.drm_i915_private*) #1

declare dso_local i32 @WA_SET_BIT_MASKED(i32, i32) #1

declare dso_local i32 @WA_CLR_BIT_MASKED(i32, i32) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @WA_SET_FIELD_MASKED(i32, i32, i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
