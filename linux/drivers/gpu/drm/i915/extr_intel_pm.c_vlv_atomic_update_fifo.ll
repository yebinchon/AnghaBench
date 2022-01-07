; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_atomic_update_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_atomic_update_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.vlv_fifo_state }
%struct.vlv_fifo_state = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@PLANE_PRIMARY = common dso_local global i64 0, align 8
@PLANE_SPRITE0 = common dso_local global i64 0, align 8
@PLANE_SPRITE1 = common dso_local global i64 0, align 8
@PLANE_CURSOR = common dso_local global i64 0, align 8
@DSPARB = common dso_local global i32 0, align 4
@DSPARB2 = common dso_local global i32 0, align 4
@SPRITEA = common dso_local global i32 0, align 4
@SPRITEB = common dso_local global i32 0, align 4
@SPRITEA_HI = common dso_local global i32 0, align 4
@SPRITEB_HI = common dso_local global i32 0, align 4
@SPRITEC = common dso_local global i32 0, align 4
@SPRITED = common dso_local global i32 0, align 4
@SPRITEC_HI = common dso_local global i32 0, align 4
@SPRITED_HI = common dso_local global i32 0, align 4
@DSPARB3 = common dso_local global i32 0, align 4
@SPRITEE = common dso_local global i32 0, align 4
@SPRITEF = common dso_local global i32 0, align 4
@SPRITEE_HI = common dso_local global i32 0, align 4
@SPRITEF_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* @vlv_atomic_update_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_atomic_update_fifo(%struct.intel_atomic_state* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_uncore*, align 8
  %8 = alloca %struct.vlv_fifo_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.intel_crtc* @to_intel_crtc(i32 %18)
  store %struct.intel_crtc* %19, %struct.intel_crtc** %5, align 8
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.drm_i915_private* @to_i915(i32 %23)
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %6, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  store %struct.intel_uncore* %26, %struct.intel_uncore** %7, align 8
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store %struct.vlv_fifo_state* %30, %struct.vlv_fifo_state** %8, align 8
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %32 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %244

36:                                               ; preds = %2
  %37 = load %struct.vlv_fifo_state*, %struct.vlv_fifo_state** %8, align 8
  %38 = getelementptr inbounds %struct.vlv_fifo_state, %struct.vlv_fifo_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @PLANE_PRIMARY, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.vlv_fifo_state*, %struct.vlv_fifo_state** %8, align 8
  %44 = getelementptr inbounds %struct.vlv_fifo_state, %struct.vlv_fifo_state* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @PLANE_SPRITE0, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.vlv_fifo_state*, %struct.vlv_fifo_state** %8, align 8
  %52 = getelementptr inbounds %struct.vlv_fifo_state, %struct.vlv_fifo_state* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @PLANE_SPRITE1, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %11, align 4
  %59 = load %struct.vlv_fifo_state*, %struct.vlv_fifo_state** %8, align 8
  %60 = getelementptr inbounds %struct.vlv_fifo_state, %struct.vlv_fifo_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @PLANE_CURSOR, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 63
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 511
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON(i32 %70)
  %72 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @trace_vlv_fifo_size(%struct.intel_crtc* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %78 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %81 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %236 [
    i32 130, label %83
    i32 129, label %134
    i32 128, label %185
  ]

83:                                               ; preds = %36
  %84 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %85 = load i32, i32* @DSPARB, align 4
  %86 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %88 = load i32, i32* @DSPARB2, align 4
  %89 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %87, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* @SPRITEA, align 4
  %91 = call i32 @VLV_FIFO(i32 %90, i32 255)
  %92 = load i32, i32* @SPRITEB, align 4
  %93 = call i32 @VLV_FIFO(i32 %92, i32 255)
  %94 = or i32 %91, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* @SPRITEA, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @VLV_FIFO(i32 %98, i32 %99)
  %101 = load i32, i32* @SPRITEB, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @VLV_FIFO(i32 %101, i32 %102)
  %104 = or i32 %100, %103
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* @SPRITEA_HI, align 4
  %108 = call i32 @VLV_FIFO(i32 %107, i32 1)
  %109 = load i32, i32* @SPRITEB_HI, align 4
  %110 = call i32 @VLV_FIFO(i32 %109, i32 1)
  %111 = or i32 %108, %110
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %13, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* @SPRITEA_HI, align 4
  %116 = load i32, i32* %9, align 4
  %117 = ashr i32 %116, 8
  %118 = call i32 @VLV_FIFO(i32 %115, i32 %117)
  %119 = load i32, i32* @SPRITEB_HI, align 4
  %120 = load i32, i32* %10, align 4
  %121 = ashr i32 %120, 8
  %122 = call i32 @VLV_FIFO(i32 %119, i32 %121)
  %123 = or i32 %118, %122
  %124 = load i32, i32* %13, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %13, align 4
  %126 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %127 = load i32, i32* @DSPARB, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %126, i32 %127, i32 %128)
  %130 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %131 = load i32, i32* @DSPARB2, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %130, i32 %131, i32 %132)
  br label %237

