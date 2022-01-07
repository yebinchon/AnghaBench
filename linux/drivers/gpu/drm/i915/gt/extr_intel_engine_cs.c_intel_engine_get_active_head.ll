; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_get_active_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_get_active_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@RING_ACTHD = common dso_local global i32 0, align 4
@RING_ACTHD_UDW = common dso_local global i32 0, align 4
@ACTHD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_engine_get_active_head(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = call i32 @INTEL_GEN(%struct.drm_i915_private* %8)
  %10 = icmp sge i32 %9, 8
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %13 = load i32, i32* @RING_ACTHD, align 4
  %14 = load i32, i32* @RING_ACTHD_UDW, align 4
  %15 = call i32 @ENGINE_READ64(%struct.intel_engine_cs* %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i32 @INTEL_GEN(%struct.drm_i915_private* %17)
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %22 = load i32, i32* @RING_ACTHD, align 4
  %23 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %16
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %26 = load i32, i32* @ACTHD, align 4
  %27 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %11
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @ENGINE_READ64(%struct.intel_engine_cs*, i32, i32) #1

declare dso_local i32 @ENGINE_READ(%struct.intel_engine_cs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
