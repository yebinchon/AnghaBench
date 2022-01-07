; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_update_pfit_vscale_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_update_pfit_vscale_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_overlay = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@PFIT_CONTROL = common dso_local global i32 0, align 4
@PFIT_PGM_RATIOS = common dso_local global i32 0, align 4
@PFIT_VERT_SCALE_SHIFT_965 = common dso_local global i32 0, align 4
@VERT_AUTO_SCALE = common dso_local global i32 0, align 4
@PFIT_AUTO_RATIOS = common dso_local global i32 0, align 4
@PFIT_VERT_SCALE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_overlay*)* @update_pfit_vscale_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pfit_vscale_ratio(%struct.intel_overlay* %0) #0 {
  %2 = alloca %struct.intel_overlay*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_overlay* %0, %struct.intel_overlay** %2, align 8
  %6 = load %struct.intel_overlay*, %struct.intel_overlay** %2, align 8
  %7 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %6, i32 0, i32 1
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load i32, i32* @PFIT_CONTROL, align 4
  %10 = call i32 @I915_READ(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = call i32 @INTEL_GEN(%struct.drm_i915_private* %11)
  %13 = icmp sge i32 %12, 4
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @PFIT_PGM_RATIOS, align 4
  %16 = call i32 @I915_READ(i32 %15)
  %17 = load i32, i32* @PFIT_VERT_SCALE_SHIFT_965, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %5, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @VERT_AUTO_SCALE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @PFIT_AUTO_RATIOS, align 4
  %26 = call i32 @I915_READ(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @PFIT_PGM_RATIOS, align 4
  %29 = call i32 @I915_READ(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @PFIT_VERT_SCALE_SHIFT, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %14
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.intel_overlay*, %struct.intel_overlay** %2, align 8
  %37 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