134:                                              ; preds = %36
  %135 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %136 = load i32, i32* @DSPARB, align 4
  %137 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %139 = load i32, i32* @DSPARB2, align 4
  %140 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %138, i32 %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* @SPRITEC, align 4
  %142 = call i32 @VLV_FIFO(i32 %141, i32 255)
  %143 = load i32, i32* @SPRITED, align 4
  %144 = call i32 @VLV_FIFO(i32 %143, i32 255)
  %145 = or i32 %142, %144
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %12, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* @SPRITEC, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @VLV_FIFO(i32 %149, i32 %150)
  %152 = load i32, i32* @SPRITED, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @VLV_FIFO(i32 %152, i32 %153)
  %155 = or i32 %151, %154
  %156 = load i32, i32* %12, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* @SPRITEC_HI, align 4
  %159 = call i32 @VLV_FIFO(i32 %158, i32 255)
  %160 = load i32, i32* @SPRITED_HI, align 4
  %161 = call i32 @VLV_FIFO(i32 %160, i32 255)
  %162 = or i32 %159, %161
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %13, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* @SPRITEC_HI, align 4
  %167 = load i32, i32* %9, align 4
  %168 = ashr i32 %167, 8
  %169 = call i32 @VLV_FIFO(i32 %166, i32 %168)
  %170 = load i32, i32* @SPRITED_HI, align 4
  %171 = load i32, i32* %10, align 4
  %172 = ashr i32 %171, 8
  %173 = call i32 @VLV_FIFO(i32 %170, i32 %172)
  %174 = or i32 %169, %173
  %175 = load i32, i32* %13, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %13, align 4
  %177 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %178 = load i32, i32* @DSPARB, align 4
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %177, i32 %178, i32 %179)
  %181 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %182 = load i32, i32* @DSPARB2, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %181, i32 %182, i32 %183)
  br label %237

185:                                              ; preds = %36
  %186 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %187 = load i32, i32* @DSPARB3, align 4
  %188 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %186, i32 %187)
  store i32 %188, i32* %14, align 4
  %189 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %190 = load i32, i32* @DSPARB2, align 4
  %191 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %189, i32 %190)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* @SPRITEE, align 4
  %193 = call i32 @VLV_FIFO(i32 %192, i32 255)
  %194 = load i32, i32* @SPRITEF, align 4
  %195 = call i32 @VLV_FIFO(i32 %194, i32 255)
  %196 = or i32 %193, %195
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %14, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* @SPRITEE, align 4
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @VLV_FIFO(i32 %200, i32 %201)
  %203 = load i32, i32* @SPRITEF, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @VLV_FIFO(i32 %203, i32 %204)
  %206 = or i32 %202, %205
  %207 = load i32, i32* %14, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* @SPRITEE_HI, align 4
  %210 = call i32 @VLV_FIFO(i32 %209, i32 255)
  %211 = load i32, i32* @SPRITEF_HI, align 4
  %212 = call i32 @VLV_FIFO(i32 %211, i32 255)
  %213 = or i32 %210, %212
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %13, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* @SPRITEE_HI, align 4
  %218 = load i32, i32* %9, align 4
  %219 = ashr i32 %218, 8
  %220 = call i32 @VLV_FIFO(i32 %217, i32 %219)
  %221 = load i32, i32* @SPRITEF_HI, align 4
  %222 = load i32, i32* %10, align 4
  %223 = ashr i32 %222, 8
  %224 = call i32 @VLV_FIFO(i32 %221, i32 %223)
  %225 = or i32 %220, %224
  %226 = load i32, i32* %13, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %13, align 4
  %228 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %229 = load i32, i32* @DSPARB3, align 4
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %228, i32 %229, i32 %230)
  %232 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %233 = load i32, i32* @DSPARB2, align 4
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %232, i32 %233, i32 %234)
  br label %237

236:                                              ; preds = %36
  br label %237

237:                                              ; preds = %236, %185, %134, %83
  %238 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %239 = load i32, i32* @DSPARB, align 4
  %240 = call i32 @intel_uncore_posting_read_fw(%struct.intel_uncore* %238, i32 %239)
  %241 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %242 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %241, i32 0, i32 0
  %243 = call i32 @spin_unlock(i32* %242)
  br label %244

244:                                              ; preds = %237, %35
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @trace_vlv_fifo_size(%struct.intel_crtc*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @intel_uncore_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @VLV_FIFO(i32, i32) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_posting_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
