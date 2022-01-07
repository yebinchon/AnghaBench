; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_enable_rc6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_enable_rc6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @intel_enable_rc6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_rc6(%struct.drm_i915_private* %0) #0 {
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
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %75

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %75

23:                                               ; preds = %15
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = call i32 @cherryview_enable_rc6(%struct.drm_i915_private* %28)
  br label %70

30:                                               ; preds = %23
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %32 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = call i32 @valleyview_enable_rc6(%struct.drm_i915_private* %35)
  br label %69

37:                                               ; preds = %30
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = call i32 @INTEL_GEN(%struct.drm_i915_private* %38)
  %40 = icmp sge i32 %39, 11
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = call i32 @gen11_enable_rc6(%struct.drm_i915_private* %42)
  br label %68

44:                                               ; preds = %37
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %46 = call i32 @INTEL_GEN(%struct.drm_i915_private* %45)
  %47 = icmp sge i32 %46, 9
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %50 = call i32 @gen9_enable_rc6(%struct.drm_i915_private* %49)
  br label %67

51:                                               ; preds = %44
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %53 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %57 = call i32 @gen8_enable_rc6(%struct.drm_i915_private* %56)
  br label %66

58:                                               ; preds = %51
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %60 = call i32 @INTEL_GEN(%struct.drm_i915_private* %59)
  %61 = icmp sge i32 %60, 6
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %64 = call i32 @gen6_enable_rc6(%struct.drm_i915_private* %63)
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %55
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %68, %34
  br label %70

70:                                               ; preds = %69, %27
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %72 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %22, %14
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @cherryview_enable_rc6(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @valleyview_enable_rc6(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @gen11_enable_rc6(%struct.drm_i915_private*) #1

declare dso_local i32 @gen9_enable_rc6(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @gen8_enable_rc6(%struct.drm_i915_private*) #1

declare dso_local i32 @gen6_enable_rc6(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
