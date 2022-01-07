; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_cnl_ctx_workarounds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_cnl_ctx_workarounds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }

@CNL_HDC_CHICKEN0 = common dso_local global i32 0, align 4
@HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT = common dso_local global i32 0, align 4
@CNL_REVID_B0 = common dso_local global i32 0, align 4
@GEN8_ROW_CHICKEN = common dso_local global i32 0, align 4
@THROTTLE_12_5 = common dso_local global i32 0, align 4
@COMMON_SLICE_CHICKEN2 = common dso_local global i32 0, align 4
@GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION = common dso_local global i32 0, align 4
@GEN8_CSC2_SBE_VUE_CACHE_CONSERVATIVE = common dso_local global i32 0, align 4
@GEN7_ROW_CHICKEN2 = common dso_local global i32 0, align 4
@PUSH_CONSTANT_DEREF_DISABLE = common dso_local global i32 0, align 4
@HALF_SLICE_CHICKEN3 = common dso_local global i32 0, align 4
@CNL_FAST_ANISO_L1_BANKING_FIX = common dso_local global i32 0, align 4
@GEN8_CS_CHICKEN1 = common dso_local global i32 0, align 4
@GEN9_PREEMPT_3D_OBJECT_LEVEL = common dso_local global i32 0, align 4
@GEN9_PREEMPT_GPGPU_LEVEL_MASK = common dso_local global i32 0, align 4
@GEN9_PREEMPT_GPGPU_COMMAND_LEVEL = common dso_local global i32 0, align 4
@DISABLE_EARLY_EOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_wa_list*)* @cnl_ctx_workarounds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_ctx_workarounds_init(%struct.intel_engine_cs* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %5, align 8
  %9 = load i32, i32* @CNL_HDC_CHICKEN0, align 4
  %10 = load i32, i32* @HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT, align 4
  %11 = call i32 @WA_SET_BIT_MASKED(i32 %9, i32 %10)
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = load i32, i32* @CNL_REVID_B0, align 4
  %14 = load i32, i32* @CNL_REVID_B0, align 4
  %15 = call i64 @IS_CNL_REVID(%struct.drm_i915_private* %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @GEN8_ROW_CHICKEN, align 4
  %19 = load i32, i32* @THROTTLE_12_5, align 4
  %20 = call i32 @WA_SET_BIT_MASKED(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @COMMON_SLICE_CHICKEN2, align 4
  %23 = load i32, i32* @GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION, align 4
  %24 = call i32 @WA_SET_BIT_MASKED(i32 %22, i32 %23)
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %26 = load i32, i32* @CNL_REVID_B0, align 4
  %27 = call i64 @IS_CNL_REVID(%struct.drm_i915_private* %25, i32 0, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @COMMON_SLICE_CHICKEN2, align 4
  %31 = load i32, i32* @GEN8_CSC2_SBE_VUE_CACHE_CONSERVATIVE, align 4
  %32 = call i32 @WA_SET_BIT_MASKED(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32, i32* @GEN7_ROW_CHICKEN2, align 4
  %35 = load i32, i32* @PUSH_CONSTANT_DEREF_DISABLE, align 4
  %36 = call i32 @WA_SET_BIT_MASKED(i32 %34, i32 %35)
  %37 = load i32, i32* @HALF_SLICE_CHICKEN3, align 4
  %38 = load i32, i32* @CNL_FAST_ANISO_L1_BANKING_FIX, align 4
  %39 = call i32 @WA_SET_BIT_MASKED(i32 %37, i32 %38)
  %40 = load i32, i32* @GEN8_CS_CHICKEN1, align 4
  %41 = load i32, i32* @GEN9_PREEMPT_3D_OBJECT_LEVEL, align 4
  %42 = call i32 @WA_CLR_BIT_MASKED(i32 %40, i32 %41)
  %43 = load i32, i32* @GEN8_CS_CHICKEN1, align 4
  %44 = load i32, i32* @GEN9_PREEMPT_GPGPU_LEVEL_MASK, align 4
  %45 = load i32, i32* @GEN9_PREEMPT_GPGPU_COMMAND_LEVEL, align 4
  %46 = call i32 @WA_SET_FIELD_MASKED(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @GEN8_ROW_CHICKEN, align 4
  %48 = load i32, i32* @DISABLE_EARLY_EOT, align 4
  %49 = call i32 @WA_SET_BIT_MASKED(i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @WA_SET_BIT_MASKED(i32, i32) #1

declare dso_local i64 @IS_CNL_REVID(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @WA_CLR_BIT_MASKED(i32, i32) #1

declare dso_local i32 @WA_SET_FIELD_MASKED(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
