; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_bxt_check_bios_rc6_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_bxt_check_bios_rc6_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@GEN6_RC_CONTROL = common dso_local global i32 0, align 4
@GEN6_RC_STATE = common dso_local global i32 0, align 4
@RC_SW_TARGET_STATE_MASK = common dso_local global i32 0, align 4
@RC_SW_TARGET_STATE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"BIOS enabled RC states: HW_CTRL %s HW_RC6 %s SW_TARGET_STATE %x\0A\00", align 1
@GEN6_RC_CTL_HW_ENABLE = common dso_local global i32 0, align 4
@GEN6_RC_CTL_RC6_ENABLE = common dso_local global i32 0, align 4
@RC6_LOCATION = common dso_local global i32 0, align 4
@RC6_CTX_IN_DRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"RC6 Base location not set properly.\0A\00", align 1
@RC6_CTX_BASE = common dso_local global i32 0, align 4
@RC6_CTX_BASE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"RC6 Base address not as expected.\0A\00", align 1
@PWRCTX_MAXCNT_RCSUNIT = common dso_local global i32 0, align 4
@IDLE_TIME_MASK = common dso_local global i32 0, align 4
@PWRCTX_MAXCNT_VCSUNIT0 = common dso_local global i32 0, align 4
@PWRCTX_MAXCNT_BCSUNIT = common dso_local global i32 0, align 4
@PWRCTX_MAXCNT_VECSUNIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Engine Idle wait time not set properly.\0A\00", align 1
@GEN8_PUSHBUS_CONTROL = common dso_local global i32 0, align 4
@GEN8_PUSHBUS_ENABLE = common dso_local global i32 0, align 4
@GEN8_PUSHBUS_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Pushbus not setup properly.\0A\00", align 1
@GEN6_GFXPAUSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"GFX pause not setup properly.\0A\00", align 1
@GEN8_MISC_CTRL0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"GPM control not setup properly.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @bxt_check_bios_rc6_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxt_check_bios_rc6_setup(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  store i32 1, i32* %3, align 4
  %7 = load i32, i32* @GEN6_RC_CONTROL, align 4
  %8 = call i32 @I915_READ(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @GEN6_RC_STATE, align 4
  %10 = call i32 @I915_READ(i32 %9)
  %11 = load i32, i32* @RC_SW_TARGET_STATE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @RC_SW_TARGET_STATE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @GEN6_RC_CTL_HW_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @onoff(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GEN6_RC_CTL_RC6_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @onoff(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %23)
  %25 = load i32, i32* @RC6_LOCATION, align 4
  %26 = call i32 @I915_READ(i32 %25)
  %27 = load i32, i32* @RC6_CTX_IN_DRAM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %1
  %33 = load i32, i32* @RC6_CTX_BASE, align 4
  %34 = call i32 @I915_READ(i32 %33)
  %35 = load i32, i32* @RC6_CTX_BASE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %38, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = add i64 %45, %46
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %44, %32
  %54 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %44
  %56 = load i32, i32* @PWRCTX_MAXCNT_RCSUNIT, align 4
  %57 = call i32 @I915_READ(i32 %56)
  %58 = load i32, i32* @IDLE_TIME_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %79

61:                                               ; preds = %55
  %62 = load i32, i32* @PWRCTX_MAXCNT_VCSUNIT0, align 4
  %63 = call i32 @I915_READ(i32 %62)
  %64 = load i32, i32* @IDLE_TIME_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i32, i32* @PWRCTX_MAXCNT_BCSUNIT, align 4
  %69 = call i32 @I915_READ(i32 %68)
  %70 = load i32, i32* @IDLE_TIME_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @PWRCTX_MAXCNT_VECSUNIT, align 4
  %75 = call i32 @I915_READ(i32 %74)
  %76 = load i32, i32* @IDLE_TIME_MASK, align 4
  %77 = and i32 %75, %76
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %81, label %79

79:                                               ; preds = %73, %67, %61, %55
  %80 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = load i32, i32* @GEN8_PUSHBUS_CONTROL, align 4
  %83 = call i32 @I915_READ(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32, i32* @GEN8_PUSHBUS_ENABLE, align 4
  %87 = call i32 @I915_READ(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @GEN8_PUSHBUS_SHIFT, align 4
  %91 = call i32 @I915_READ(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89, %85, %81
  %94 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* @GEN6_GFXPAUSE, align 4
  %97 = call i32 @I915_READ(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i32, i32* @GEN8_MISC_CTRL0, align 4
  %103 = call i32 @I915_READ(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @onoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
