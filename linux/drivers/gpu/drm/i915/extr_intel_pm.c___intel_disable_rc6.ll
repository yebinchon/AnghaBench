; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c___intel_disable_rc6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c___intel_disable_rc6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @__intel_disable_rc6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_disable_rc6(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = call i32 @INTEL_GEN(%struct.drm_i915_private* %16)
  %18 = icmp sge i32 %17, 9
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = call i32 @gen9_disable_rc6(%struct.drm_i915_private* %20)
  br label %46

22:                                               ; preds = %15
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i32 @cherryview_disable_rc6(%struct.drm_i915_private* %27)
  br label %45

29:                                               ; preds = %22
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %35 = call i32 @valleyview_disable_rc6(%struct.drm_i915_private* %34)
  br label %44

36:                                               ; preds = %29
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = call i32 @INTEL_GEN(%struct.drm_i915_private* %37)
  %39 = icmp sge i32 %38, 6
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %42 = call i32 @gen6_disable_rc6(%struct.drm_i915_private* %41)
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %33
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %14
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @gen9_disable_rc6(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @cherryview_disable_rc6(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @valleyview_disable_rc6(%struct.drm_i915_private*) #1

declare dso_local i32 @gen6_disable_rc6(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
