; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_cherryview_rps_max_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_cherryview_rps_max_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FB_GFX_FMAX_AT_VMAX_FUSE = common dso_local global i32 0, align 4
@FB_GFX_FMAX_AT_VMAX_2SS4EU_FUSE_SHIFT = common dso_local global i32 0, align 4
@FB_GFX_FMAX_AT_VMAX_2SS6EU_FUSE_SHIFT = common dso_local global i32 0, align 4
@FB_GFX_FMAX_AT_VMAX_2SS8EU_FUSE_SHIFT = common dso_local global i32 0, align 4
@FB_GFX_FREQ_FUSE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @cherryview_rps_max_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cherryview_rps_max_freq(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = load i32, i32* @FB_GFX_FMAX_AT_VMAX_FUSE, align 4
  %7 = call i32 @vlv_punit_read(%struct.drm_i915_private* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = call %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %22 [
    i32 8, label %13
    i32 12, label %17
    i32 16, label %21
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @FB_GFX_FMAX_AT_VMAX_2SS4EU_FUSE_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %4, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @FB_GFX_FMAX_AT_VMAX_2SS6EU_FUSE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %1, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @FB_GFX_FMAX_AT_VMAX_2SS8EU_FUSE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %17, %13
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @FB_GFX_FREQ_FUSE_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @vlv_punit_read(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
