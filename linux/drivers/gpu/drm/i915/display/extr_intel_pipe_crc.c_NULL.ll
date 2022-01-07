; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_NULL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i64, i32 }
%struct.drm_i915_private = type { %struct.intel_pipe_crc* }
%struct.intel_pipe_crc = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"unknown source %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Trying to capture CRC while pipe is off\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@INTEL_PIPE_CRC_SOURCE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_crtc_set_crc_source(%struct.drm_crtc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_pipe_crc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = load %struct.intel_pipe_crc*, %struct.intel_pipe_crc** %19, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.intel_pipe_crc, %struct.intel_pipe_crc* %20, i64 %23
  store %struct.intel_pipe_crc* %24, %struct.intel_pipe_crc** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @display_crc_ctl_parse_source(i8* %25, i32* %9)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %115

33:                                               ; preds = %2
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @POWER_DOMAIN_PIPE(i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %115

47:                                               ; preds = %33
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @INTEL_PIPE_CRC_SOURCE_NONE, align 4
  %50 = icmp ne i32 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %56 = call i32 @to_intel_crtc(%struct.drm_crtc* %55)
  %57 = call i32 @intel_crtc_crc_setup_workarounds(i32 %56, i32 1)
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %61 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @get_new_crc_ctl_reg(%struct.drm_i915_private* %59, i64 %62, i32* %9, i32* %11)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %102

67:                                               ; preds = %58
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.intel_pipe_crc*, %struct.intel_pipe_crc** %7, align 8
  %70 = getelementptr inbounds %struct.intel_pipe_crc, %struct.intel_pipe_crc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %72 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @PIPE_CRC_CTL(i64 %73)
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @I915_WRITE(i32 %74, i32 %75)
  %77 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %78 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @PIPE_CRC_CTL(i64 %79)
  %81 = call i32 @POSTING_READ(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %67
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %86 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %90 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88, %84
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %94 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %95 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @vlv_undo_pipe_scramble_reset(%struct.drm_i915_private* %93, i64 %96)
  br label %98

98:                                               ; preds = %92, %88
  br label %99

99:                                               ; preds = %98, %67
  %100 = load %struct.intel_pipe_crc*, %struct.intel_pipe_crc** %7, align 8
  %101 = getelementptr inbounds %struct.intel_pipe_crc, %struct.intel_pipe_crc* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %66
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %107 = call i32 @to_intel_crtc(%struct.drm_crtc* %106)
  %108 = call i32 @intel_crtc_crc_setup_workarounds(i32 %107, i32 0)
  br label %109

109:                                              ; preds = %105, %102
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @intel_display_power_put(%struct.drm_i915_private* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %109, %43, %28
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @display_crc_ctl_parse_source(i8*, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*) #1

declare dso_local i32 @POWER_DOMAIN_PIPE(i64) #1

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_crtc_crc_setup_workarounds(i32, i32) #1

declare dso_local i32 @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @get_new_crc_ctl_reg(%struct.drm_i915_private*, i64, i32*, i32*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPE_CRC_CTL(i64) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_undo_pipe_scramble_reset(%struct.drm_i915_private*, i64) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
