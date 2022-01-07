; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_vbt.c_mipi_exec_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_vbt.c_mipi_exec_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dsi = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.intel_dsi*, i32*)* @mipi_exec_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mipi_exec_gpio(%struct.intel_dsi* %0, i32* %1) #0 {
  %3 = alloca %struct.intel_dsi*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_dsi* %0, %struct.intel_dsi** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.intel_dsi*, %struct.intel_dsi** %3, align 8
  %12 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %4, align 8
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  %32 = load i32, i32* %30, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 1
  %43 = and i32 %42, 3
  store i32 %43, i32* %7, align 4
  br label %45

44:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %4, align 8
  %48 = load i32, i32* %46, align 4
  %49 = and i32 %48, 1
  store i32 %49, i32* %10, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %51 = call i32 @INTEL_GEN(%struct.drm_i915_private* %50)
  %52 = icmp sge i32 %51, 11
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @icl_exec_gpio(%struct.drm_i915_private* %54, i32 %55, i32 %56, i32 %57)
  br label %87

59:                                               ; preds = %45
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %61 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @vlv_exec_gpio(%struct.drm_i915_private* %64, i32 %65, i32 %66, i32 %67)
  br label %86

69:                                               ; preds = %59
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %71 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @chv_exec_gpio(%struct.drm_i915_private* %74, i32 %75, i32 %76, i32 %77)
  br label %85

79:                                               ; preds = %69
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @bxt_exec_gpio(%struct.drm_i915_private* %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %73
  br label %86

86:                                               ; preds = %85, %63
  br label %87

87:                                               ; preds = %86, %53
  %88 = load i32*, i32** %4, align 8
  ret i32* %88
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_exec_gpio(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_exec_gpio(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @chv_exec_gpio(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @bxt_exec_gpio(%struct.drm_i915_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
