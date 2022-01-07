; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lpe_audio.c_intel_lpe_audio_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lpe_audio.c_intel_lpe_audio_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.intel_hdmi_lpe_audio_pdata = type { i32, i32 (%struct.TYPE_4__*, i32)*, %struct.intel_hdmi_lpe_audio_port_pdata* }
%struct.intel_hdmi_lpe_audio_port_pdata = type { i32, i32, i32, i32 }

@PORT_B = common dso_local global i32 0, align 4
@HDMI_MAX_ELD_BYTES = common dso_local global i32 0, align 4
@VLV_AMP_MUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_lpe_audio_notify(%struct.drm_i915_private* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.intel_hdmi_lpe_audio_pdata*, align 8
  %15 = alloca %struct.intel_hdmi_lpe_audio_port_pdata*, align 8
  %16 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %18 = call i32 @HAS_LPE_AUDIO(%struct.drm_i915_private* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %108

21:                                               ; preds = %6
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call %struct.intel_hdmi_lpe_audio_pdata* @dev_get_platdata(i32* %26)
  store %struct.intel_hdmi_lpe_audio_pdata* %27, %struct.intel_hdmi_lpe_audio_pdata** %14, align 8
  %28 = load %struct.intel_hdmi_lpe_audio_pdata*, %struct.intel_hdmi_lpe_audio_pdata** %14, align 8
  %29 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_pdata, %struct.intel_hdmi_lpe_audio_pdata* %28, i32 0, i32 2
  %30 = load %struct.intel_hdmi_lpe_audio_port_pdata*, %struct.intel_hdmi_lpe_audio_port_pdata** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PORT_B, align 4
  %33 = sub i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_port_pdata, %struct.intel_hdmi_lpe_audio_port_pdata* %30, i64 %34
  store %struct.intel_hdmi_lpe_audio_port_pdata* %35, %struct.intel_hdmi_lpe_audio_port_pdata** %15, align 8
  %36 = load %struct.intel_hdmi_lpe_audio_pdata*, %struct.intel_hdmi_lpe_audio_pdata** %14, align 8
  %37 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_pdata, %struct.intel_hdmi_lpe_audio_pdata* %36, i32 0, i32 0
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @VLV_AUD_PORT_EN_DBG(i32 %40)
  %42 = call i32 @I915_READ(i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %68

45:                                               ; preds = %21
  %46 = load %struct.intel_hdmi_lpe_audio_port_pdata*, %struct.intel_hdmi_lpe_audio_port_pdata** %15, align 8
  %47 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_port_pdata, %struct.intel_hdmi_lpe_audio_port_pdata* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* @HDMI_MAX_ELD_BYTES, align 4
  %51 = call i32 @memcpy(i32 %48, i8* %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.intel_hdmi_lpe_audio_port_pdata*, %struct.intel_hdmi_lpe_audio_port_pdata** %15, align 8
  %54 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_port_pdata, %struct.intel_hdmi_lpe_audio_port_pdata* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.intel_hdmi_lpe_audio_port_pdata*, %struct.intel_hdmi_lpe_audio_port_pdata** %15, align 8
  %57 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_port_pdata, %struct.intel_hdmi_lpe_audio_port_pdata* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.intel_hdmi_lpe_audio_port_pdata*, %struct.intel_hdmi_lpe_audio_port_pdata** %15, align 8
  %60 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_port_pdata, %struct.intel_hdmi_lpe_audio_port_pdata* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @VLV_AUD_PORT_EN_DBG(i32 %61)
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @VLV_AMP_MUTE, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = call i32 @I915_WRITE(i32 %62, i32 %66)
  br label %86

68:                                               ; preds = %21
  %69 = load %struct.intel_hdmi_lpe_audio_port_pdata*, %struct.intel_hdmi_lpe_audio_port_pdata** %15, align 8
  %70 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_port_pdata, %struct.intel_hdmi_lpe_audio_port_pdata* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HDMI_MAX_ELD_BYTES, align 4
  %73 = call i32 @memset(i32 %71, i32 0, i32 %72)
  %74 = load %struct.intel_hdmi_lpe_audio_port_pdata*, %struct.intel_hdmi_lpe_audio_port_pdata** %15, align 8
  %75 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_port_pdata, %struct.intel_hdmi_lpe_audio_port_pdata* %74, i32 0, i32 0
  store i32 -1, i32* %75, align 4
  %76 = load %struct.intel_hdmi_lpe_audio_port_pdata*, %struct.intel_hdmi_lpe_audio_port_pdata** %15, align 8
  %77 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_port_pdata, %struct.intel_hdmi_lpe_audio_port_pdata* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.intel_hdmi_lpe_audio_port_pdata*, %struct.intel_hdmi_lpe_audio_port_pdata** %15, align 8
  %79 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_port_pdata, %struct.intel_hdmi_lpe_audio_port_pdata* %78, i32 0, i32 2
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @VLV_AUD_PORT_EN_DBG(i32 %80)
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @VLV_AMP_MUTE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @I915_WRITE(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %68, %45
  %87 = load %struct.intel_hdmi_lpe_audio_pdata*, %struct.intel_hdmi_lpe_audio_pdata** %14, align 8
  %88 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_pdata, %struct.intel_hdmi_lpe_audio_pdata* %87, i32 0, i32 1
  %89 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %88, align 8
  %90 = icmp ne i32 (%struct.TYPE_4__*, i32)* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.intel_hdmi_lpe_audio_pdata*, %struct.intel_hdmi_lpe_audio_pdata** %14, align 8
  %93 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_pdata, %struct.intel_hdmi_lpe_audio_pdata* %92, i32 0, i32 1
  %94 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %93, align 8
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %96 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @PORT_B, align 4
  %101 = sub i32 %99, %100
  %102 = call i32 %94(%struct.TYPE_4__* %98, i32 %101)
  br label %103

103:                                              ; preds = %91, %86
  %104 = load %struct.intel_hdmi_lpe_audio_pdata*, %struct.intel_hdmi_lpe_audio_pdata** %14, align 8
  %105 = getelementptr inbounds %struct.intel_hdmi_lpe_audio_pdata, %struct.intel_hdmi_lpe_audio_pdata* %104, i32 0, i32 0
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  br label %108

108:                                              ; preds = %103, %20
  ret void
}

declare dso_local i32 @HAS_LPE_AUDIO(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_hdmi_lpe_audio_pdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @VLV_AUD_PORT_EN_DBG(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
