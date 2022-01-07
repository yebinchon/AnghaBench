; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_setup_bcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_setup_bcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@gen6_ring_flush = common dso_local global i32 0, align 4
@GT_BLT_USER_INTERRUPT = common dso_local global i32 0, align 4
@gen6_xcs_emit_breadcrumb = common dso_local global i32 0, align 4
@gen7_xcs_emit_breadcrumb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @setup_bcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_bcs(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 3
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load i32, i32* @gen6_ring_flush, align 4
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @GT_BLT_USER_INTERRUPT, align 4
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %12 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = call i64 @IS_GEN(%struct.drm_i915_private* %13, i32 6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @gen6_xcs_emit_breadcrumb, align 4
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %19 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @gen7_xcs_emit_breadcrumb, align 4
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %23 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %16
  ret void
}

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
