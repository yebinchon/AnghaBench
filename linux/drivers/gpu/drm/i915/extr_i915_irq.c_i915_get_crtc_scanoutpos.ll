; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_crtc_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_crtc_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc = type { i32 }

@I915_MODE_FLAG_USE_SCANLINE_COUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"trying to get scanoutpos for disabled pipe %c\0A\00", align 1
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@PIPE_PIXEL_MASK = common dso_local global i32 0, align 4
@PIPE_PIXEL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_get_crtc_scanoutpos(%struct.drm_device* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, %struct.drm_display_mode* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.drm_display_mode*, align 8
  %18 = alloca %struct.drm_i915_private*, align 8
  %19 = alloca %struct.intel_crtc*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.drm_display_mode* %7, %struct.drm_display_mode** %17, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %29 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %28)
  store %struct.drm_i915_private* %29, %struct.drm_i915_private** %18, align 8
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private* %30, i32 %31)
  store %struct.intel_crtc* %32, %struct.intel_crtc** %19, align 8
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  %34 = call i32 @INTEL_GEN(%struct.drm_i915_private* %33)
  %35 = icmp sge i32 %34, 5
  br i1 %35, label %51, label %36

36:                                               ; preds = %8
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  %38 = call i64 @IS_G4X(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  %42 = call i64 @IS_GEN(%struct.drm_i915_private* %41, i32 2)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @I915_MODE_FLAG_USE_SCANLINE_COUNTER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %44, %40, %36, %8
  %52 = phi i1 [ true, %40 ], [ true, %36 ], [ true, %8 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %27, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @WARN_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @pipe_name(i32 %63)
  %65 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 0, i32* %9, align 4
  br label %188

66:                                               ; preds = %51
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %24, align 4
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %23, align 4
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %25, align 4
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %21, align 4
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %22, align 4
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %66
  %89 = load i32, i32* %21, align 4
  %90 = call i32 @DIV_ROUND_UP(i32 %89, i32 2)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %22, align 4
  %92 = sdiv i32 %91, 2
  store i32 %92, i32* %22, align 4
  %93 = load i32, i32* %25, align 4
  %94 = sdiv i32 %93, 2
  store i32 %94, i32* %25, align 4
  br label %95

95:                                               ; preds = %88, %66
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  %97 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %26, align 8
  %100 = call i32 @spin_lock_irqsave(i32* %98, i64 %99)
  %101 = load i32*, i32** %15, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = call i32 (...) @ktime_get()
  %105 = load i32*, i32** %15, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %95
  %107 = load i32, i32* %27, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.intel_crtc*, %struct.intel_crtc** %19, align 8
  %111 = call i32 @__intel_get_crtc_scanline(%struct.intel_crtc* %110)
  store i32 %111, i32* %20, align 4
  br label %143

112:                                              ; preds = %106
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @PIPEFRAMEPIXEL(i32 %113)
  %115 = call i32 @I915_READ_FW(i32 %114)
  %116 = load i32, i32* @PIPE_PIXEL_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @PIPE_PIXEL_SHIFT, align 4
  %119 = ashr i32 %117, %118
  store i32 %119, i32* %20, align 4
  %120 = load i32, i32* %24, align 4
  %121 = load i32, i32* %21, align 4
  %122 = mul nsw i32 %121, %120
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %22, align 4
  %125 = mul nsw i32 %124, %123
  store i32 %125, i32* %22, align 4
  %126 = load i32, i32* %24, align 4
  %127 = load i32, i32* %25, align 4
  %128 = mul nsw i32 %127, %126
  store i32 %128, i32* %25, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %25, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %112
  %133 = load i32, i32* %25, align 4
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %20, align 4
  br label %135

135:                                              ; preds = %132, %112
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %24, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %23, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32, i32* %25, align 4
  %142 = srem i32 %140, %141
  store i32 %142, i32* %20, align 4
  br label %143

143:                                              ; preds = %135, %109
  %144 = load i32*, i32** %16, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = call i32 (...) @ktime_get()
  %148 = load i32*, i32** %16, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  %151 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %26, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* %152, i64 %153)
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %21, align 4
  %157 = icmp sge i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %20, align 4
  %161 = sub nsw i32 %160, %159
  store i32 %161, i32* %20, align 4
  br label %168

162:                                              ; preds = %149
  %163 = load i32, i32* %25, align 4
  %164 = load i32, i32* %22, align 4
  %165 = sub nsw i32 %163, %164
  %166 = load i32, i32* %20, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %20, align 4
  br label %168

168:                                              ; preds = %162, %158
  %169 = load i32, i32* %27, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32, i32* %20, align 4
  %173 = load i32*, i32** %13, align 8
  store i32 %172, i32* %173, align 4
  %174 = load i32*, i32** %14, align 8
  store i32 0, i32* %174, align 4
  br label %187

175:                                              ; preds = %168
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %24, align 4
  %178 = sdiv i32 %176, %177
  %179 = load i32*, i32** %13, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* %20, align 4
  %181 = load i32*, i32** %13, align 8
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %24, align 4
  %184 = mul nsw i32 %182, %183
  %185 = sub nsw i32 %180, %184
  %186 = load i32*, i32** %14, align 8
  store i32 %185, i32* %186, align 4
  br label %187

187:                                              ; preds = %175, %171
  store i32 1, i32* %9, align 4
  br label %188

188:                                              ; preds = %187, %62
  %189 = load i32, i32* %9, align 4
  ret i32 %189
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @__intel_get_crtc_scanline(%struct.intel_crtc*) #1

declare dso_local i32 @I915_READ_FW(i32) #1

declare dso_local i32 @PIPEFRAMEPIXEL(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
