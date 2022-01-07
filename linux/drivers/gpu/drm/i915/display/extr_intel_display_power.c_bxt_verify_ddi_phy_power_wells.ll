; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_bxt_verify_ddi_phy_power_wells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_bxt_verify_ddi_phy_power_wells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_power_well = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BXT_DISP_PW_DPIO_CMN_A = common dso_local global i32 0, align 4
@VLV_DISP_PW_DPIO_CMN_BC = common dso_local global i32 0, align 4
@GLK_DISP_PW_DPIO_CMN_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @bxt_verify_ddi_phy_power_wells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_verify_ddi_phy_power_wells(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.i915_power_well*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = load i32, i32* @BXT_DISP_PW_DPIO_CMN_A, align 4
  %6 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %4, i32 %5)
  store %struct.i915_power_well* %6, %struct.i915_power_well** %3, align 8
  %7 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %8 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %13 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %14 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bxt_ddi_phy_verify_state(%struct.drm_i915_private* %12, i32 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = load i32, i32* @VLV_DISP_PW_DPIO_CMN_BC, align 4
  %23 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %21, i32 %22)
  store %struct.i915_power_well* %23, %struct.i915_power_well** %3, align 8
  %24 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %25 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %31 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bxt_ddi_phy_verify_state(%struct.drm_i915_private* %29, i32 %35)
  br label %37

37:                                               ; preds = %28, %20
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = load i32, i32* @GLK_DISP_PW_DPIO_CMN_C, align 4
  %44 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %42, i32 %43)
  store %struct.i915_power_well* %44, %struct.i915_power_well** %3, align 8
  %45 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %46 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %51 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %52 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bxt_ddi_phy_verify_state(%struct.drm_i915_private* %50, i32 %56)
  br label %58

58:                                               ; preds = %49, %41
  br label %59

59:                                               ; preds = %58, %37
  ret void
}

declare dso_local %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @bxt_ddi_phy_verify_state(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
