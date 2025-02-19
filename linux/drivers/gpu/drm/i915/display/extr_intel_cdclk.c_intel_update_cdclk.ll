; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_update_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_update_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.drm_i915_private.0*, %struct.TYPE_6__*)* }
%struct.drm_i915_private.0 = type opaque

@GMBUSFREQ_VLV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_update_cdclk(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32 (%struct.drm_i915_private.0*, %struct.TYPE_6__*)*, i32 (%struct.drm_i915_private.0*, %struct.TYPE_6__*)** %5, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = bitcast %struct.drm_i915_private* %7 to %struct.drm_i915_private.0*
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = call i32 %6(%struct.drm_i915_private.0* %8, %struct.TYPE_6__* %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @GMBUSFREQ_VLV, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @DIV_ROUND_UP(i32 %26, i32 1000)
  %28 = call i32 @I915_WRITE(i32 %21, i32 %27)
  br label %29

29:                                               ; preds = %20, %16
  ret void
}

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
