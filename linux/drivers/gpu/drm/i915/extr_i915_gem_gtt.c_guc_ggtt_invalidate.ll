; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_guc_ggtt_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_guc_ggtt_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ggtt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@GEN8_GTCR = common dso_local global i32 0, align 4
@GEN8_GTCR_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_ggtt*)* @guc_ggtt_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_ggtt_invalidate(%struct.i915_ggtt* %0) #0 {
  %2 = alloca %struct.i915_ggtt*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %2, align 8
  %4 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %5 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  store %struct.intel_uncore* %9, %struct.intel_uncore** %3, align 8
  %10 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %11 = call i32 @gen6_ggtt_invalidate(%struct.i915_ggtt* %10)
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %13 = load i32, i32* @GEN8_GTCR, align 4
  %14 = load i32, i32* @GEN8_GTCR_INVALIDATE, align 4
  %15 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %12, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @gen6_ggtt_invalidate(%struct.i915_ggtt*) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
