; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_disable_rps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_disable_rps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @intel_disable_rps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_disable_rps(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = call i32 @INTEL_GEN(%struct.drm_i915_private* %16)
  %18 = icmp sge i32 %17, 9
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = call i32 @gen9_disable_rps(%struct.drm_i915_private* %20)
  br label %54

22:                                               ; preds = %15
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i32 @cherryview_disable_rps(%struct.drm_i915_private* %27)
  br label %53

29:                                               ; preds = %22
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %35 = call i32 @valleyview_disable_rps(%struct.drm_i915_private* %34)
  br label %52

36:                                               ; preds = %29
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = call i32 @INTEL_GEN(%struct.drm_i915_private* %37)
  %39 = icmp sge i32 %38, 6
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %42 = call i32 @gen6_disable_rps(%struct.drm_i915_private* %41)
  br label %51

43:                                               ; preds = %36
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %45 = call i64 @IS_IRONLAKE_M(%struct.drm_i915_private* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = call i32 @ironlake_disable_drps(%struct.drm_i915_private* %48)
  br label %50

50:                                               ; preds = %47, %43
  br label %51

51:                                               ; preds = %50, %40
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53, %19
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %14
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @gen9_disable_rps(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @cherryview_disable_rps(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @valleyview_disable_rps(%struct.drm_i915_private*) #1

declare dso_local i32 @gen6_disable_rps(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_IRONLAKE_M(%struct.drm_i915_private*) #1

declare dso_local i32 @ironlake_disable_drps(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
