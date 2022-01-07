; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_panel_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_panel_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@INVALID_PIPE = common dso_local global i32 0, align 4
@PANEL_PORT_SELECT_MASK = common dso_local global i32 0, align 4
@PCH_LVDS = common dso_local global i32 0, align 4
@DP_A = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@PCH_DP_C = common dso_local global i32 0, align 4
@PORT_C = common dso_local global i32 0, align 4
@PCH_DP_D = common dso_local global i32 0, align 4
@PORT_D = common dso_local global i32 0, align 4
@LVDS = common dso_local global i32 0, align 4
@PANEL_POWER_ON = common dso_local global i32 0, align 4
@PANEL_UNLOCK_MASK = common dso_local global i32 0, align 4
@PANEL_UNLOCK_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"panel assertion failure, pipe %c regs locked\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_panel_unlocked(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @INVALID_PIPE, align 4
  store i32 %11, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i32 @HAS_DDI(%struct.drm_i915_private* %12)
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %104

17:                                               ; preds = %2
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = call i32 @PP_CONTROL(i32 0)
  store i32 %22, i32* %5, align 4
  %23 = call i32 @PP_ON_DELAYS(i32 0)
  %24 = call i32 @I915_READ(i32 %23)
  %25 = load i32, i32* @PANEL_PORT_SELECT_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %47 [
    i32 128, label %28
    i32 131, label %32
    i32 130, label %37
    i32 129, label %42
  ]

28:                                               ; preds = %21
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = load i32, i32* @PCH_LVDS, align 4
  %31 = call i32 @intel_lvds_port_enabled(%struct.drm_i915_private* %29, i32 %30, i32* %7)
  br label %50

32:                                               ; preds = %21
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = load i32, i32* @DP_A, align 4
  %35 = load i32, i32* @PORT_A, align 4
  %36 = call i32 @intel_dp_port_enabled(%struct.drm_i915_private* %33, i32 %34, i32 %35, i32* %7)
  br label %50

37:                                               ; preds = %21
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = load i32, i32* @PCH_DP_C, align 4
  %40 = load i32, i32* @PORT_C, align 4
  %41 = call i32 @intel_dp_port_enabled(%struct.drm_i915_private* %38, i32 %39, i32 %40, i32* %7)
  br label %50

42:                                               ; preds = %21
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = load i32, i32* @PCH_DP_D, align 4
  %45 = load i32, i32* @PORT_D, align 4
  %46 = call i32 @intel_dp_port_enabled(%struct.drm_i915_private* %43, i32 %44, i32 %45, i32* %7)
  br label %50

47:                                               ; preds = %21
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @MISSING_CASE(i32 %48)
  br label %50

50:                                               ; preds = %47, %42, %37, %32, %28
  br label %77

51:                                               ; preds = %17
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %53 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %57 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @PP_CONTROL(i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %7, align 4
  br label %76

63:                                               ; preds = %55
  %64 = call i32 @PP_CONTROL(i32 0)
  store i32 %64, i32* %5, align 4
  %65 = call i32 @PP_ON_DELAYS(i32 0)
  %66 = call i32 @I915_READ(i32 %65)
  %67 = load i32, i32* @PANEL_PORT_SELECT_MASK, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 128
  %71 = zext i1 %70 to i32
  %72 = call i64 @WARN_ON(i32 %71)
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %74 = load i32, i32* @LVDS, align 4
  %75 = call i32 @intel_lvds_port_enabled(%struct.drm_i915_private* %73, i32 %74, i32* %7)
  br label %76

76:                                               ; preds = %63, %59
  br label %77

77:                                               ; preds = %76, %50
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @I915_READ(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @PANEL_POWER_ON, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @PANEL_UNLOCK_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @PANEL_UNLOCK_REGS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84, %77
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %84
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %95, %91
  %99 = phi i1 [ false, %91 ], [ %97, %95 ]
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @pipe_name(i32 %101)
  %103 = call i32 @I915_STATE_WARN(i32 %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %98, %16
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @PP_CONTROL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PP_ON_DELAYS(i32) #1

declare dso_local i32 @intel_lvds_port_enabled(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i32 @intel_dp_port_enabled(%struct.drm_i915_private*, i32, i32, i32*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_STATE_WARN(i32, i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
