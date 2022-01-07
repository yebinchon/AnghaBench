; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_tiling.c_i915_tiling_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_tiling.c_i915_tiling_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@I915_TILING_NONE = common dso_local global i32 0, align 4
@I915_TILING_LAST = common dso_local global i32 0, align 4
@GEN7_FENCE_MAX_PITCH_VAL = common dso_local global i32 0, align 4
@I965_FENCE_MAX_PITCH_VAL = common dso_local global i32 0, align 4
@I915_TILING_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*, i32, i32)* @i915_tiling_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_tiling_ok(%struct.drm_i915_gem_object* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %11 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @I915_TILING_NONE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %81

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @I915_TILING_LAST, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %81

24:                                               ; preds = %19
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %26 = call i32 @INTEL_GEN(%struct.drm_i915_private* %25)
  %27 = icmp sge i32 %26, 7
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = udiv i32 %29, 128
  %31 = load i32, i32* @GEN7_FENCE_MAX_PITCH_VAL, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %81

34:                                               ; preds = %28
  br label %57

35:                                               ; preds = %24
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %37 = call i32 @INTEL_GEN(%struct.drm_i915_private* %36)
  %38 = icmp sge i32 %37, 4
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = udiv i32 %40, 128
  %42 = load i32, i32* @I965_FENCE_MAX_PITCH_VAL, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %81

45:                                               ; preds = %39
  br label %56

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = icmp ugt i32 %47, 8192
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %81

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @is_power_of_2(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %81

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %45
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %59 = call i64 @IS_GEN(%struct.drm_i915_private* %58, i32 2)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @I915_TILING_Y, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %67 = call i64 @HAS_128_BYTE_Y_TILING(%struct.drm_i915_private* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %57
  store i32 128, i32* %9, align 4
  br label %71

70:                                               ; preds = %65, %61
  store i32 512, i32* %9, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @IS_ALIGNED(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74, %71
  store i32 0, i32* %4, align 4
  br label %81

80:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %79, %54, %49, %44, %33, %23, %18
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @HAS_128_BYTE_Y_TILING(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
