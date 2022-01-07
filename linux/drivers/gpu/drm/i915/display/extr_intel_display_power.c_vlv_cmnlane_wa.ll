; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_vlv_cmnlane_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_vlv_cmnlane_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_power_well = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.drm_i915_private*, %struct.i915_power_well*)*, i32 (%struct.drm_i915_private*, %struct.i915_power_well*)*, i64 (%struct.drm_i915_private*, %struct.i915_power_well*)* }

@VLV_DISP_PW_DPIO_CMN_BC = common dso_local global i32 0, align 4
@VLV_DISP_PW_DISP2D = common dso_local global i32 0, align 4
@DPIO_CTL = common dso_local global i32 0, align 4
@DPIO_CMNRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"toggling display PHY side reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @vlv_cmnlane_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_cmnlane_wa(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.i915_power_well*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = load i32, i32* @VLV_DISP_PW_DPIO_CMN_BC, align 4
  %7 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %5, i32 %6)
  store %struct.i915_power_well* %7, %struct.i915_power_well** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = load i32, i32* @VLV_DISP_PW_DISP2D, align 4
  %10 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %8, i32 %9)
  store %struct.i915_power_well* %10, %struct.i915_power_well** %4, align 8
  %11 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %12 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i64 (%struct.drm_i915_private*, %struct.i915_power_well*)*, i64 (%struct.drm_i915_private*, %struct.i915_power_well*)** %16, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %20 = call i64 %17(%struct.drm_i915_private* %18, %struct.i915_power_well* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %24 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64 (%struct.drm_i915_private*, %struct.i915_power_well*)*, i64 (%struct.drm_i915_private*, %struct.i915_power_well*)** %28, align 8
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %32 = call i64 %29(%struct.drm_i915_private* %30, %struct.i915_power_well* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load i32, i32* @DPIO_CTL, align 4
  %36 = call i32 @I915_READ(i32 %35)
  %37 = load i32, i32* @DPIO_CMNRST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %63

41:                                               ; preds = %34, %22, %1
  %42 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %44 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32 (%struct.drm_i915_private*, %struct.i915_power_well*)*, i32 (%struct.drm_i915_private*, %struct.i915_power_well*)** %48, align 8
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %51 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %52 = call i32 %49(%struct.drm_i915_private* %50, %struct.i915_power_well* %51)
  %53 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %54 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.drm_i915_private*, %struct.i915_power_well*)*, i32 (%struct.drm_i915_private*, %struct.i915_power_well*)** %58, align 8
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = load %struct.i915_power_well*, %struct.i915_power_well** %3, align 8
  %62 = call i32 %59(%struct.drm_i915_private* %60, %struct.i915_power_well* %61)
  br label %63

63:                                               ; preds = %41, %40
  ret void
}

declare dso_local %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
