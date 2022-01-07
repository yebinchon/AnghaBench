; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_set_drrs_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_set_drrs_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, %struct.intel_dp* }
%struct.intel_dp = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.intel_crtc = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Refresh rate should be positive non-zero.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"DRRS not supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"DRRS: intel_crtc not initialized\0A\00", align 1
@SEAMLESS_DRRS_SUPPORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Only Seamless DRRS supported.\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"DRRS requested for previously set RR...ignoring\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"eDP encoder disabled. CRTC not Active\0A\00", align 1
@M1_N1 = common dso_local global i32 0, align 4
@M2_N2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Unsupported refreshrate type\0A\00", align 1
@PIPECONF_EDP_RR_MODE_SWITCH_VLV = common dso_local global i32 0, align 4
@PIPECONF_EDP_RR_MODE_SWITCH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"eDP Refresh Rate set to : %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_crtc_state*, i32)* @intel_dp_set_drrs_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_set_drrs_state(%struct.drm_i915_private* %0, %struct.intel_crtc_state* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_dp*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.intel_dp*, %struct.intel_dp** %14, align 8
  store %struct.intel_dp* %15, %struct.intel_dp** %7, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.intel_crtc* @to_intel_crtc(i32 %19)
  store %struct.intel_crtc* %20, %struct.intel_crtc** %8, align 8
  store i32 130, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %156

25:                                               ; preds = %3
  %26 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %27 = icmp eq %struct.intel_dp* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %156

30:                                               ; preds = %25
  %31 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %32 = icmp ne %struct.intel_crtc* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %156

35:                                               ; preds = %30
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SEAMLESS_DRRS_SUPPORT, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %156

44:                                               ; preds = %35
  %45 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %46 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 129, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %156

65:                                               ; preds = %56
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %67 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %156

73:                                               ; preds = %65
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %75 = call i32 @INTEL_GEN(%struct.drm_i915_private* %74)
  %76 = icmp sge i32 %75, 8
  br i1 %76, label %77, label %95

77:                                               ; preds = %73
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %79 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  switch i32 %82, label %92 [
    i32 130, label %83
    i32 129, label %87
    i32 128, label %91
  ]

83:                                               ; preds = %81
  %84 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %85 = load i32, i32* @M1_N1, align 4
  %86 = call i32 @intel_dp_set_m_n(%struct.intel_crtc_state* %84, i32 %85)
  br label %94

87:                                               ; preds = %81
  %88 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %89 = load i32, i32* @M2_N2, align 4
  %90 = call i32 @intel_dp_set_m_n(%struct.intel_crtc_state* %88, i32 %89)
  br label %94

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %81, %91
  %93 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87, %83
  br label %149

95:                                               ; preds = %77, %73
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %97 = call i32 @INTEL_GEN(%struct.drm_i915_private* %96)
  %98 = icmp sgt i32 %97, 6
  br i1 %98, label %99, label %148

99:                                               ; preds = %95
  %100 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %101 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @PIPECONF(i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @I915_READ(i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ugt i32 %106, 130
  br i1 %107, label %108, label %125

108:                                              ; preds = %99
  %109 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %110 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %114 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112, %108
  %117 = load i32, i32* @PIPECONF_EDP_RR_MODE_SWITCH_VLV, align 4
  %118 = load i32, i32* %11, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %11, align 4
  br label %124

120:                                              ; preds = %112
  %121 = load i32, i32* @PIPECONF_EDP_RR_MODE_SWITCH, align 4
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %120, %116
  br label %144

125:                                              ; preds = %99
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %127 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %131 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129, %125
  %134 = load i32, i32* @PIPECONF_EDP_RR_MODE_SWITCH_VLV, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %11, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %11, align 4
  br label %143

138:                                              ; preds = %129
  %139 = load i32, i32* @PIPECONF_EDP_RR_MODE_SWITCH, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %11, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143, %124
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @I915_WRITE(i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %95
  br label %149

149:                                              ; preds = %148, %94
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %152 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %149, %71, %63, %42, %33, %28, %23
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_dp_set_m_n(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
