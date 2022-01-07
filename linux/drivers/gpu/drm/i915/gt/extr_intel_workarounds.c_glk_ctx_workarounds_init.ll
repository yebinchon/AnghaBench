; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_glk_ctx_workarounds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_glk_ctx_workarounds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }
%struct.i915_wa_list = type { i32 }

@COMMON_SLICE_CHICKEN2 = common dso_local global i32 0, align 4
@GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_wa_list*)* @glk_ctx_workarounds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glk_ctx_workarounds_init(%struct.intel_engine_cs* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %6 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %7 = call i32 @gen9_ctx_workarounds_init(%struct.intel_engine_cs* %5, %struct.i915_wa_list* %6)
  %8 = load i32, i32* @COMMON_SLICE_CHICKEN2, align 4
  %9 = load i32, i32* @GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION, align 4
  %10 = call i32 @WA_SET_BIT_MASKED(i32 %8, i32 %9)
  ret void
}

declare dso_local i32 @gen9_ctx_workarounds_init(%struct.intel_engine_cs*, %struct.i915_wa_list*) #1

declare dso_local i32 @WA_SET_BIT_MASKED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
