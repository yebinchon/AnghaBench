; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_enable_rps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_enable_rps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @intel_enable_rps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_rps(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_rps*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.intel_rps* %6, %struct.intel_rps** %3, align 8
  %7 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %8 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %7, i32 0, i32 5
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %11 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %103

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = call i32 @cherryview_enable_rps(%struct.drm_i915_private* %20)
  br label %64

22:                                               ; preds = %15
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i32 @valleyview_enable_rps(%struct.drm_i915_private* %27)
  br label %63

29:                                               ; preds = %22
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = call i32 @INTEL_GEN(%struct.drm_i915_private* %30)
  %32 = icmp sge i32 %31, 9
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %35 = call i32 @gen9_enable_rps(%struct.drm_i915_private* %34)
  br label %62

36:                                               ; preds = %29
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %42 = call i32 @gen8_enable_rps(%struct.drm_i915_private* %41)
  br label %61

43:                                               ; preds = %36
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %45 = call i32 @INTEL_GEN(%struct.drm_i915_private* %44)
  %46 = icmp sge i32 %45, 6
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = call i32 @gen6_enable_rps(%struct.drm_i915_private* %48)
  br label %60

50:                                               ; preds = %43
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %52 = call i64 @IS_IRONLAKE_M(%struct.drm_i915_private* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %56 = call i32 @ironlake_enable_drps(%struct.drm_i915_private* %55)
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %58 = call i32 @intel_init_emon(%struct.drm_i915_private* %57)
  br label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60, %40
  br label %62

62:                                               ; preds = %61, %33
  br label %63

63:                                               ; preds = %62, %26
  br label %64

64:                                               ; preds = %63, %19
  %65 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %66 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %69 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @WARN_ON(i32 %72)
  %74 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %75 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %78 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @WARN_ON(i32 %81)
  %83 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %84 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %87 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @WARN_ON(i32 %90)
  %92 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %93 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %96 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %94, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @WARN_ON(i32 %99)
  %101 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %102 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %64, %14
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @cherryview_enable_rps(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @valleyview_enable_rps(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @gen9_enable_rps(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @gen8_enable_rps(%struct.drm_i915_private*) #1

declare dso_local i32 @gen6_enable_rps(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_IRONLAKE_M(%struct.drm_i915_private*) #1

declare dso_local i32 @ironlake_enable_drps(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_init_emon(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
