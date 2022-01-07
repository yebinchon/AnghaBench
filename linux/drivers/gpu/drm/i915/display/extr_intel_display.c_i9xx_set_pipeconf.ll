; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_set_pipeconf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_set_pipeconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, i64, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_DOUBLE_WIDE = common dso_local global i32 0, align 4
@PIPECONF_DITHER_EN = common dso_local global i32 0, align 4
@PIPECONF_DITHER_TYPE_SP = common dso_local global i32 0, align 4
@PIPECONF_6BPC = common dso_local global i32 0, align 4
@PIPECONF_8BPC = common dso_local global i32 0, align 4
@PIPECONF_10BPC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@INTEL_OUTPUT_SDVO = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_W_FIELD_INDICATION = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_W_SYNC_SHIFT = common dso_local global i32 0, align 4
@PIPECONF_PROGRESSIVE = common dso_local global i32 0, align 4
@PIPECONF_COLOR_RANGE_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @i9xx_set_pipeconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_set_pipeconf(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %6 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %7 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.intel_crtc* @to_intel_crtc(i32 %9)
  store %struct.intel_crtc* %10, %struct.intel_crtc** %3, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %17 = call i64 @IS_I830(%struct.drm_i915_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PIPECONF(i32 %22)
  %24 = call i32 @I915_READ(i32 %23)
  %25 = load i32, i32* @PIPECONF_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %19, %1
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @PIPECONF_DOUBLE_WIDE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %40 = call i64 @IS_G4X(%struct.drm_i915_private* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %44 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %48 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %46, %42, %38
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %57 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 30
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @PIPECONF_DITHER_EN, align 4
  %62 = load i32, i32* @PIPECONF_DITHER_TYPE_SP, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %55, %50
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %68 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %82 [
    i32 18, label %70
    i32 24, label %74
    i32 30, label %78
  ]

70:                                               ; preds = %66
  %71 = load i32, i32* @PIPECONF_6BPC, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %84

74:                                               ; preds = %66
  %75 = load i32, i32* @PIPECONF_8BPC, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %84

78:                                               ; preds = %66
  %79 = load i32, i32* @PIPECONF_10BPC, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %84

82:                                               ; preds = %66
  %83 = call i32 (...) @BUG()
  br label %84

84:                                               ; preds = %82, %78, %74, %70
  br label %85

85:                                               ; preds = %84, %46
  %86 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %87 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %85
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %96 = call i32 @INTEL_GEN(%struct.drm_i915_private* %95)
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %100 = load i32, i32* @INTEL_OUTPUT_SDVO, align 4
  %101 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98, %94
  %104 = load i32, i32* @PIPECONF_INTERLACE_W_FIELD_INDICATION, align 4
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  br label %111

107:                                              ; preds = %98
  %108 = load i32, i32* @PIPECONF_INTERLACE_W_SYNC_SHIFT, align 4
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %103
  br label %116

112:                                              ; preds = %85
  %113 = load i32, i32* @PIPECONF_PROGRESSIVE, align 4
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %111
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %118 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %122 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %120, %116
  %125 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %126 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @PIPECONF_COLOR_RANGE_SELECT, align 4
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %129, %124, %120
  %134 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %135 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @PIPECONF_GAMMA_MODE(i32 %136)
  %138 = load i32, i32* %5, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %141 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @PIPECONF(i32 %142)
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @I915_WRITE(i32 %143, i32 %144)
  %146 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %147 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @PIPECONF(i32 %148)
  %150 = call i32 @POSTING_READ(i32 %149)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @PIPECONF_GAMMA_MODE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
