; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_update_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_update_plane.c"
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

@DVS_SCALE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)* @g4x_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_update_plane(%struct.intel_plane* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
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
  %83 = call i32 @g4x_sprite_ctl_crtc(%struct.intel_crtc_state* %82)
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
  %101 = load i32, i32* @DVS_SCALE_ENABLE, align 4
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
  %118 = call i32 @DVSSTRIDE(i32 %117)
  %119 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %120 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @I915_WRITE_FW(i32 %118, i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @DVSPOS(i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = shl i32 %128, 16
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @I915_WRITE_FW(i32 %127, i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @DVSSIZE(i32 %133)
  %135 = load i32, i32* %15, align 4
  %136 = shl i32 %135, 16
  %137 = load i32, i32* %14, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @I915_WRITE_FW(i32 %134, i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @DVSSCALE(i32 %140)
  %142 = load i32, i32* %21, align 4
  %143 = call i32 @I915_WRITE_FW(i32 %141, i32 %142)
  %144 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %11, align 8
  %145 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %107
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @DVSKEYVAL(i32 %149)
  %151 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %11, align 8
  %152 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @I915_WRITE_FW(i32 %150, i32 %153)
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @DVSKEYMSK(i32 %155)
  %157 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %11, align 8
  %158 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @I915_WRITE_FW(i32 %156, i32 %159)
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @DVSKEYMAX(i32 %161)
  %163 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %11, align 8
  %164 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @I915_WRITE_FW(i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %148, %107
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @DVSLINOFF(i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @I915_WRITE_FW(i32 %169, i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @DVSTILEOFF(i32 %172)
  %174 = load i32, i32* %17, align 4
  %175 = shl i32 %174, 16
  %176 = load i32, i32* %16, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @I915_WRITE_FW(i32 %173, i32 %177)
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @DVSCNTR(i32 %179)
  %181 = load i32, i32* %20, align 4
  %182 = call i32 @I915_WRITE_FW(i32 %180, i32 %181)
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @DVSSURF(i32 %183)
  %185 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %186 = call i32 @intel_plane_ggtt_offset(%struct.intel_plane_state* %185)
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %186, %187
  %189 = call i32 @I915_WRITE_FW(i32 %184, i32 %188)
  %190 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %191 = call i64 @IS_G4X(%struct.drm_i915_private* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %167
  %194 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %195 = call i32 @g4x_update_gamma(%struct.intel_plane_state* %194)
  br label %199

196:                                              ; preds = %167
  %197 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %198 = call i32 @ilk_update_gamma(%struct.intel_plane_state* %197)
  br label %199

199:                                              ; preds = %196, %193
  %200 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %201 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i64, i64* %22, align 8
  %204 = call i32 @spin_unlock_irqrestore(i32* %202, i64 %203)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_11__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_11__*) #1

declare dso_local i32 @g4x_sprite_ctl_crtc(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_fb_xy_to_linear(i32, i32, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @DVSSTRIDE(i32) #1

declare dso_local i32 @DVSPOS(i32) #1

declare dso_local i32 @DVSSIZE(i32) #1

declare dso_local i32 @DVSSCALE(i32) #1

declare dso_local i32 @DVSKEYVAL(i32) #1

declare dso_local i32 @DVSKEYMSK(i32) #1

declare dso_local i32 @DVSKEYMAX(i32) #1

declare dso_local i32 @DVSLINOFF(i32) #1

declare dso_local i32 @DVSTILEOFF(i32) #1

declare dso_local i32 @DVSCNTR(i32) #1

declare dso_local i32 @DVSSURF(i32) #1

declare dso_local i32 @intel_plane_ggtt_offset(%struct.intel_plane_state*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @g4x_update_gamma(%struct.intel_plane_state*) #1

declare dso_local i32 @ilk_update_gamma(%struct.intel_plane_state*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
