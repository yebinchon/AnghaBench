; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_connector_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_connector_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_2__, %struct.intel_encoder* }
%struct.TYPE_2__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_encoder = type { i32, i32, i32 (%struct.intel_encoder*, i32*)* }
%struct.drm_i915_private = type { i32 }

@PORT_A = common dso_local global i32 0, align 4
@TRANSCODER_EDP = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_MASK = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ddi_connector_get_hw_state(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %14 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %15 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %4, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %5, align 8
  %20 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %21 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %20, i32 0, i32 1
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %21, align 8
  store %struct.intel_encoder* %22, %struct.intel_encoder** %6, align 8
  %23 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %24 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %28 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %31 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %32 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %97

38:                                               ; preds = %1
  %39 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %40 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %39, i32 0, i32 2
  %41 = load i32 (%struct.intel_encoder*, i32*)*, i32 (%struct.intel_encoder*, i32*)** %40, align 8
  %42 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %43 = call i32 %41(%struct.intel_encoder* %42, i32* %11)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %89

46:                                               ; preds = %38
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %48 = call i64 @HAS_TRANSCODER_EDP(%struct.drm_i915_private* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PORT_A, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @TRANSCODER_EDP, align 4
  store i32 %55, i32* %9, align 4
  br label %58

56:                                               ; preds = %50, %46
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @TRANS_DDI_FUNC_CTL(i32 %59)
  %61 = call i32 @I915_READ(i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @TRANS_DDI_MODE_SELECT_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %87 [
    i32 128, label %65
    i32 130, label %65
    i32 131, label %70
    i32 132, label %81
    i32 129, label %82
  ]

65:                                               ; preds = %58, %58
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %13, align 4
  br label %88

70:                                               ; preds = %58
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @DRM_MODE_CONNECTOR_DisplayPort, align 4
  %77 = icmp eq i32 %75, %76
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ true, %70 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %13, align 4
  br label %88

81:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  br label %88

82:                                               ; preds = %58
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %13, align 4
  br label %88

87:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %87, %82, %81, %78, %65
  br label %89

89:                                               ; preds = %88, %45
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %91 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %92 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @intel_display_power_put(%struct.drm_i915_private* %90, i32 %93, i32 %94)
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %89, %37
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @HAS_TRANSCODER_EDP(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL(i32) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
