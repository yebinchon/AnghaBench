; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_update_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@PLANE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)* @i9xx_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_update_plane(%struct.intel_plane* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %19 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %20 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.drm_i915_private* @to_i915(i32 %22)
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %7, align 8
  %24 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %25 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %28 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %34 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %40 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %12, align 4
  %44 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %45 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %50 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = call i32 @drm_rect_width(%struct.TYPE_11__* %51)
  store i32 %52, i32* %14, align 4
  %53 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %54 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = call i32 @drm_rect_height(%struct.TYPE_11__* %55)
  store i32 %56, i32* %15, align 4
  %57 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %58 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %61 = call i32 @i9xx_plane_ctl_crtc(%struct.intel_crtc_state* %60)
  %62 = or i32 %59, %61
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %66 = call i32 @intel_fb_xy_to_linear(i32 %63, i32 %64, %struct.intel_plane_state* %65, i32 0)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %68 = call i32 @INTEL_GEN(%struct.drm_i915_private* %67)
  %69 = icmp sge i32 %68, 4
  br i1 %69, label %70, label %77

70:                                               ; preds = %3
  %71 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %72 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %17, align 4
  br label %79

77:                                               ; preds = %3
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %77, %70
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %81 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %16, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @DSPSTRIDE(i32 %85)
  %87 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %88 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @I915_WRITE_FW(i32 %86, i32 %92)
  %94 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %95 = call i32 @INTEL_GEN(%struct.drm_i915_private* %94)
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %114

97:                                               ; preds = %79
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @DSPPOS(i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = shl i32 %100, 16
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @I915_WRITE_FW(i32 %99, i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @DSPSIZE(i32 %105)
  %107 = load i32, i32* %15, align 4
  %108 = sub nsw i32 %107, 1
  %109 = shl i32 %108, 16
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 %110, 1
  %112 = or i32 %109, %111
  %113 = call i32 @I915_WRITE_FW(i32 %106, i32 %112)
  br label %143

114:                                              ; preds = %79
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %116 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %114
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @PLANE_B, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @PRIMPOS(i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = shl i32 %125, 16
  %127 = load i32, i32* %12, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @I915_WRITE_FW(i32 %124, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @PRIMSIZE(i32 %130)
  %132 = load i32, i32* %15, align 4
  %133 = sub nsw i32 %132, 1
  %134 = shl i32 %133, 16
  %135 = load i32, i32* %14, align 4
  %136 = sub nsw i32 %135, 1
  %137 = or i32 %134, %136
  %138 = call i32 @I915_WRITE_FW(i32 %131, i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @PRIMCNSTALPHA(i32 %139)
  %141 = call i32 @I915_WRITE_FW(i32 %140, i32 0)
  br label %142

142:                                              ; preds = %122, %118, %114
  br label %143

143:                                              ; preds = %142, %97
  %144 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %145 = call i64 @IS_HASWELL(%struct.drm_i915_private* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %149 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %147, %143
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @DSPOFFSET(i32 %152)
  %154 = load i32, i32* %11, align 4
  %155 = shl i32 %154, 16
  %156 = load i32, i32* %10, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @I915_WRITE_FW(i32 %153, i32 %157)
  br label %176

159:                                              ; preds = %147
  %160 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %161 = call i32 @INTEL_GEN(%struct.drm_i915_private* %160)
  %162 = icmp sge i32 %161, 4
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @DSPLINOFF(i32 %164)
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @I915_WRITE_FW(i32 %165, i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @DSPTILEOFF(i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = shl i32 %170, 16
  %172 = load i32, i32* %10, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @I915_WRITE_FW(i32 %169, i32 %173)
  br label %175

175:                                              ; preds = %163, %159
  br label %176

176:                                              ; preds = %175, %151
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @DSPCNTR(i32 %177)
  %179 = load i32, i32* %18, align 4
  %180 = call i32 @I915_WRITE_FW(i32 %178, i32 %179)
  %181 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %182 = call i32 @INTEL_GEN(%struct.drm_i915_private* %181)
  %183 = icmp sge i32 %182, 4
  br i1 %183, label %184, label %192

184:                                              ; preds = %176
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @DSPSURF(i32 %185)
  %187 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %188 = call i32 @intel_plane_ggtt_offset(%struct.intel_plane_state* %187)
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i32 @I915_WRITE_FW(i32 %186, i32 %190)
  br label %200

192:                                              ; preds = %176
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @DSPADDR(i32 %193)
  %195 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %196 = call i32 @intel_plane_ggtt_offset(%struct.intel_plane_state* %195)
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %196, %197
  %199 = call i32 @I915_WRITE_FW(i32 %194, i32 %198)
  br label %200

200:                                              ; preds = %192, %184
  %201 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %202 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i64, i64* %16, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_11__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_11__*) #1

declare dso_local i32 @i9xx_plane_ctl_crtc(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_fb_xy_to_linear(i32, i32, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @DSPSTRIDE(i32) #1

declare dso_local i32 @DSPPOS(i32) #1

declare dso_local i32 @DSPSIZE(i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @PRIMPOS(i32) #1

declare dso_local i32 @PRIMSIZE(i32) #1

declare dso_local i32 @PRIMCNSTALPHA(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @DSPOFFSET(i32) #1

declare dso_local i32 @DSPLINOFF(i32) #1

declare dso_local i32 @DSPTILEOFF(i32) #1

declare dso_local i32 @DSPCNTR(i32) #1

declare dso_local i32 @DSPSURF(i32) #1

declare dso_local i32 @intel_plane_ggtt_offset(%struct.intel_plane_state*) #1

declare dso_local i32 @DSPADDR(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
