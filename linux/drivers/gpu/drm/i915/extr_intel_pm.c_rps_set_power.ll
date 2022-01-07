; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_rps_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_rps_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intel_rps }
%struct.intel_rps = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@GEN6_RP_UP_EI = common dso_local global i32 0, align 4
@GEN6_RP_UP_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_EI = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_RP_CONTROL = common dso_local global i32 0, align 4
@GEN6_RP_MEDIA_TURBO = common dso_local global i32 0, align 4
@GEN6_RP_MEDIA_HW_NORMAL_MODE = common dso_local global i32 0, align 4
@GEN6_RP_MEDIA_IS_GFX = common dso_local global i32 0, align 4
@GEN6_RP_ENABLE = common dso_local global i32 0, align 4
@GEN6_RP_UP_BUSY_AVG = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_IDLE_AVG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @rps_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rps_set_power(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_rps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.intel_rps* %12, %struct.intel_rps** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %14 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %19 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %94

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %29 [
    i32 128, label %26
    i32 130, label %27
    i32 129, label %28
  ]

26:                                               ; preds = %24
  store i32 16000, i32* %8, align 4
  store i32 95, i32* %6, align 4
  store i32 32000, i32* %9, align 4
  store i32 85, i32* %7, align 4
  br label %29

27:                                               ; preds = %24
  store i32 13000, i32* %8, align 4
  store i32 90, i32* %6, align 4
  store i32 32000, i32* %9, align 4
  store i32 75, i32* %7, align 4
  br label %29

28:                                               ; preds = %24
  store i32 10000, i32* %8, align 4
  store i32 85, i32* %6, align 4
  store i32 32000, i32* %9, align 4
  store i32 60, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %28, %27, %26
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %81

34:                                               ; preds = %29
  %35 = load i32, i32* @GEN6_RP_UP_EI, align 4
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @GT_INTERVAL_FROM_US(%struct.drm_i915_private* %36, i32 %37)
  %39 = call i32 @I915_WRITE(i32 %35, i32 %38)
  %40 = load i32, i32* @GEN6_RP_UP_THRESHOLD, align 4
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sdiv i32 %44, 100
  %46 = call i32 @GT_INTERVAL_FROM_US(%struct.drm_i915_private* %41, i32 %45)
  %47 = call i32 @I915_WRITE(i32 %40, i32 %46)
  %48 = load i32, i32* @GEN6_RP_DOWN_EI, align 4
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @GT_INTERVAL_FROM_US(%struct.drm_i915_private* %49, i32 %50)
  %52 = call i32 @I915_WRITE(i32 %48, i32 %51)
  %53 = load i32, i32* @GEN6_RP_DOWN_THRESHOLD, align 4
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sdiv i32 %57, 100
  %59 = call i32 @GT_INTERVAL_FROM_US(%struct.drm_i915_private* %54, i32 %58)
  %60 = call i32 @I915_WRITE(i32 %53, i32 %59)
  %61 = load i32, i32* @GEN6_RP_CONTROL, align 4
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %63 = call i32 @INTEL_GEN(%struct.drm_i915_private* %62)
  %64 = icmp sgt i32 %63, 9
  br i1 %64, label %65, label %66

65:                                               ; preds = %34
  br label %68

66:                                               ; preds = %34
  %67 = load i32, i32* @GEN6_RP_MEDIA_TURBO, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i32 [ 0, %65 ], [ %67, %66 ]
  %70 = load i32, i32* @GEN6_RP_MEDIA_HW_NORMAL_MODE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @GEN6_RP_MEDIA_IS_GFX, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @GEN6_RP_ENABLE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @GEN6_RP_UP_BUSY_AVG, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @GEN6_RP_DOWN_IDLE_AVG, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @I915_WRITE(i32 %61, i32 %79)
  br label %81

81:                                               ; preds = %68, %33
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %84 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %88 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %92 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  br label %94

94:                                               ; preds = %81, %23
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @GT_INTERVAL_FROM_US(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
