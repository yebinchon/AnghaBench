; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_enable_execlists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_enable_execlists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@GEN11_GFX_DISABLE_LEGACY_MODE = common dso_local global i32 0, align 4
@GFX_RUN_LIST_ENABLE = common dso_local global i32 0, align 4
@RING_MODE_GEN7 = common dso_local global i32 0, align 4
@RING_MI_MODE = common dso_local global i32 0, align 4
@STOP_RING = common dso_local global i32 0, align 4
@RING_HWS_PGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @enable_execlists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_execlists(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FORCEWAKE_ALL, align 4
  %8 = call i32 @assert_forcewakes_active(i32 %6, i32 %7)
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %10 = call i32 @intel_engine_set_hwsp_writemask(%struct.intel_engine_cs* %9, i32 -1)
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %12 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @INTEL_GEN(i32 %13)
  %15 = icmp sge i32 %14, 11
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @GEN11_GFX_DISABLE_LEGACY_MODE, align 4
  %18 = call i32 @_MASKED_BIT_ENABLE(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @GFX_RUN_LIST_ENABLE, align 4
  %21 = call i32 @_MASKED_BIT_ENABLE(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %24 = load i32, i32* @RING_MODE_GEN7, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ENGINE_WRITE_FW(%struct.intel_engine_cs* %23, i32 %24, i32 %25)
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %28 = load i32, i32* @RING_MI_MODE, align 4
  %29 = load i32, i32* @STOP_RING, align 4
  %30 = call i32 @_MASKED_BIT_DISABLE(i32 %29)
  %31 = call i32 @ENGINE_WRITE_FW(%struct.intel_engine_cs* %27, i32 %28, i32 %30)
  %32 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %33 = load i32, i32* @RING_HWS_PGA, align 4
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %35 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @i915_ggtt_offset(i32 %37)
  %39 = call i32 @ENGINE_WRITE_FW(%struct.intel_engine_cs* %32, i32 %33, i32 %38)
  %40 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %41 = load i32, i32* @RING_HWS_PGA, align 4
  %42 = call i32 @ENGINE_POSTING_READ(%struct.intel_engine_cs* %40, i32 %41)
  ret void
}

declare dso_local i32 @assert_forcewakes_active(i32, i32) #1

declare dso_local i32 @intel_engine_set_hwsp_writemask(%struct.intel_engine_cs*, i32) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @ENGINE_WRITE_FW(%struct.intel_engine_cs*, i32, i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i32 @i915_ggtt_offset(i32) #1

declare dso_local i32 @ENGINE_POSTING_READ(%struct.intel_engine_cs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
