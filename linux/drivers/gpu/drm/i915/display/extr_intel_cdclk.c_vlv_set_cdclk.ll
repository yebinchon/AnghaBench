; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_vlv_set_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_vlv_set_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i32, i32 }

@POWER_DOMAIN_DISPLAY_CORE = common dso_local global i32 0, align 4
@VLV_IOSF_SB_CCK = common dso_local global i32 0, align 4
@VLV_IOSF_SB_BUNIT = common dso_local global i32 0, align 4
@VLV_IOSF_SB_PUNIT = common dso_local global i32 0, align 4
@PUNIT_REG_DSPSSPM = common dso_local global i32 0, align 4
@DSPFREQGUAR_MASK = common dso_local global i32 0, align 4
@DSPFREQGUAR_SHIFT = common dso_local global i32 0, align 4
@DSPFREQSTAT_MASK = common dso_local global i32 0, align 4
@DSPFREQSTAT_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"timed out waiting for CDclk change\0A\00", align 1
@CCK_DISPLAY_CLOCK_CONTROL = common dso_local global i32 0, align 4
@CCK_FREQUENCY_VALUES = common dso_local global i32 0, align 4
@CCK_FREQUENCY_STATUS = common dso_local global i32 0, align 4
@CCK_FREQUENCY_STATUS_SHIFT = common dso_local global i32 0, align 4
@BUNIT_REG_BISOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*, i32)* @vlv_set_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_set_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_cdclk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %13 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %16 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %20 [
    i32 400000, label %19
    i32 333333, label %19
    i32 320000, label %19
    i32 266667, label %19
    i32 200000, label %19
  ]

19:                                               ; preds = %3, %3, %3, %3, %3
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @MISSING_CASE(i32 %21)
  br label %144

23:                                               ; preds = %19
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %26 = call i32 @intel_display_power_get(%struct.drm_i915_private* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %28 = load i32, i32* @VLV_IOSF_SB_CCK, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = load i32, i32* @VLV_IOSF_SB_BUNIT, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* @VLV_IOSF_SB_PUNIT, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i32 @vlv_iosf_sb_get(%struct.drm_i915_private* %27, i32 %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %38 = load i32, i32* @PUNIT_REG_DSPSSPM, align 4
  %39 = call i32 @vlv_punit_read(%struct.drm_i915_private* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @DSPFREQGUAR_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @DSPFREQGUAR_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %50 = load i32, i32* @PUNIT_REG_DSPSSPM, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @vlv_punit_write(%struct.drm_i915_private* %49, i32 %50, i32 %51)
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %54 = load i32, i32* @PUNIT_REG_DSPSSPM, align 4
  %55 = call i32 @vlv_punit_read(%struct.drm_i915_private* %53, i32 %54)
  %56 = load i32, i32* @DSPFREQSTAT_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @DSPFREQSTAT_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = icmp eq i32 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @wait_for(i32 %62, i32 50)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %23
  %66 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %23
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 400000
  br i1 %69, label %70, label %107

70:                                               ; preds = %67
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %72 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 1
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @DIV_ROUND_CLOSEST(i32 %74, i32 %75)
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %79 = load i32, i32* @CCK_DISPLAY_CLOCK_CONTROL, align 4
  %80 = call i32 @vlv_cck_read(%struct.drm_i915_private* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @CCK_FREQUENCY_VALUES, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %89 = load i32, i32* @CCK_DISPLAY_CLOCK_CONTROL, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @vlv_cck_write(%struct.drm_i915_private* %88, i32 %89, i32 %90)
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %93 = load i32, i32* @CCK_DISPLAY_CLOCK_CONTROL, align 4
  %94 = call i32 @vlv_cck_read(%struct.drm_i915_private* %92, i32 %93)
  %95 = load i32, i32* @CCK_FREQUENCY_STATUS, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @CCK_FREQUENCY_STATUS_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = icmp eq i32 %96, %99
  %101 = zext i1 %100 to i32
  %102 = call i64 @wait_for(i32 %101, i32 50)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %70
  %105 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %70
  br label %107

107:                                              ; preds = %106, %67
  %108 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %109 = load i32, i32* @BUNIT_REG_BISOC, align 4
  %110 = call i32 @vlv_bunit_read(%struct.drm_i915_private* %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, -128
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 400000
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, 18
  store i32 %117, i32* %8, align 4
  br label %121

118:                                              ; preds = %107
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, 12
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %123 = load i32, i32* @BUNIT_REG_BISOC, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @vlv_bunit_write(%struct.drm_i915_private* %122, i32 %123, i32 %124)
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %127 = load i32, i32* @VLV_IOSF_SB_CCK, align 4
  %128 = call i32 @BIT(i32 %127)
  %129 = load i32, i32* @VLV_IOSF_SB_BUNIT, align 4
  %130 = call i32 @BIT(i32 %129)
  %131 = or i32 %128, %130
  %132 = load i32, i32* @VLV_IOSF_SB_PUNIT, align 4
  %133 = call i32 @BIT(i32 %132)
  %134 = or i32 %131, %133
  %135 = call i32 @vlv_iosf_sb_put(%struct.drm_i915_private* %126, i32 %134)
  %136 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %137 = call i32 @intel_update_cdclk(%struct.drm_i915_private* %136)
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %139 = call i32 @vlv_program_pfi_credits(%struct.drm_i915_private* %138)
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %141 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @intel_display_power_put(%struct.drm_i915_private* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %121, %20
  ret void
}

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_iosf_sb_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vlv_punit_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_punit_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @vlv_cck_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_cck_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @vlv_bunit_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_bunit_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @vlv_iosf_sb_put(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_update_cdclk(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_program_pfi_credits(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
