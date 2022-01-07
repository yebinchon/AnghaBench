; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_vlv_force_gfx_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_vlv_force_gfx_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@VLV_GTLC_SURVIVABILITY_REG = common dso_local global i32 0, align 4
@VLV_GFX_CLK_FORCE_ON_BIT = common dso_local global i32 0, align 4
@VLV_GFX_CLK_STATUS_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"timeout waiting for GFX clock force-on (%08x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlv_force_gfx_clock(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @VLV_GTLC_SURVIVABILITY_REG, align 4
  %9 = call i32 @I915_READ(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @VLV_GFX_CLK_FORCE_ON_BIT, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @VLV_GFX_CLK_FORCE_ON_BIT, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @VLV_GTLC_SURVIVABILITY_REG, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @I915_WRITE(i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %42

27:                                               ; preds = %20
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = load i32, i32* @VLV_GTLC_SURVIVABILITY_REG, align 4
  %31 = load i32, i32* @VLV_GFX_CLK_STATUS_BIT, align 4
  %32 = load i32, i32* @VLV_GFX_CLK_STATUS_BIT, align 4
  %33 = call i32 @intel_wait_for_register(i32* %29, i32 %30, i32 %31, i32 %32, i32 20)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @VLV_GTLC_SURVIVABILITY_REG, align 4
  %38 = call i32 @I915_READ(i32 %37)
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %27
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %26
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @intel_wait_for_register(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
