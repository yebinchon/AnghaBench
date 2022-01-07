; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_init_unused_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_init_unused_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@PRB1_BASE = common dso_local global i32 0, align 4
@SRB0_BASE = common dso_local global i32 0, align 4
@SRB1_BASE = common dso_local global i32 0, align 4
@SRB2_BASE = common dso_local global i32 0, align 4
@SRB3_BASE = common dso_local global i32 0, align 4
@PRB2_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*)* @init_unused_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_unused_rings(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %4 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %5 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i64 @IS_I830(%struct.drm_i915_private* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %12 = load i32, i32* @PRB1_BASE, align 4
  %13 = call i32 @init_unused_ring(%struct.intel_gt* %11, i32 %12)
  %14 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %15 = load i32, i32* @SRB0_BASE, align 4
  %16 = call i32 @init_unused_ring(%struct.intel_gt* %14, i32 %15)
  %17 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %18 = load i32, i32* @SRB1_BASE, align 4
  %19 = call i32 @init_unused_ring(%struct.intel_gt* %17, i32 %18)
  %20 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %21 = load i32, i32* @SRB2_BASE, align 4
  %22 = call i32 @init_unused_ring(%struct.intel_gt* %20, i32 %21)
  %23 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %24 = load i32, i32* @SRB3_BASE, align 4
  %25 = call i32 @init_unused_ring(%struct.intel_gt* %23, i32 %24)
  br label %50

26:                                               ; preds = %1
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i64 @IS_GEN(%struct.drm_i915_private* %27, i32 2)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %32 = load i32, i32* @SRB0_BASE, align 4
  %33 = call i32 @init_unused_ring(%struct.intel_gt* %31, i32 %32)
  %34 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %35 = load i32, i32* @SRB1_BASE, align 4
  %36 = call i32 @init_unused_ring(%struct.intel_gt* %34, i32 %35)
  br label %49

37:                                               ; preds = %26
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = call i64 @IS_GEN(%struct.drm_i915_private* %38, i32 3)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %43 = load i32, i32* @PRB1_BASE, align 4
  %44 = call i32 @init_unused_ring(%struct.intel_gt* %42, i32 %43)
  %45 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %46 = load i32, i32* @PRB2_BASE, align 4
  %47 = call i32 @init_unused_ring(%struct.intel_gt* %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %37
  br label %49

49:                                               ; preds = %48, %30
  br label %50

50:                                               ; preds = %49, %10
  ret void
}

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i32 @init_unused_ring(%struct.intel_gt*, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
