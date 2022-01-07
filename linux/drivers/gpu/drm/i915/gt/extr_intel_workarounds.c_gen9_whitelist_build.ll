; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_gen9_whitelist_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_gen9_whitelist_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_wa_list = type { i32 }

@GEN9_CTX_PREEMPT_REG = common dso_local global i32 0, align 4
@GEN8_CS_CHICKEN1 = common dso_local global i32 0, align 4
@GEN8_HDC_CHICKEN1 = common dso_local global i32 0, align 4
@COMMON_SLICE_CHICKEN2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_wa_list*)* @gen9_whitelist_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen9_whitelist_build(%struct.i915_wa_list* %0) #0 {
  %2 = alloca %struct.i915_wa_list*, align 8
  store %struct.i915_wa_list* %0, %struct.i915_wa_list** %2, align 8
  %3 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %4 = load i32, i32* @GEN9_CTX_PREEMPT_REG, align 4
  %5 = call i32 @whitelist_reg(%struct.i915_wa_list* %3, i32 %4)
  %6 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %7 = load i32, i32* @GEN8_CS_CHICKEN1, align 4
  %8 = call i32 @whitelist_reg(%struct.i915_wa_list* %6, i32 %7)
  %9 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %10 = load i32, i32* @GEN8_HDC_CHICKEN1, align 4
  %11 = call i32 @whitelist_reg(%struct.i915_wa_list* %9, i32 %10)
  %12 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %13 = load i32, i32* @COMMON_SLICE_CHICKEN2, align 4
  %14 = call i32 @whitelist_reg(%struct.i915_wa_list* %12, i32 %13)
  ret void
}

declare dso_local i32 @whitelist_reg(%struct.i915_wa_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
