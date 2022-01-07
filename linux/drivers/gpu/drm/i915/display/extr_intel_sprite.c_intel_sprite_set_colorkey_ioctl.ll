; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_sprite_set_colorkey_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_sprite_set_colorkey_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_intel_sprite_colorkey = type { i32, i32 }
%struct.drm_plane = type { i64, i32 }
%struct.drm_plane_state = type { i32 }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_plane* }
%struct.TYPE_4__ = type { i64, i32 }

@I915_SET_COLORKEY_NONE = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_DESTINATION = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_SOURCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@PLANE_SPRITE1 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_sprite_set_colorkey_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  %10 = alloca %struct.drm_plane*, align 8
  %11 = alloca %struct.drm_plane_state*, align 8
  %12 = alloca %struct.drm_atomic_state*, align 8
  %13 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.intel_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.drm_intel_sprite_colorkey*
  store %struct.drm_intel_sprite_colorkey* %19, %struct.drm_intel_sprite_colorkey** %9, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* @I915_SET_COLORKEY_NONE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %9, align 8
  %23 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %9, align 8
  %27 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I915_SET_COLORKEY_DESTINATION, align 4
  %30 = load i32, i32* @I915_SET_COLORKEY_SOURCE, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %190

38:                                               ; preds = %3
  %39 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %9, align 8
  %40 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I915_SET_COLORKEY_DESTINATION, align 4
  %43 = load i32, i32* @I915_SET_COLORKEY_SOURCE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = load i32, i32* @I915_SET_COLORKEY_DESTINATION, align 4
  %47 = load i32, i32* @I915_SET_COLORKEY_SOURCE, align 4
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %190

53:                                               ; preds = %38
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %55 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %59 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57, %53
  %62 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %9, align 8
  %63 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @I915_SET_COLORKEY_DESTINATION, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %190

71:                                               ; preds = %61, %57
  %72 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %73 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %74 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %9, align 8
  %75 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.drm_plane* @drm_plane_find(%struct.drm_device* %72, %struct.drm_file* %73, i32 %76)
  store %struct.drm_plane* %77, %struct.drm_plane** %10, align 8
  %78 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %79 = icmp ne %struct.drm_plane* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %82 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DRM_PLANE_TYPE_OVERLAY, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %71
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %190

89:                                               ; preds = %80
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %91 = call i32 @INTEL_GEN(%struct.drm_i915_private* %90)
  %92 = icmp sge i32 %91, 9
  br i1 %92, label %93, label %110

93:                                               ; preds = %89
  %94 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %95 = call %struct.TYPE_4__* @to_intel_plane(%struct.drm_plane* %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PLANE_SPRITE1, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %9, align 8
  %102 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @I915_SET_COLORKEY_DESTINATION, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %190

110:                                              ; preds = %100, %93, %89
  %111 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %13, i32 0)
  %112 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %113 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(i32 %114)
  store %struct.drm_atomic_state* %115, %struct.drm_atomic_state** %12, align 8
  %116 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %12, align 8
  %117 = icmp ne %struct.drm_atomic_state* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %110
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %14, align 4
  br label %186

121:                                              ; preds = %110
  %122 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %12, align 8
  %123 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %122, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %13, %struct.drm_modeset_acquire_ctx** %123, align 8
  br label %124

124:                                              ; preds = %121, %179
  %125 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %12, align 8
  %126 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %127 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state* %125, %struct.drm_plane* %126)
  store %struct.drm_plane_state* %127, %struct.drm_plane_state** %11, align 8
  %128 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %129 = call i32 @PTR_ERR_OR_ZERO(%struct.drm_plane_state* %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %124
  %133 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %134 = call i32 @to_intel_plane_state(%struct.drm_plane_state* %133)
  %135 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %9, align 8
  %136 = call i32 @intel_plane_set_ckey(i32 %134, %struct.drm_intel_sprite_colorkey* %135)
  br label %137

137:                                              ; preds = %132, %124
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %167, label %140

140:                                              ; preds = %137
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %142 = call i64 @has_dst_key_in_primary_plane(%struct.drm_i915_private* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %140
  %145 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %146 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %147 = call %struct.TYPE_4__* @to_intel_plane(%struct.drm_plane* %146)
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private* %145, i32 %149)
  store %struct.intel_crtc* %150, %struct.intel_crtc** %15, align 8
  %151 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %12, align 8
  %152 = load %struct.intel_crtc*, %struct.intel_crtc** %15, align 8
  %153 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load %struct.drm_plane*, %struct.drm_plane** %154, align 8
  %156 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state* %151, %struct.drm_plane* %155)
  store %struct.drm_plane_state* %156, %struct.drm_plane_state** %11, align 8
  %157 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %158 = call i32 @PTR_ERR_OR_ZERO(%struct.drm_plane_state* %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %144
  %162 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %163 = call i32 @to_intel_plane_state(%struct.drm_plane_state* %162)
  %164 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %9, align 8
  %165 = call i32 @intel_plane_set_ckey(i32 %163, %struct.drm_intel_sprite_colorkey* %164)
  br label %166

166:                                              ; preds = %161, %144
  br label %167

167:                                              ; preds = %166, %140, %137
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %12, align 8
  %172 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %171)
  store i32 %172, i32* %14, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @EDEADLK, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp ne i32 %174, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %183

179:                                              ; preds = %173
  %180 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %12, align 8
  %181 = call i32 @drm_atomic_state_clear(%struct.drm_atomic_state* %180)
  %182 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %13)
  br label %124

183:                                              ; preds = %178
  %184 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %12, align 8
  %185 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %184)
  br label %186

186:                                              ; preds = %183, %118
  %187 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %13)
  %188 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %13)
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %186, %107, %86, %68, %50, %35
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local %struct.drm_plane* @drm_plane_find(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local %struct.TYPE_4__* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(i32) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.drm_plane_state*) #1

declare dso_local i32 @intel_plane_set_ckey(i32, %struct.drm_intel_sprite_colorkey*) #1

declare dso_local i32 @to_intel_plane_state(%struct.drm_plane_state*) #1

declare dso_local i64 @has_dst_key_in_primary_plane(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_clear(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
