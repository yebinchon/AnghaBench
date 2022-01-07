; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_fdi_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_fdi_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@FDI_RX_SYMBOL_LOCK = common dso_local global i32 0, align 4
@FDI_RX_BIT_LOCK = common dso_local global i32 0, align 4
@FDI_DP_PORT_WIDTH_MASK = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_NONE = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1 = common dso_local global i32 0, align 4
@FDI_TX_ENABLE = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@FDI_RX_PHASE_SYNC_POINTER_OVR = common dso_local global i32 0, align 4
@FDI_RX_PHASE_SYNC_POINTER_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"FDI_RX_IIR 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"FDI train 1 done.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"FDI train 1 fail!\0A\00", align 1
@FDI_LINK_TRAIN_PATTERN_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"FDI train 2 done.\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"FDI train 2 fail!\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"FDI train done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @ironlake_fdi_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_fdi_link_train(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @assert_pipe_enabled(%struct.drm_i915_private* %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @FDI_RX_IMR(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @I915_READ(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @I915_WRITE(i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @I915_READ(i32 %38)
  %40 = call i32 @udelay(i32 150)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @FDI_TX_CTL(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @I915_READ(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @FDI_DP_PORT_WIDTH_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %50 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @FDI_DP_PORT_WIDTH(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @FDI_TX_ENABLE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @I915_WRITE(i32 %62, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @FDI_RX_CTL(i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @I915_READ(i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @FDI_RX_ENABLE, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @I915_WRITE(i32 %78, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @POSTING_READ(i32 %83)
  %85 = call i32 @udelay(i32 150)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @FDI_RX_CHICKEN(i32 %86)
  %88 = load i32, i32* @FDI_RX_PHASE_SYNC_POINTER_OVR, align 4
  %89 = call i32 @I915_WRITE(i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @FDI_RX_CHICKEN(i32 %90)
  %92 = load i32, i32* @FDI_RX_PHASE_SYNC_POINTER_OVR, align 4
  %93 = load i32, i32* @FDI_RX_PHASE_SYNC_POINTER_EN, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @I915_WRITE(i32 %91, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @FDI_RX_IIR(i32 %96)
  store i32 %97, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %118, %2
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 5
  br i1 %100, label %101, label %121

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @I915_READ(i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @I915_WRITE(i32 %112, i32 %115)
  br label %121

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %98

121:                                              ; preds = %110, %98
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %122, 5
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %121
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @FDI_TX_CTL(i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @I915_READ(i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2, align 4
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @I915_WRITE(i32 %138, i32 %139)
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @FDI_RX_CTL(i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @I915_READ(i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %9, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2, align 4
  %150 = load i32, i32* %9, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @I915_WRITE(i32 %152, i32 %153)
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @POSTING_READ(i32 %155)
  %157 = call i32 @udelay(i32 150)
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @FDI_RX_IIR(i32 %158)
  store i32 %159, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %180, %126
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %161, 5
  br i1 %162, label %163, label %183

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @I915_READ(i32 %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %163
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @I915_WRITE(i32 %173, i32 %176)
  %178 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %183

179:                                              ; preds = %163
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %160

183:                                              ; preds = %172, %160
  %184 = load i32, i32* %10, align 4
  %185 = icmp eq i32 %184, 5
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %183
  %189 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @assert_pipe_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @FDI_RX_IMR(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

declare dso_local i32 @FDI_DP_PORT_WIDTH(i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @FDI_RX_CHICKEN(i32) #1

declare dso_local i32 @FDI_RX_IIR(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
