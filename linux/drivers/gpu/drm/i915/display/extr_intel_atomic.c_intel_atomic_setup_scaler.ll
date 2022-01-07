; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_intel_atomic_setup_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_intel_atomic_setup_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_scaler_state = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.intel_crtc = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_plane_state = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.drm_i915_private = type { i32 }
%struct.intel_plane = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Cannot find scaler for %s:%d\0A\00", align 1
@SKL_PS_SCALER_MODE_NV12 = common dso_local global i32 0, align 4
@PS_SCALER_MODE_NORMAL = common dso_local global i32 0, align 4
@PS_SCALER_MODE_PLANAR = common dso_local global i32 0, align 4
@SKL_PS_SCALER_MODE_HQ = common dso_local global i32 0, align 4
@SKL_PS_SCALER_MODE_DYN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Attached scaler id %u.%u to %s:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_scaler_state*, i32, %struct.intel_crtc*, i8*, i32, %struct.intel_plane_state*, i32*)* @intel_atomic_setup_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_atomic_setup_scaler(%struct.intel_crtc_scaler_state* %0, i32 %1, %struct.intel_crtc* %2, i8* %3, i32 %4, %struct.intel_plane_state* %5, i32* %6) #0 {
  %8 = alloca %struct.intel_crtc_scaler_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.intel_plane_state*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.drm_i915_private*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.intel_plane*, align 8
  store %struct.intel_crtc_scaler_state* %0, %struct.intel_crtc_scaler_state** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.intel_crtc* %2, %struct.intel_crtc** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.intel_plane_state* %5, %struct.intel_plane_state** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.drm_i915_private* @to_i915(i32 %22)
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %15, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %31 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %8, align 8
  %36 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %56

45:                                               ; preds = %34
  %46 = load i32, i32* %16, align 4
  %47 = load i32*, i32** %14, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %8, align 8
  %49 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %59

56:                                               ; preds = %44
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %16, align 4
  br label %28

59:                                               ; preds = %45, %28
  br label %60

60:                                               ; preds = %59, %7
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @WARN(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %197

70:                                               ; preds = %60
  %71 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %72 = icmp ne %struct.intel_plane_state* %71, null
  br i1 %72, label %73, label %141

73:                                               ; preds = %70
  %74 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %75 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %79, label %141

79:                                               ; preds = %73
  %80 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %81 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %141

89:                                               ; preds = %79
  %90 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %91 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %141

99:                                               ; preds = %89
  %100 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %101 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.intel_plane* @to_intel_plane(i32 %103)
  store %struct.intel_plane* %104, %struct.intel_plane** %18, align 8
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  %106 = call i64 @IS_GEN(%struct.drm_i915_private* %105, i32 9)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  %110 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* @SKL_PS_SCALER_MODE_NV12, align 4
  store i32 %113, i32* %17, align 4
  br label %140

114:                                              ; preds = %108, %99
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  %116 = load %struct.intel_plane*, %struct.intel_plane** %18, align 8
  %117 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @icl_is_hdr_plane(%struct.drm_i915_private* %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* @PS_SCALER_MODE_NORMAL, align 4
  store i32 %122, i32* %17, align 4
  br label %139

123:                                              ; preds = %114
  %124 = load i32, i32* @PS_SCALER_MODE_PLANAR, align 4
  store i32 %124, i32* %17, align 4
  %125 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %126 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %125, i32 0, i32 0
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = icmp ne %struct.TYPE_11__* %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %131 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %130, i32 0, i32 0
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @PS_PLANE_Y_SEL(i32 %134)
  %136 = load i32, i32* %17, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %17, align 4
  br label %138

138:                                              ; preds = %129, %123
  br label %139

139:                                              ; preds = %138, %121
  br label %140

140:                                              ; preds = %139, %112
  br label %179

141:                                              ; preds = %89, %79, %73, %70
  %142 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  %143 = call i32 @INTEL_GEN(%struct.drm_i915_private* %142)
  %144 = icmp sgt i32 %143, 9
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  %147 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145, %141
  %150 = load i32, i32* @PS_SCALER_MODE_NORMAL, align 4
  store i32 %150, i32* %17, align 4
  br label %178

151:                                              ; preds = %145
  %152 = load i32, i32* %9, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %175

154:                                              ; preds = %151
  %155 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %156 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %159, label %175

159:                                              ; preds = %154
  %160 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %8, align 8
  %161 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %160, i32 0, i32 0
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 4
  %168 = load i32*, i32** %14, align 8
  store i32 0, i32* %168, align 4
  %169 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %8, align 8
  %170 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %169, i32 0, i32 0
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 4
  %174 = load i32, i32* @SKL_PS_SCALER_MODE_HQ, align 4
  store i32 %174, i32* %17, align 4
  br label %177

175:                                              ; preds = %154, %151
  %176 = load i32, i32* @SKL_PS_SCALER_MODE_DYN, align 4
  store i32 %176, i32* %17, align 4
  br label %177

177:                                              ; preds = %175, %159
  br label %178

178:                                              ; preds = %177, %149
  br label %179

179:                                              ; preds = %178, %140
  %180 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %181 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %14, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load i8*, i8** %11, align 8
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %182, i32 %184, i8* %185, i32 %186)
  %188 = load i32, i32* %17, align 4
  %189 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %8, align 8
  %190 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %189, i32 0, i32 0
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = load i32*, i32** %14, align 8
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  store i32 %188, i32* %196, align 4
  br label %197

197:                                              ; preds = %179, %69
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @WARN(i32, i8*, i8*, i32) #1

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @icl_is_hdr_plane(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @PS_PLANE_Y_SEL(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
