; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.drm_connector = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crt = type { %struct.intel_encoder }
%struct.intel_encoder = type { i32 }
%struct.intel_load_detect_pipe = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"[CONNECTOR:%d:%s] force=%d\0A\00", align 1
@i915_modparams = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@intel_spurious_crt_detect = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"CRT detected via hotplug\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"CRT not detected via hotplug\0A\00", align 1
@connector_status_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_modeset_acquire_ctx*, i32)* @intel_crt_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crt_detect(%struct.drm_connector* %0, %struct.drm_modeset_acquire_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_crt*, align 8
  %10 = alloca %struct.intel_encoder*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.intel_load_detect_pipe, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_modeset_acquire_ctx* %1, %struct.drm_modeset_acquire_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %8, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %20 = call %struct.intel_crt* @intel_attached_crt(%struct.drm_connector* %19)
  store %struct.intel_crt* %20, %struct.intel_crt** %9, align 8
  %21 = load %struct.intel_crt*, %struct.intel_crt** %9, align 8
  %22 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %21, i32 0, i32 0
  store %struct.intel_encoder* %22, %struct.intel_encoder** %10, align 8
  %23 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %24 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %30)
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i915_modparams, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %36 = load %struct.intel_encoder*, %struct.intel_encoder** %10, align 8
  %37 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @intel_display_power_get(%struct.drm_i915_private* %35, i32 %38)
  store i32 %39, i32* %11, align 4
  br label %78

40:                                               ; preds = %3
  %41 = load i32, i32* @intel_spurious_crt_detect, align 4
  %42 = call i64 @dmi_check_system(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %45, i32* %4, align 4
  br label %144

46:                                               ; preds = %40
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %48 = load %struct.intel_encoder*, %struct.intel_encoder** %10, align 8
  %49 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @intel_display_power_get(%struct.drm_i915_private* %47, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %53 = call i64 @I915_HAS_HOTPLUG(%struct.drm_i915_private* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %57 = call i64 @intel_crt_detect_hotplug(%struct.drm_connector* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @connector_status_connected, align 4
  store i32 %61, i32* %12, align 4
  br label %134

62:                                               ; preds = %55
  %63 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %46
  %66 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %67 = call i64 @intel_crt_detect_ddc(%struct.drm_connector* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @connector_status_connected, align 4
  store i32 %70, i32* %12, align 4
  br label %134

71:                                               ; preds = %65
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %73 = call i64 @I915_HAS_HOTPLUG(%struct.drm_i915_private* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %76, i32* %12, align 4
  br label %134

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %34
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %83 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %12, align 4
  br label %134

85:                                               ; preds = %78
  %86 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %87 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %6, align 8
  %88 = call i32 @intel_get_load_detect_pipe(%struct.drm_connector* %86, i32* null, %struct.intel_load_detect_pipe* %14, %struct.drm_modeset_acquire_ctx* %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %125

91:                                               ; preds = %85
  %92 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %93 = call i64 @intel_crt_detect_ddc(%struct.drm_connector* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @connector_status_connected, align 4
  store i32 %96, i32* %12, align 4
  br label %121

97:                                               ; preds = %91
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %99 = call i32 @INTEL_GEN(%struct.drm_i915_private* %98)
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load %struct.intel_crt*, %struct.intel_crt** %9, align 8
  %103 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %104 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.TYPE_7__* @to_intel_crtc(i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @intel_crt_load_detect(%struct.intel_crt* %102, i32 %110)
  store i32 %111, i32* %12, align 4
  br label %120

112:                                              ; preds = %97
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i915_modparams, i32 0, i32 0), align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %116, i32* %12, align 4
  br label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @connector_status_unknown, align 4
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %117, %115
  br label %120

120:                                              ; preds = %119, %101
  br label %121

121:                                              ; preds = %120, %95
  %122 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %123 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %6, align 8
  %124 = call i32 @intel_release_load_detect_pipe(%struct.drm_connector* %122, %struct.intel_load_detect_pipe* %14, %struct.drm_modeset_acquire_ctx* %123)
  br label %133

125:                                              ; preds = %85
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @connector_status_unknown, align 4
  store i32 %129, i32* %12, align 4
  br label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %130, %128
  br label %133

133:                                              ; preds = %132, %121
  br label %134

134:                                              ; preds = %133, %81, %75, %69, %59
  %135 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %136 = load %struct.intel_encoder*, %struct.intel_encoder** %10, align 8
  %137 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @intel_display_power_put(%struct.drm_i915_private* %135, i32 %138, i32 %139)
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %142 = call i32 @intel_display_power_flush_work(%struct.drm_i915_private* %141)
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %134, %44
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crt* @intel_attached_crt(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i64 @I915_HAS_HOTPLUG(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_crt_detect_hotplug(%struct.drm_connector*) #1

declare dso_local i64 @intel_crt_detect_ddc(%struct.drm_connector*) #1

declare dso_local i32 @intel_get_load_detect_pipe(%struct.drm_connector*, i32*, %struct.intel_load_detect_pipe*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_crt_load_detect(%struct.intel_crt*, i32) #1

declare dso_local %struct.TYPE_7__* @to_intel_crtc(i32) #1

declare dso_local i32 @intel_release_load_detect_pipe(%struct.drm_connector*, %struct.intel_load_detect_pipe*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_display_power_flush_work(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
