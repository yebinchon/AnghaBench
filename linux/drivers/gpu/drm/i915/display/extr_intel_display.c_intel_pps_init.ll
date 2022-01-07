; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PCH_PPS_BASE = common dso_local global i32 0, align 4
@VLV_PPS_BASE = common dso_local global i32 0, align 4
@PPS_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @intel_pps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pps_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @PCH_PPS_BASE, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %31

14:                                               ; preds = %6
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @VLV_PPS_BASE, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @PPS_BASE, align 4
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %10
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = call i32 @intel_pps_unlock_regs_wa(%struct.drm_i915_private* %32)
  ret void
}

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_pps_unlock_regs_wa(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
