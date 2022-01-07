; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_link_dpll = type { i64, i32 }
%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i64, i32, i32 }
%struct.drm_i915_private = type { i32 }

@g4x_dpll = common dso_local global %struct.dp_link_dpll* null, align 8
@pch_dpll = common dso_local global %struct.dp_link_dpll* null, align 8
@chv_dpll = common dso_local global %struct.dp_link_dpll* null, align 8
@vlv_dpll = common dso_local global %struct.dp_link_dpll* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_dp_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_set_clock(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.dp_link_dpll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  store %struct.dp_link_dpll* null, %struct.dp_link_dpll** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = call i64 @IS_G4X(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.dp_link_dpll*, %struct.dp_link_dpll** @g4x_dpll, align 8
  store %struct.dp_link_dpll* %18, %struct.dp_link_dpll** %6, align 8
  %19 = load %struct.dp_link_dpll*, %struct.dp_link_dpll** @g4x_dpll, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.dp_link_dpll* %19)
  store i32 %20, i32* %8, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.dp_link_dpll*, %struct.dp_link_dpll** @pch_dpll, align 8
  store %struct.dp_link_dpll* %26, %struct.dp_link_dpll** %6, align 8
  %27 = load %struct.dp_link_dpll*, %struct.dp_link_dpll** @pch_dpll, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.dp_link_dpll* %27)
  store i32 %28, i32* %8, align 4
  br label %47

29:                                               ; preds = %21
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %31 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.dp_link_dpll*, %struct.dp_link_dpll** @chv_dpll, align 8
  store %struct.dp_link_dpll* %34, %struct.dp_link_dpll** %6, align 8
  %35 = load %struct.dp_link_dpll*, %struct.dp_link_dpll** @chv_dpll, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.dp_link_dpll* %35)
  store i32 %36, i32* %8, align 4
  br label %46

37:                                               ; preds = %29
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %39 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.dp_link_dpll*, %struct.dp_link_dpll** @vlv_dpll, align 8
  store %struct.dp_link_dpll* %42, %struct.dp_link_dpll** %6, align 8
  %43 = load %struct.dp_link_dpll*, %struct.dp_link_dpll** @vlv_dpll, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.dp_link_dpll* %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %33
  br label %47

47:                                               ; preds = %46, %25
  br label %48

48:                                               ; preds = %47, %17
  %49 = load %struct.dp_link_dpll*, %struct.dp_link_dpll** %6, align 8
  %50 = icmp ne %struct.dp_link_dpll* %49, null
  br i1 %50, label %51, label %86

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %82, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %61 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dp_link_dpll*, %struct.dp_link_dpll** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.dp_link_dpll, %struct.dp_link_dpll* %63, i64 %65
  %67 = getelementptr inbounds %struct.dp_link_dpll, %struct.dp_link_dpll* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %62, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %59
  %71 = load %struct.dp_link_dpll*, %struct.dp_link_dpll** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.dp_link_dpll, %struct.dp_link_dpll* %71, i64 %73
  %75 = getelementptr inbounds %struct.dp_link_dpll, %struct.dp_link_dpll* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %78 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %80 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  br label %85

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %55

85:                                               ; preds = %70, %55
  br label %86

86:                                               ; preds = %85, %51, %48
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.dp_link_dpll*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
