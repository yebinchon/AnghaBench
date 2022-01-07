; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_detect_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_detect_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_tv = type { i32 }
%struct.drm_connector = type { i32, %struct.drm_device*, %struct.TYPE_2__* }
%struct.drm_device = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.drm_i915_private = type { i32 }

@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@PIPE_HOTPLUG_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@PIPE_HOTPLUG_TV_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@TV_DAC = common dso_local global i32 0, align 4
@TV_CTL = common dso_local global i32 0, align 4
@TV_ENC_ENABLE = common dso_local global i32 0, align 4
@TV_ENC_PIPE_SEL_MASK = common dso_local global i32 0, align 4
@TV_TEST_MODE_MASK = common dso_local global i32 0, align 4
@TV_TEST_MODE_MONITOR_DETECT = common dso_local global i32 0, align 4
@TVDAC_SENSE_MASK = common dso_local global i32 0, align 4
@DAC_A_MASK = common dso_local global i32 0, align 4
@DAC_B_MASK = common dso_local global i32 0, align 4
@DAC_C_MASK = common dso_local global i32 0, align 4
@TVDAC_STATE_CHG_EN = common dso_local global i32 0, align 4
@TVDAC_A_SENSE_CTL = common dso_local global i32 0, align 4
@TVDAC_B_SENSE_CTL = common dso_local global i32 0, align 4
@TVDAC_C_SENSE_CTL = common dso_local global i32 0, align 4
@DAC_CTL_OVERRIDE = common dso_local global i32 0, align 4
@DAC_A_0_7_V = common dso_local global i32 0, align 4
@DAC_B_0_7_V = common dso_local global i32 0, align 4
@DAC_C_0_7_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TV detected: %x, %x\0A\00", align 1
@TVDAC_B_SENSE = common dso_local global i32 0, align 4
@TVDAC_C_SENSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Detected Composite TV connection\0A\00", align 1
@DRM_MODE_CONNECTOR_Composite = common dso_local global i32 0, align 4
@TVDAC_A_SENSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Detected S-Video TV connection\0A\00", align 1
@DRM_MODE_CONNECTOR_SVIDEO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Detected Component TV connection\0A\00", align 1
@DRM_MODE_CONNECTOR_Component = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Unrecognised TV connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_tv*, %struct.drm_connector*)* @intel_tv_detect_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_detect_type(%struct.intel_tv* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.intel_tv*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_tv* %0, %struct.intel_tv** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  store %struct.drm_crtc* %18, %struct.drm_crtc** %5, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %20 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %19)
  store %struct.intel_crtc* %20, %struct.intel_crtc** %6, align 8
  %21 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 1
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %7, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %24)
  store %struct.drm_i915_private* %25, %struct.drm_i915_private** %8, align 8
  %26 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %37 = load i32, i32* @PIPE_HOTPLUG_INTERRUPT_STATUS, align 4
  %38 = load i32, i32* @PIPE_HOTPLUG_TV_INTERRUPT_STATUS, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @i915_disable_pipestat(%struct.drm_i915_private* %36, i32 0, i32 %39)
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_irq(i32* %42)
  br label %44

44:                                               ; preds = %32, %2
  %45 = load i32, i32* @TV_DAC, align 4
  %46 = call i32 @I915_READ(i32 %45)
  store i32 %46, i32* %11, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @TV_CTL, align 4
  %48 = call i32 @I915_READ(i32 %47)
  store i32 %48, i32* %9, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @TV_ENC_ENABLE, align 4
  %50 = load i32, i32* @TV_ENC_PIPE_SEL_MASK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @TV_TEST_MODE_MASK, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @TV_TEST_MODE_MONITOR_DETECT, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %61 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @TV_ENC_PIPE_SEL(i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @TVDAC_SENSE_MASK, align 4
  %67 = load i32, i32* @DAC_A_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @DAC_B_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @DAC_C_MASK, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %77 = load i32, i32* @TVDAC_A_SENSE_CTL, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @TVDAC_B_SENSE_CTL, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @TVDAC_C_SENSE_CTL, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @DAC_CTL_OVERRIDE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @DAC_A_0_7_V, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @DAC_B_0_7_V, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @DAC_C_0_7_V, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %94 = call i64 @IS_GM45(%struct.drm_i915_private* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %44
  %97 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %98 = load i32, i32* @TVDAC_A_SENSE_CTL, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @TVDAC_B_SENSE_CTL, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @TVDAC_C_SENSE_CTL, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %96, %44
  %108 = load i32, i32* @TV_CTL, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @I915_WRITE(i32 %108, i32 %109)
  %111 = load i32, i32* @TV_DAC, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @I915_WRITE(i32 %111, i32 %112)
  %114 = load i32, i32* @TV_DAC, align 4
  %115 = call i32 @POSTING_READ(i32 %114)
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %117 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %118 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %116, i32 %119)
  store i32 -1, i32* %13, align 4
  %121 = load i32, i32* @TV_DAC, align 4
  %122 = call i32 @I915_READ(i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @TVDAC_SENSE_MASK, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @TVDAC_B_SENSE, align 4
  %130 = load i32, i32* @TVDAC_C_SENSE, align 4
  %131 = or i32 %129, %130
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %107
  %134 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* @DRM_MODE_CONNECTOR_Composite, align 4
  store i32 %135, i32* %13, align 4
  br label %159

136:                                              ; preds = %107
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @TVDAC_A_SENSE, align 4
  %139 = load i32, i32* @TVDAC_B_SENSE, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %137, %140
  %142 = load i32, i32* @TVDAC_A_SENSE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  store i32 %146, i32* %13, align 4
  br label %158

147:                                              ; preds = %136
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @TVDAC_SENSE_MASK, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %154 = load i32, i32* @DRM_MODE_CONNECTOR_Component, align 4
  store i32 %154, i32* %13, align 4
  br label %157

155:                                              ; preds = %147
  %156 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %13, align 4
  br label %157

157:                                              ; preds = %155, %152
  br label %158

158:                                              ; preds = %157, %144
  br label %159

159:                                              ; preds = %158, %133
  %160 = load i32, i32* @TV_DAC, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %163 = xor i32 %162, -1
  %164 = and i32 %161, %163
  %165 = call i32 @I915_WRITE(i32 %160, i32 %164)
  %166 = load i32, i32* @TV_CTL, align 4
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @I915_WRITE(i32 %166, i32 %167)
  %169 = load i32, i32* @TV_CTL, align 4
  %170 = call i32 @POSTING_READ(i32 %169)
  %171 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %172 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %173 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %171, i32 %174)
  %176 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %177 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %159
  %183 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %184 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %183, i32 0, i32 0
  %185 = call i32 @spin_lock_irq(i32* %184)
  %186 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %187 = load i32, i32* @PIPE_HOTPLUG_INTERRUPT_STATUS, align 4
  %188 = load i32, i32* @PIPE_HOTPLUG_TV_INTERRUPT_STATUS, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @i915_enable_pipestat(%struct.drm_i915_private* %186, i32 0, i32 %189)
  %191 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %192 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %191, i32 0, i32 0
  %193 = call i32 @spin_unlock_irq(i32* %192)
  br label %194

194:                                              ; preds = %182, %159
  %195 = load i32, i32* %13, align 4
  ret i32 %195
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @i915_disable_pipestat(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TV_ENC_PIPE_SEL(i32) #1

declare dso_local i64 @IS_GM45(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @i915_enable_pipestat(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
