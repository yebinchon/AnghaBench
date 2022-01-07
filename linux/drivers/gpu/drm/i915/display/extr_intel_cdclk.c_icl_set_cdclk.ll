; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_icl_set_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_icl_set_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.intel_cdclk_state = type { i32, i32, i32 }

@SKL_PCODE_CDCLK_CONTROL = common dso_local global i32 0, align 4
@SKL_CDCLK_PREPARE_FOR_CHANGE = common dso_local global i32 0, align 4
@SKL_CDCLK_READY_FOR_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to inform PCU about cdclk change (%d)\0A\00", align 1
@CDCLK_CTL = common dso_local global i32 0, align 4
@ICL_CDCLK_CD2X_PIPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*, i32)* @icl_set_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_set_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_cdclk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %11 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %14 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %17 = load i32, i32* @SKL_PCODE_CDCLK_CONTROL, align 4
  %18 = load i32, i32* @SKL_CDCLK_PREPARE_FOR_CHANGE, align 4
  %19 = load i32, i32* @SKL_CDCLK_READY_FOR_CHANGE, align 4
  %20 = load i32, i32* @SKL_CDCLK_READY_FOR_CHANGE, align 4
  %21 = call i32 @skl_pcode_request(%struct.drm_i915_private* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 3)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %79

27:                                               ; preds = %3
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %44 = call i32 @cnl_cdclk_pll_disable(%struct.drm_i915_private* %43)
  br label %45

45:                                               ; preds = %42, %34, %27
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @cnl_cdclk_pll_enable(%struct.drm_i915_private* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %45
  %58 = load i32, i32* @CDCLK_CTL, align 4
  %59 = load i32, i32* @ICL_CDCLK_CD2X_PIPE_NONE, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @skl_cdclk_decimal(i32 %60)
  %62 = or i32 %59, %61
  %63 = call i32 @I915_WRITE(i32 %58, i32 %62)
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %65 = load i32, i32* @SKL_PCODE_CDCLK_CONTROL, align 4
  %66 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %67 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sandybridge_pcode_write(%struct.drm_i915_private* %64, i32 %65, i32 %68)
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %71 = call i32 @intel_update_cdclk(%struct.drm_i915_private* %70)
  %72 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %73 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %57, %24
  ret void
}

declare dso_local i32 @skl_pcode_request(%struct.drm_i915_private*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @cnl_cdclk_pll_disable(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_cdclk_pll_enable(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @skl_cdclk_decimal(i32) #1

declare dso_local i32 @sandybridge_pcode_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_update_cdclk(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
