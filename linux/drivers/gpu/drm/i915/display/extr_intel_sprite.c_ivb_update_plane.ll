; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_ivb_update_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_ivb_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.drm_intel_sprite_colorkey }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.drm_intel_sprite_colorkey = type { i32, i32, i32, i64 }
%struct.drm_i915_private = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@SPRITE_SCALE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)* @ivb_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivb_update_plane(%struct.intel_plane* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %23 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %24 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.drm_i915_private* @to_i915(i32 %26)
  store %struct.drm_i915_private* %27, %struct.drm_i915_private** %7, align 8
  %28 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %29 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %32 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %38 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %37, i32 0, i32 3
  store %struct.drm_intel_sprite_colorkey* %38, %struct.drm_intel_sprite_colorkey** %11, align 8
  %39 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %40 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %12, align 4
  %44 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %45 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %50 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = call i32 @drm_rect_width(%struct.TYPE_11__* %51)
  store i32 %52, i32* %14, align 4
  %53 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %54 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = call i32 @drm_rect_height(%struct.TYPE_11__* %55)
  store i32 %56, i32* %15, align 4
  %57 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %58 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %16, align 4
  %63 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %64 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %17, align 4
  %69 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %70 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = call i32 @drm_rect_width(%struct.TYPE_11__* %71)
  %73 = ashr i32 %72, 16
  store i32 %73, i32* %18, align 4
  %74 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %75 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = call i32 @drm_rect_height(%struct.TYPE_11__* %76)
  %78 = ashr i32 %77, 16
  store i32 %78, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %79 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %80 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %83 = call i32 @ivb_sprite_ctl_crtc(%struct.intel_crtc_state* %82)
  %84 = or i32 %81, %83
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %3
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %19, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96, %3
  %101 = load i32, i32* @SPRITE_SCALE_ENABLE, align 4
  %102 = load i32, i32* %18, align 4
  %103 = shl i32 %102, 16
  %104 = or i32 %101, %103
  %105 = load i32, i32* %19, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %21, align 4
  br label %107

107:                                              ; preds = %100, %96
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %111 = call i32 @intel_fb_xy_to_linear(i32 %108, i32 %109, %struct.intel_plane_state* %110, i32 0)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %113 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %22, align 8
  %116 = call i32 @spin_lock_irqsave(i32* %114, i64 %115)
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @SPRSTRIDE(i32 %117)
  %119 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %120 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @I915_WRITE_FW(i32 %118, i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @SPRPOS(i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = shl i32 %128, 16
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @I915_WRITE_FW(i32 %127, i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @SPRSIZE(i32 %133)
  %135 = load i32, i32* %15, align 4
  %136 = shl i32 %135, 16
  %137 = load i32, i32* %14, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @I915_WRITE_FW(i32 %134, i32 %138)
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %141 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %107
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @SPRSCALE(i32 %144)
  %146 = load i32, i32* %21, align 4
  %147 = call i32 @I915_WRITE_FW(i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %107
  %149 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %11, align 8
  %150 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @SPRKEYVAL(i32 %154)
  %156 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %11, align 8
  %157 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @I915_WRITE_FW(i32 %155, i32 %158)
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @SPRKEYMSK(i32 %160)
  %162 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %11, align 8
  %163 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @I915_WRITE_FW(i32 %161, i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @SPRKEYMAX(i32 %166)
  %168 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %11, align 8
  %169 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @I915_WRITE_FW(i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %153, %148
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %174 = call i64 @IS_HASWELL(%struct.drm_i915_private* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %178 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %176, %172
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @SPROFFSET(i32 %181)
  %183 = load i32, i32* %17, align 4
  %184 = shl i32 %183, 16
  %185 = load i32, i32* %16, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @I915_WRITE_FW(i32 %182, i32 %186)
  br label %200

188:                                              ; preds = %176
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @SPRLINOFF(i32 %189)
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @I915_WRITE_FW(i32 %190, i32 %191)
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @SPRTILEOFF(i32 %193)
  %195 = load i32, i32* %17, align 4
  %196 = shl i32 %195, 16
  %197 = load i32, i32* %16, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @I915_WRITE_FW(i32 %194, i32 %198)
  br label %200

200:                                              ; preds = %188, %180
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @SPRCTL(i32 %201)
  %203 = load i32, i32* %20, align 4
  %204 = call i32 @I915_WRITE_FW(i32 %202, i32 %203)
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @SPRSURF(i32 %205)
  %207 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %208 = call i32 @intel_plane_ggtt_offset(%struct.intel_plane_state* %207)
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %208, %209
  %211 = call i32 @I915_WRITE_FW(i32 %206, i32 %210)
  %212 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %213 = call i32 @ivb_update_gamma(%struct.intel_plane_state* %212)
  %214 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %215 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i64, i64* %22, align 8
  %218 = call i32 @spin_unlock_irqrestore(i32* %216, i64 %217)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_11__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_11__*) #1

declare dso_local i32 @ivb_sprite_ctl_crtc(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_fb_xy_to_linear(i32, i32, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @SPRSTRIDE(i32) #1

declare dso_local i32 @SPRPOS(i32) #1

declare dso_local i32 @SPRSIZE(i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @SPRSCALE(i32) #1

declare dso_local i32 @SPRKEYVAL(i32) #1

declare dso_local i32 @SPRKEYMSK(i32) #1

declare dso_local i32 @SPRKEYMAX(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @SPROFFSET(i32) #1

declare dso_local i32 @SPRLINOFF(i32) #1

declare dso_local i32 @SPRTILEOFF(i32) #1

declare dso_local i32 @SPRCTL(i32) #1

declare dso_local i32 @SPRSURF(i32) #1

declare dso_local i32 @intel_plane_ggtt_offset(%struct.intel_plane_state*) #1

declare dso_local i32 @ivb_update_gamma(%struct.intel_plane_state*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
