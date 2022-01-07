; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.intel_hdmi = type { i64 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_2__ = type { i32 }

@HDMI_AUDIO_OFF_DVI = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_MASK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_FRAME_PACKING = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @intel_hdmi_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.intel_hdmi*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = call %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector* %13)
  store %struct.intel_hdmi* %14, %struct.intel_hdmi** %6, align 8
  %15 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %16 = call %struct.drm_device* @intel_hdmi_to_dev(%struct.intel_hdmi* %15)
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %18 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %8, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 2
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  %22 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %21)
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %26 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_2__* @to_intel_digital_connector_state(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @READ_ONCE(i32 %30)
  %32 = load i64, i64* @HDMI_AUDIO_OFF_DVI, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %42, i32* %3, align 4
  br label %127

43:                                               ; preds = %2
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @DRM_MODE_FLAG_3D_FRAME_PACKING, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %55, 2
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %43
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %62, i32* %3, align 4
  br label %127

63:                                               ; preds = %57
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 2
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %75 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %74, i32 0, i32 0
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %77 = call i64 @drm_mode_is_420_only(i32* %75, %struct.drm_display_mode* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  %81 = sdiv i32 %80, 2
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %79, %73
  %83 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @hdmi_port_clock_valid(%struct.intel_hdmi* %83, i32 %84, i32 1, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %88 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %125

91:                                               ; preds = %82
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @MODE_OK, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %100 = call i32 @HAS_GMCH(%struct.drm_i915_private* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 %104, 3
  %106 = sdiv i32 %105, 2
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @hdmi_port_clock_valid(%struct.intel_hdmi* %103, i32 %106, i32 1, i32 %107)
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %102, %98, %94
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @MODE_OK, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %115 = call i32 @INTEL_GEN(%struct.drm_i915_private* %114)
  %116 = icmp sge i32 %115, 11
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = mul nsw i32 %119, 5
  %121 = sdiv i32 %120, 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @hdmi_port_clock_valid(%struct.intel_hdmi* %118, i32 %121, i32 1, i32 %122)
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %117, %113, %109
  br label %125

125:                                              ; preds = %124, %91, %82
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %61, %41
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector*) #1

declare dso_local %struct.drm_device* @intel_hdmi_to_dev(%struct.intel_hdmi*) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local %struct.TYPE_2__* @to_intel_digital_connector_state(i32) #1

declare dso_local i64 @drm_mode_is_420_only(i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @hdmi_port_clock_valid(%struct.intel_hdmi*, i32, i32, i32) #1

declare dso_local i32 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
