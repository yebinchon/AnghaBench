; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_hsw_vebox_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_hsw_vebox_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32 }

@RING_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @hsw_vebox_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_vebox_irq_disable(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %3 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %4 = load i32, i32* @RING_IMR, align 4
  %5 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %3, i32 %4, i32 -1)
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %10 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gen6_gt_pm_mask_irq(i32 %8, i32 %11)
  ret void
}

declare dso_local i32 @ENGINE_WRITE(%struct.intel_engine_cs*, i32, i32) #1

declare dso_local i32 @gen6_gt_pm_mask_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
