; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_bdw_ctx_workarounds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_bdw_ctx_workarounds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }

@GEN8_ROW_CHICKEN = common dso_local global i32 0, align 4
@STALL_DOP_GATING_DISABLE = common dso_local global i32 0, align 4
@GEN7_ROW_CHICKEN2 = common dso_local global i32 0, align 4
@DOP_CLOCK_GATING_DISABLE = common dso_local global i32 0, align 4
@HALF_SLICE_CHICKEN3 = common dso_local global i32 0, align 4
@GEN8_SAMPLER_POWER_BYPASS_DIS = common dso_local global i32 0, align 4
@HDC_CHICKEN0 = common dso_local global i32 0, align 4
@HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT = common dso_local global i32 0, align 4
@HDC_FENCE_DEST_SLM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_wa_list*)* @bdw_ctx_workarounds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdw_ctx_workarounds_init(%struct.intel_engine_cs* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %5, align 8
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %10 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %11 = call i32 @gen8_ctx_workarounds_init(%struct.intel_engine_cs* %9, %struct.i915_wa_list* %10)
  %12 = load i32, i32* @GEN8_ROW_CHICKEN, align 4
  %13 = load i32, i32* @STALL_DOP_GATING_DISABLE, align 4
  %14 = call i32 @WA_SET_BIT_MASKED(i32 %12, i32 %13)
  %15 = load i32, i32* @GEN7_ROW_CHICKEN2, align 4
  %16 = load i32, i32* @DOP_CLOCK_GATING_DISABLE, align 4
  %17 = call i32 @WA_SET_BIT_MASKED(i32 %15, i32 %16)
  %18 = load i32, i32* @HALF_SLICE_CHICKEN3, align 4
  %19 = load i32, i32* @GEN8_SAMPLER_POWER_BYPASS_DIS, align 4
  %20 = call i32 @WA_SET_BIT_MASKED(i32 %18, i32 %19)
  %21 = load i32, i32* @HDC_CHICKEN0, align 4
  %22 = load i32, i32* @HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %24 = call i64 @IS_BDW_GT3(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @HDC_FENCE_DEST_SLM_DISABLE, align 4
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = or i32 %22, %30
  %32 = call i32 @WA_SET_BIT_MASKED(i32 %21, i32 %31)
  ret void
}

declare dso_local i32 @gen8_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i32 @WA_SET_BIT_MASKED(i32, i32) #1

declare dso_local i64 @IS_BDW_GT3(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
