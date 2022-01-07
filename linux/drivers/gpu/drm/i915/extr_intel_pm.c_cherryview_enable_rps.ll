; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_cherryview_enable_rps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_cherryview_enable_rps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_TIMEOUT = common dso_local global i32 0, align 4
@GEN6_RP_UP_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_RP_UP_EI = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_EI = common dso_local global i32 0, align 4
@GEN6_RP_IDLE_HYSTERSIS = common dso_local global i32 0, align 4
@GEN6_RP_CONTROL = common dso_local global i32 0, align 4
@GEN6_RP_MEDIA_HW_NORMAL_MODE = common dso_local global i32 0, align 4
@GEN6_RP_MEDIA_IS_GFX = common dso_local global i32 0, align 4
@GEN6_RP_ENABLE = common dso_local global i32 0, align 4
@GEN6_RP_UP_BUSY_AVG = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_IDLE_AVG = common dso_local global i32 0, align 4
@VLV_OVERRIDE_EN = common dso_local global i32 0, align 4
@VLV_SOC_TDP_EN = common dso_local global i32 0, align 4
@CHV_BIAS_CPU_50_SOC_50 = common dso_local global i32 0, align 4
@VLV_TURBO_SOC_OVERRIDE = common dso_local global i32 0, align 4
@PUNIT_REG_GPU_FREQ_STS = common dso_local global i32 0, align 4
@GPLLENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"GPLL not enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"GPLL enabled? %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GPU status: 0x%08x\0A\00", align 1
@valleyview_set_rps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @cherryview_enable_rps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cherryview_enable_rps(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  %6 = load i32, i32* @FORCEWAKE_ALL, align 4
  %7 = call i32 @intel_uncore_forcewake_get(i32* %5, i32 %6)
  %8 = load i32, i32* @GEN6_RP_DOWN_TIMEOUT, align 4
  %9 = call i32 @I915_WRITE(i32 %8, i32 1000000)
  %10 = load i32, i32* @GEN6_RP_UP_THRESHOLD, align 4
  %11 = call i32 @I915_WRITE(i32 %10, i32 59400)
  %12 = load i32, i32* @GEN6_RP_DOWN_THRESHOLD, align 4
  %13 = call i32 @I915_WRITE(i32 %12, i32 245000)
  %14 = load i32, i32* @GEN6_RP_UP_EI, align 4
  %15 = call i32 @I915_WRITE(i32 %14, i32 66000)
  %16 = load i32, i32* @GEN6_RP_DOWN_EI, align 4
  %17 = call i32 @I915_WRITE(i32 %16, i32 350000)
  %18 = load i32, i32* @GEN6_RP_IDLE_HYSTERSIS, align 4
  %19 = call i32 @I915_WRITE(i32 %18, i32 10)
  %20 = load i32, i32* @GEN6_RP_CONTROL, align 4
  %21 = load i32, i32* @GEN6_RP_MEDIA_HW_NORMAL_MODE, align 4
  %22 = load i32, i32* @GEN6_RP_MEDIA_IS_GFX, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GEN6_RP_ENABLE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GEN6_RP_UP_BUSY_AVG, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @GEN6_RP_DOWN_IDLE_AVG, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @I915_WRITE(i32 %20, i32 %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %32 = call i32 @vlv_punit_get(%struct.drm_i915_private* %31)
  %33 = load i32, i32* @VLV_OVERRIDE_EN, align 4
  %34 = load i32, i32* @VLV_SOC_TDP_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CHV_BIAS_CPU_50_SOC_50, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %3, align 4
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = load i32, i32* @VLV_TURBO_SOC_OVERRIDE, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @vlv_punit_write(%struct.drm_i915_private* %38, i32 %39, i32 %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = load i32, i32* @PUNIT_REG_GPU_FREQ_STS, align 4
  %44 = call i32 @vlv_punit_read(%struct.drm_i915_private* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %46 = call i32 @vlv_punit_put(%struct.drm_i915_private* %45)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @GPLLENABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ONCE(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @GPLLENABLE, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @yesno(i32 %55)
  %57 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = load i32, i32* @valleyview_set_rps, align 4
  %62 = call i32 @reset_rps(%struct.drm_i915_private* %60, i32 %61)
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %64 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %63, i32 0, i32 0
  %65 = load i32, i32* @FORCEWAKE_ALL, align 4
  %66 = call i32 @intel_uncore_forcewake_put(i32* %64, i32 %65)
  ret void
}

declare dso_local i32 @intel_uncore_forcewake_get(i32*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @vlv_punit_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_punit_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @vlv_punit_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_punit_put(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @reset_rps(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
