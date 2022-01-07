; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_lvds_pps_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_lvds_pps_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_lvds_pps = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@PANEL_POWER_RESET = common dso_local global i32 0, align 4
@PANEL_PORT_SELECT_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_UP_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_LIGHT_ON_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_DOWN_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_LIGHT_OFF_DELAY_MASK = common dso_local global i32 0, align 4
@PP_REFERENCE_DIVIDER_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_CYCLE_DELAY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Panel power timings uninitialized, setting defaults\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"LVDS PPS:t1+t2 %d t3 %d t4 %d t5 %d tx %d divider %d port %d powerdown_on_reset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_lvds_pps*)* @intel_lvds_pps_get_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_lvds_pps_get_hw_state(%struct.drm_i915_private* %0, %struct.intel_lvds_pps* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_lvds_pps*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_lvds_pps* %1, %struct.intel_lvds_pps** %4, align 8
  %6 = call i32 @PP_CONTROL(i32 0)
  %7 = call i32 @I915_READ(i32 %6)
  %8 = load i32, i32* @PANEL_POWER_RESET, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %11 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = call i32 @PP_ON_DELAYS(i32 0)
  %13 = call i32 @I915_READ(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @PANEL_PORT_SELECT_MASK, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @REG_FIELD_GET(i32 %14, i32 %15)
  %17 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %18 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @PANEL_POWER_UP_DELAY_MASK, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @REG_FIELD_GET(i32 %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %24 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @PANEL_LIGHT_ON_DELAY_MASK, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @REG_FIELD_GET(i32 %25, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %30 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = call i32 @PP_OFF_DELAYS(i32 0)
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @PANEL_POWER_DOWN_DELAY_MASK, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @REG_FIELD_GET(i32 %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %38 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @PANEL_LIGHT_OFF_DELAY_MASK, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i8* @REG_FIELD_GET(i32 %39, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %44 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = call i32 @PP_DIVISOR(i32 0)
  %46 = call i32 @I915_READ(i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @PP_REFERENCE_DIVIDER_MASK, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i8* @REG_FIELD_GET(i32 %47, i32 %48)
  %50 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %51 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @PANEL_POWER_CYCLE_DELAY_MASK, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i8* @REG_FIELD_GET(i32 %52, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %2
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %2
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 1000
  %64 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %65 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %67 = call i32 @INTEL_GEN(%struct.drm_i915_private* %66)
  %68 = icmp sle i32 %67, 4
  br i1 %68, label %69, label %99

69:                                               ; preds = %61
  %70 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %71 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %69
  %75 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %76 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %81 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %86 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %92 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %91, i32 0, i32 1
  store i32 400, i32* %92, align 4
  %93 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %94 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %93, i32 0, i32 2
  store i32 2000, i32* %94, align 8
  %95 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %96 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %95, i32 0, i32 3
  store i32 350, i32* %96, align 4
  %97 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %98 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %97, i32 0, i32 4
  store i32 2000, i32* %98, align 8
  br label %99

99:                                               ; preds = %89, %84, %79, %74, %69, %61
  %100 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %101 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %104 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %107 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %110 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %113 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %116 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %115, i32 0, i32 7
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %119 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %118, i32 0, i32 6
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %122 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %105, i32 %108, i32 %111, i32 %114, i8* %117, i8* %120, i32 %123)
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PP_CONTROL(i32) #1

declare dso_local i32 @PP_ON_DELAYS(i32) #1

declare dso_local i8* @REG_FIELD_GET(i32, i32) #1

declare dso_local i32 @PP_OFF_DELAYS(i32) #1

declare dso_local i32 @PP_DIVISOR(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
