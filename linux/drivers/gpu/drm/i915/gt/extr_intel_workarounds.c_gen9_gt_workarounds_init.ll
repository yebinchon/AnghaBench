; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_gen9_gt_workarounds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_gen9_gt_workarounds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }

@GAM_ECOCHK = common dso_local global i32 0, align 4
@ECOCHK_DIS_TLB = common dso_local global i32 0, align 4
@MMCD_MISC_CTRL = common dso_local global i32 0, align 4
@MMCD_PCLA = common dso_local global i32 0, align 4
@MMCD_HOTSPOT_EN = common dso_local global i32 0, align 4
@BDW_DISABLE_HDC_INVALIDATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_wa_list*)* @gen9_gt_workarounds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen9_gt_workarounds_init(%struct.drm_i915_private* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = call i32 @IS_COFFEELAKE(%struct.drm_i915_private* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %10 = load i32, i32* @GAM_ECOCHK, align 4
  %11 = load i32, i32* @ECOCHK_DIS_TLB, align 4
  %12 = call i32 @wa_write_or(%struct.i915_wa_list* %9, i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %8, %2
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call i64 @HAS_LLC(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %19 = load i32, i32* @MMCD_MISC_CTRL, align 4
  %20 = load i32, i32* @MMCD_PCLA, align 4
  %21 = load i32, i32* @MMCD_HOTSPOT_EN, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @wa_write_or(%struct.i915_wa_list* %18, i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %17, %13
  %25 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %26 = load i32, i32* @GAM_ECOCHK, align 4
  %27 = load i32, i32* @BDW_DISABLE_HDC_INVALIDATION, align 4
  %28 = call i32 @wa_write_or(%struct.i915_wa_list* %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @wa_write_or(%struct.i915_wa_list*, i32, i32) #1

declare dso_local i64 @HAS_LLC(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
