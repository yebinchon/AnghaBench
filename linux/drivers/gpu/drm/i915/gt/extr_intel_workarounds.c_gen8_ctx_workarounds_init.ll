; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_gen8_ctx_workarounds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_gen8_ctx_workarounds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }
%struct.i915_wa_list = type { i32 }

@INSTPM = common dso_local global i32 0, align 4
@INSTPM_FORCE_ORDERING = common dso_local global i32 0, align 4
@MI_MODE = common dso_local global i32 0, align 4
@ASYNC_FLIP_PERF_DISABLE = common dso_local global i32 0, align 4
@GEN8_ROW_CHICKEN = common dso_local global i32 0, align 4
@PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE = common dso_local global i32 0, align 4
@HDC_CHICKEN0 = common dso_local global i32 0, align 4
@HDC_DONOT_FETCH_MEM_WHEN_MASKED = common dso_local global i32 0, align 4
@HDC_FORCE_NON_COHERENT = common dso_local global i32 0, align 4
@CACHE_MODE_0_GEN7 = common dso_local global i32 0, align 4
@HIZ_RAW_STALL_OPT_DISABLE = common dso_local global i32 0, align 4
@CACHE_MODE_1 = common dso_local global i32 0, align 4
@GEN8_4x4_STC_OPTIMIZATION_DISABLE = common dso_local global i32 0, align 4
@GEN7_GT_MODE = common dso_local global i32 0, align 4
@GEN6_WIZ_HASHING_MASK = common dso_local global i32 0, align 4
@GEN6_WIZ_HASHING_16x4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_wa_list*)* @gen8_ctx_workarounds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen8_ctx_workarounds_init(%struct.intel_engine_cs* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %5 = load i32, i32* @INSTPM, align 4
  %6 = load i32, i32* @INSTPM_FORCE_ORDERING, align 4
  %7 = call i32 @WA_SET_BIT_MASKED(i32 %5, i32 %6)
  %8 = load i32, i32* @MI_MODE, align 4
  %9 = load i32, i32* @ASYNC_FLIP_PERF_DISABLE, align 4
  %10 = call i32 @WA_SET_BIT_MASKED(i32 %8, i32 %9)
  %11 = load i32, i32* @GEN8_ROW_CHICKEN, align 4
  %12 = load i32, i32* @PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE, align 4
  %13 = call i32 @WA_SET_BIT_MASKED(i32 %11, i32 %12)
  %14 = load i32, i32* @HDC_CHICKEN0, align 4
  %15 = load i32, i32* @HDC_DONOT_FETCH_MEM_WHEN_MASKED, align 4
  %16 = load i32, i32* @HDC_FORCE_NON_COHERENT, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @WA_SET_BIT_MASKED(i32 %14, i32 %17)
  %19 = load i32, i32* @CACHE_MODE_0_GEN7, align 4
  %20 = load i32, i32* @HIZ_RAW_STALL_OPT_DISABLE, align 4
  %21 = call i32 @WA_CLR_BIT_MASKED(i32 %19, i32 %20)
  %22 = load i32, i32* @CACHE_MODE_1, align 4
  %23 = load i32, i32* @GEN8_4x4_STC_OPTIMIZATION_DISABLE, align 4
  %24 = call i32 @WA_SET_BIT_MASKED(i32 %22, i32 %23)
  %25 = load i32, i32* @GEN7_GT_MODE, align 4
  %26 = load i32, i32* @GEN6_WIZ_HASHING_MASK, align 4
  %27 = load i32, i32* @GEN6_WIZ_HASHING_16x4, align 4
  %28 = call i32 @WA_SET_FIELD_MASKED(i32 %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @WA_SET_BIT_MASKED(i32, i32) #1

declare dso_local i32 @WA_CLR_BIT_MASKED(i32, i32) #1

declare dso_local i32 @WA_SET_FIELD_MASKED(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
