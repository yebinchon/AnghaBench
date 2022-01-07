; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_infoframes_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_infoframes_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*)* }
%struct.intel_crtc_state.0 = type opaque

@infoframe_type_to_idx = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_hdmi_infoframes_enabled(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_digital_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %5, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 0
  %18 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__* %17)
  store %struct.intel_digital_port* %18, %struct.intel_digital_port** %6, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %20 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %19, i32 0, i32 0
  %21 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state.0*)** %20, align 8
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %24 = bitcast %struct.intel_crtc_state* %23 to %struct.intel_crtc_state.0*
  %25 = call i32 %21(%struct.intel_encoder* %22, %struct.intel_crtc_state.0* %24)
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %65, %2
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** @infoframe_type_to_idx, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %26
  %32 = load i32*, i32** @infoframe_type_to_idx, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %38 = call i64 @HAS_DDI(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @hsw_infoframe_enable(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %40
  br label %64

52:                                               ; preds = %31
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @g4x_infoframe_enable(i32 %54)
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %52
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %26

68:                                               ; preds = %26
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_2__*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @hsw_infoframe_enable(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @g4x_infoframe_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
