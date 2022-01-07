; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_vlv_update_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_vlv_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.drm_intel_sprite_colorkey }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.drm_intel_sprite_colorkey = type { i32, i32, i32, i64 }
%struct.drm_i915_private = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@PIPE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)* @vlv_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_update_plane(%struct.intel_plane* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %21 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %22 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.drm_i915_private* @to_i915(i32 %24)
  store %struct.drm_i915_private* %25, %struct.drm_i915_private** %7, align 8
  %26 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %27 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %30 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %33 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %39 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %38, i32 0, i32 3
  store %struct.drm_intel_sprite_colorkey* %39, %struct.drm_intel_sprite_colorkey** %12, align 8
  %40 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %41 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  %45 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %46 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %51 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call i32 @drm_rect_width(%struct.TYPE_11__* %52)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %55 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @drm_rect_height(%struct.TYPE_11__* %56)
  store i32 %57, i32* %16, align 4
  %58 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %59 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %17, align 4
  %64 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %65 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %18, align 4
  %70 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %71 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %74 = call i32 @vlv_sprite_ctl_crtc(%struct.intel_crtc_state* %73)
  %75 = or i32 %72, %74
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %83 = call i32 @intel_fb_xy_to_linear(i32 %80, i32 %81, %struct.intel_plane_state* %82, i32 0)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %19, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @SPSTRIDE(i32 %89, i32 %90)
  %92 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %93 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @I915_WRITE_FW(i32 %91, i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @SPPOS(i32 %99, i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = shl i32 %102, 16
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @I915_WRITE_FW(i32 %101, i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @SPSIZE(i32 %107, i32 %108)
  %110 = load i32, i32* %16, align 4
  %111 = shl i32 %110, 16
  %112 = load i32, i32* %15, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @I915_WRITE_FW(i32 %109, i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @SPCONSTALPHA(i32 %115, i32 %116)
  %118 = call i32 @I915_WRITE_FW(i32 %117, i32 0)
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %120 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %3
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @PIPE_B, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %128 = call i32 @chv_update_csc(%struct.intel_plane_state* %127)
  br label %129

129:                                              ; preds = %126, %122, %3
  %130 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %12, align 8
  %131 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %129
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @SPKEYMINVAL(i32 %135, i32 %136)
  %138 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %12, align 8
  %139 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @I915_WRITE_FW(i32 %137, i32 %140)
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @SPKEYMSK(i32 %142, i32 %143)
  %145 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %12, align 8
  %146 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @I915_WRITE_FW(i32 %144, i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @SPKEYMAXVAL(i32 %149, i32 %150)
  %152 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %12, align 8
  %153 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @I915_WRITE_FW(i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %134, %129
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @SPLINOFF(i32 %157, i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @I915_WRITE_FW(i32 %159, i32 %160)
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @SPTILEOFF(i32 %162, i32 %163)
  %165 = load i32, i32* %18, align 4
  %166 = shl i32 %165, 16
  %167 = load i32, i32* %17, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @I915_WRITE_FW(i32 %164, i32 %168)
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @SPCNTR(i32 %170, i32 %171)
  %173 = load i32, i32* %20, align 4
  %174 = call i32 @I915_WRITE_FW(i32 %172, i32 %173)
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @SPSURF(i32 %175, i32 %176)
  %178 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %179 = call i32 @intel_plane_ggtt_offset(%struct.intel_plane_state* %178)
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %179, %180
  %182 = call i32 @I915_WRITE_FW(i32 %177, i32 %181)
  %183 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %184 = call i32 @vlv_update_clrc(%struct.intel_plane_state* %183)
  %185 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %186 = call i32 @vlv_update_gamma(%struct.intel_plane_state* %185)
  %187 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %188 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %19, align 8
  %191 = call i32 @spin_unlock_irqrestore(i32* %189, i64 %190)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_11__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_11__*) #1

declare dso_local i32 @vlv_sprite_ctl_crtc(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_fb_xy_to_linear(i32, i32, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @SPSTRIDE(i32, i32) #1

declare dso_local i32 @SPPOS(i32, i32) #1

declare dso_local i32 @SPSIZE(i32, i32) #1

declare dso_local i32 @SPCONSTALPHA(i32, i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @chv_update_csc(%struct.intel_plane_state*) #1

declare dso_local i32 @SPKEYMINVAL(i32, i32) #1

declare dso_local i32 @SPKEYMSK(i32, i32) #1

declare dso_local i32 @SPKEYMAXVAL(i32, i32) #1

declare dso_local i32 @SPLINOFF(i32, i32) #1

declare dso_local i32 @SPTILEOFF(i32, i32) #1

declare dso_local i32 @SPCNTR(i32, i32) #1

declare dso_local i32 @SPSURF(i32, i32) #1

declare dso_local i32 @intel_plane_ggtt_offset(%struct.intel_plane_state*) #1

declare dso_local i32 @vlv_update_clrc(%struct.intel_plane_state*) #1

declare dso_local i32 @vlv_update_gamma(%struct.intel_plane_state*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
