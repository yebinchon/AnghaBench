; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_sanitize_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_sanitize_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.drm_encoder, i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.TYPE_11__*)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, %struct.TYPE_11__*)* }
%struct.drm_encoder = type { i32*, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.intel_crtc_state = type opaque
%struct.TYPE_11__ = type { %struct.drm_encoder* }
%struct.intel_crtc_state.0 = type opaque
%struct.drm_i915_private = type { i32 }
%struct.intel_connector = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32, %struct.TYPE_11__* }
%struct.intel_crtc = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_crtc_state.1 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [56 x i8] c"BIOS has misprogrammed the hardware. Disabling pipe %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"[ENCODER:%d:%s] has active connectors but no active pipe!\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"[ENCODER:%d:%s] manually disabled\0A\00", align 1
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_sanitize_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sanitize_encoder(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.intel_crtc_state.1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_encoder*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %3, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call %struct.intel_crtc* @to_intel_crtc(i32* %17)
  store %struct.intel_crtc* %18, %struct.intel_crtc** %5, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %20 = icmp ne %struct.intel_crtc* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.intel_crtc_state.1* @to_intel_crtc_state(i32 %25)
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi %struct.intel_crtc_state.1* [ %26, %21 ], [ null, %27 ]
  store %struct.intel_crtc_state.1* %29, %struct.intel_crtc_state.1** %6, align 8
  %30 = load %struct.intel_crtc_state.1*, %struct.intel_crtc_state.1** %6, align 8
  %31 = icmp ne %struct.intel_crtc_state.1* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.intel_crtc_state.1*, %struct.intel_crtc_state.1** %6, align 8
  %34 = getelementptr inbounds %struct.intel_crtc_state.1, %struct.intel_crtc_state.1* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i1 [ false, %28 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load %struct.intel_crtc_state.1*, %struct.intel_crtc_state.1** %6, align 8
  %42 = icmp ne %struct.intel_crtc_state.1* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.intel_crtc_state.1*, %struct.intel_crtc_state.1** %6, align 8
  %45 = call i64 @has_bogus_dpll_config(%struct.intel_crtc_state.1* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %49 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pipe_name(i32 %50)
  %52 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %47, %43, %38
  %54 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %55 = call %struct.intel_connector* @intel_encoder_find_connector(%struct.intel_encoder* %54)
  store %struct.intel_connector* %55, %struct.intel_connector** %4, align 8
  %56 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %57 = icmp ne %struct.intel_connector* %56, null
  br i1 %57, label %58, label %149

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %149, label %61

61:                                               ; preds = %58
  %62 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %63 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %68 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70)
  %72 = load %struct.intel_crtc_state.1*, %struct.intel_crtc_state.1** %6, align 8
  %73 = icmp ne %struct.intel_crtc_state.1* %72, null
  br i1 %73, label %74, label %138

74:                                               ; preds = %61
  %75 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %76 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %81 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %83)
  %85 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %86 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.drm_encoder*, %struct.drm_encoder** %89, align 8
  store %struct.drm_encoder* %90, %struct.drm_encoder** %8, align 8
  %91 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %92 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %91, i32 0, i32 0
  %93 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %94 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store %struct.drm_encoder* %92, %struct.drm_encoder** %97, align 8
  %98 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %99 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %98, i32 0, i32 2
  %100 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, %struct.TYPE_11__*)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, %struct.TYPE_11__*)** %99, align 8
  %101 = icmp ne i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, %struct.TYPE_11__*)* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %74
  %103 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %104 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %103, i32 0, i32 2
  %105 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, %struct.TYPE_11__*)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*, %struct.TYPE_11__*)** %104, align 8
  %106 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %107 = load %struct.intel_crtc_state.1*, %struct.intel_crtc_state.1** %6, align 8
  %108 = bitcast %struct.intel_crtc_state.1* %107 to %struct.intel_crtc_state.0*
  %109 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %110 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = call i32 %105(%struct.intel_encoder* %106, %struct.intel_crtc_state.0* %108, %struct.TYPE_11__* %112)
  br label %114

114:                                              ; preds = %102, %74
  %115 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %116 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %115, i32 0, i32 1
  %117 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.TYPE_11__*)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.TYPE_11__*)** %116, align 8
  %118 = icmp ne i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.TYPE_11__*)* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %121 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %120, i32 0, i32 1
  %122 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.TYPE_11__*)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.TYPE_11__*)** %121, align 8
  %123 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %124 = load %struct.intel_crtc_state.1*, %struct.intel_crtc_state.1** %6, align 8
  %125 = bitcast %struct.intel_crtc_state.1* %124 to %struct.intel_crtc_state*
  %126 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %127 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = call i32 %122(%struct.intel_encoder* %123, %struct.intel_crtc_state* %125, %struct.TYPE_11__* %129)
  br label %131

131:                                              ; preds = %119, %114
  %132 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %133 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %134 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store %struct.drm_encoder* %132, %struct.drm_encoder** %137, align 8
  br label %138

138:                                              ; preds = %131, %61
  %139 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %140 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  %142 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %143 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %144 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 8
  %146 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %147 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i32* null, i32** %148, align 8
  br label %149

149:                                              ; preds = %138, %58, %53
  %150 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %151 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %152 = icmp ne %struct.intel_connector* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br label %156

156:                                              ; preds = %153, %149
  %157 = phi i1 [ false, %149 ], [ %155, %153 ]
  %158 = zext i1 %157 to i32
  %159 = call i32 @intel_opregion_notify_encoder(%struct.intel_encoder* %150, i32 %158)
  %160 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %161 = call i32 @INTEL_GEN(%struct.drm_i915_private* %160)
  %162 = icmp sge i32 %161, 11
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %165 = call i32 @icl_sanitize_encoder_pll_mapping(%struct.intel_encoder* %164)
  br label %166

166:                                              ; preds = %163, %156
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32*) #1

declare dso_local %struct.intel_crtc_state.1* @to_intel_crtc_state(i32) #1

declare dso_local i64 @has_bogus_dpll_config(%struct.intel_crtc_state.1*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local %struct.intel_connector* @intel_encoder_find_connector(%struct.intel_encoder*) #1

declare dso_local i32 @intel_opregion_notify_encoder(%struct.intel_encoder*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_sanitize_encoder_pll_mapping(%struct.intel_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
