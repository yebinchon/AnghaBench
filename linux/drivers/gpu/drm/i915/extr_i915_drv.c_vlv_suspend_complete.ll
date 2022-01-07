; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_vlv_suspend_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_vlv_suspend_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@VLV_GTLC_RENDER_CTX_EXISTS = common dso_local global i32 0, align 4
@VLV_GTLC_MEDIA_CTX_EXISTS = common dso_local global i32 0, align 4
@VLV_GTLC_WAKE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @vlv_suspend_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_suspend_complete(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = call i32 @vlv_wait_for_gt_wells(%struct.drm_i915_private* %6, i32 0)
  %8 = load i32, i32* @VLV_GTLC_RENDER_CTX_EXISTS, align 4
  %9 = load i32, i32* @VLV_GTLC_MEDIA_CTX_EXISTS, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @VLV_GTLC_WAKE_CTRL, align 4
  %12 = call i32 @I915_READ(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = call i32 @vlv_check_no_gt_access(%struct.drm_i915_private* %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = call i32 @vlv_force_gfx_clock(%struct.drm_i915_private* %21, i32 1)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %44

26:                                               ; preds = %1
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i32 @vlv_allow_gt_wake(%struct.drm_i915_private* %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %41

32:                                               ; preds = %26
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = call i32 @vlv_save_gunit_s0ix_state(%struct.drm_i915_private* %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = call i32 @vlv_force_gfx_clock(%struct.drm_i915_private* %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %48

41:                                               ; preds = %39, %31
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = call i32 @vlv_allow_gt_wake(%struct.drm_i915_private* %42, i32 1)
  br label %44

44:                                               ; preds = %41, %25
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = call i32 @vlv_force_gfx_clock(%struct.drm_i915_private* %45, i32 0)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @vlv_wait_for_gt_wells(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @vlv_check_no_gt_access(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_force_gfx_clock(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_allow_gt_wake(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_save_gunit_s0ix_state(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
