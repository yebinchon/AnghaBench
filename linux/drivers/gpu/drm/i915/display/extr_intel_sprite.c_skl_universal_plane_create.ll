; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_universal_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_universal_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_i915_private = type { i32, %struct.intel_fbc }
%struct.intel_fbc = type { i32 }

@skl_plane_max_stride = common dso_local global i32 0, align 4
@skl_update_plane = common dso_local global i32 0, align 4
@skl_disable_plane = common dso_local global i32 0, align 4
@skl_plane_get_hw_state = common dso_local global i32 0, align 4
@skl_plane_check = common dso_local global i32 0, align 4
@icl_update_slave = common dso_local global i32 0, align 4
@skl_plane_format_modifiers_ccs = common dso_local global i32* null, align 8
@skl_plane_format_modifiers_noccs = common dso_local global i32* null, align 8
@PLANE_PRIMARY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@skl_plane_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"plane %d%c\00", align 1
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_90 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT601 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_FULL_RANGE = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PREMULTI = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_COVERAGE = common dso_local global i32 0, align 4
@intel_plane_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_plane* @skl_universal_plane_create(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_plane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.intel_fbc*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = call %struct.intel_plane* (...) @intel_plane_alloc()
  store %struct.intel_plane* %17, %struct.intel_plane** %8, align 8
  %18 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %19 = call i64 @IS_ERR(%struct.intel_plane* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  store %struct.intel_plane* %22, %struct.intel_plane** %4, align 8
  br label %208

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %26 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %29 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @INTEL_FRONTBUFFER(i32 %30, i32 %31)
  %33 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %34 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @skl_plane_has_fbc(%struct.drm_i915_private* %35, i32 %36, i32 %37)
  %39 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %40 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %39, i32 0, i32 11
  store i64 %38, i64* %40, align 8
  %41 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %42 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %41, i32 0, i32 11
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %23
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 1
  store %struct.intel_fbc* %47, %struct.intel_fbc** %16, align 8
  %48 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %49 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.intel_fbc*, %struct.intel_fbc** %16, align 8
  %52 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %45, %23
  %56 = load i32, i32* @skl_plane_max_stride, align 4
  %57 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %58 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @skl_update_plane, align 4
  %60 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %61 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @skl_disable_plane, align 4
  %63 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %64 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @skl_plane_get_hw_state, align 4
  %66 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %67 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @skl_plane_check, align 4
  %69 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %70 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @icl_is_nv12_y_plane(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %55
  %75 = load i32, i32* @icl_update_slave, align 4
  %76 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %77 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %55
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %80 = call i32 @INTEL_GEN(%struct.drm_i915_private* %79)
  %81 = icmp sge i32 %80, 11
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32* @icl_get_plane_formats(%struct.drm_i915_private* %83, i32 %84, i32 %85, i32* %14)
  store i32* %86, i32** %13, align 8
  br label %106

87:                                               ; preds = %78
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %89 = call i32 @INTEL_GEN(%struct.drm_i915_private* %88)
  %90 = icmp sge i32 %89, 10
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %93 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91, %87
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32* @glk_get_plane_formats(%struct.drm_i915_private* %96, i32 %97, i32 %98, i32* %14)
  store i32* %99, i32** %13, align 8
  br label %105

100:                                              ; preds = %91
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32* @skl_get_plane_formats(%struct.drm_i915_private* %101, i32 %102, i32 %103, i32* %14)
  store i32* %104, i32** %13, align 8
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %105, %82
  %107 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i64 @skl_plane_has_ccs(%struct.drm_i915_private* %107, i32 %108, i32 %109)
  %111 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %112 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %114 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = load i32*, i32** @skl_plane_format_modifiers_ccs, align 8
  store i32* %118, i32** %12, align 8
  br label %121

119:                                              ; preds = %106
  %120 = load i32*, i32** @skl_plane_format_modifiers_noccs, align 8
  store i32* %120, i32** %12, align 8
  br label %121

121:                                              ; preds = %119, %117
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @PLANE_PRIMARY, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  store i32 %126, i32* %9, align 4
  br label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @BIT(i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %133 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %132, i32 0, i32 0
  %134 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %135 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %134, i32 0, i32 2
  %136 = load i32, i32* %11, align 4
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %7, align 4
  %142 = add i32 %141, 1
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @pipe_name(i32 %143)
  %145 = call i32 @drm_universal_plane_init(i32* %133, i32* %135, i32 %136, i32* @skl_plane_funcs, i32* %137, i32 %138, i32* %139, i32 %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %142, i32 %144)
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %129
  br label %203

149:                                              ; preds = %129
  %150 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %151 = load i32, i32* @DRM_MODE_ROTATE_90, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %10, align 4
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %158 = call i32 @INTEL_GEN(%struct.drm_i915_private* %157)
  %159 = icmp sge i32 %158, 10
  br i1 %159, label %160, label %164

160:                                              ; preds = %149
  %161 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %162 = load i32, i32* %10, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %160, %149
  %165 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %166 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %165, i32 0, i32 2
  %167 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @drm_plane_create_rotation_property(i32* %166, i32 %167, i32 %168)
  %170 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %171 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %170, i32 0, i32 2
  %172 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %173 = call i32 @BIT(i32 %172)
  %174 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %175 = call i32 @BIT(i32 %174)
  %176 = or i32 %173, %175
  %177 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %178 = call i32 @BIT(i32 %177)
  %179 = load i32, i32* @DRM_COLOR_YCBCR_FULL_RANGE, align 4
  %180 = call i32 @BIT(i32 %179)
  %181 = or i32 %178, %180
  %182 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %183 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %184 = call i32 @drm_plane_create_color_properties(i32* %171, i32 %176, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %186 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %185, i32 0, i32 2
  %187 = call i32 @drm_plane_create_alpha_property(i32* %186)
  %188 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %189 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %188, i32 0, i32 2
  %190 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  %191 = call i32 @BIT(i32 %190)
  %192 = load i32, i32* @DRM_MODE_BLEND_PREMULTI, align 4
  %193 = call i32 @BIT(i32 %192)
  %194 = or i32 %191, %193
  %195 = load i32, i32* @DRM_MODE_BLEND_COVERAGE, align 4
  %196 = call i32 @BIT(i32 %195)
  %197 = or i32 %194, %196
  %198 = call i32 @drm_plane_create_blend_mode_property(i32* %189, i32 %197)
  %199 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %200 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %199, i32 0, i32 2
  %201 = call i32 @drm_plane_helper_add(i32* %200, i32* @intel_plane_helper_funcs)
  %202 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  store %struct.intel_plane* %202, %struct.intel_plane** %4, align 8
  br label %208

203:                                              ; preds = %148
  %204 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %205 = call i32 @intel_plane_free(%struct.intel_plane* %204)
  %206 = load i32, i32* %15, align 4
  %207 = call %struct.intel_plane* @ERR_PTR(i32 %206)
  store %struct.intel_plane* %207, %struct.intel_plane** %4, align 8
  br label %208

208:                                              ; preds = %203, %164, %21
  %209 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  ret %struct.intel_plane* %209
}

declare dso_local %struct.intel_plane* @intel_plane_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.intel_plane*) #1

declare dso_local i32 @INTEL_FRONTBUFFER(i32, i32) #1

declare dso_local i64 @skl_plane_has_fbc(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @icl_is_nv12_y_plane(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32* @icl_get_plane_formats(%struct.drm_i915_private*, i32, i32, i32*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32* @glk_get_plane_formats(%struct.drm_i915_private*, i32, i32, i32*) #1

declare dso_local i32* @skl_get_plane_formats(%struct.drm_i915_private*, i32, i32, i32*) #1

declare dso_local i64 @skl_plane_has_ccs(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_universal_plane_init(i32*, i32*, i32, i32*, i32*, i32, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @drm_plane_create_rotation_property(i32*, i32, i32) #1

declare dso_local i32 @drm_plane_create_color_properties(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_plane_create_alpha_property(i32*) #1

declare dso_local i32 @drm_plane_create_blend_mode_property(i32*, i32) #1

declare dso_local i32 @drm_plane_helper_add(i32*, i32*) #1

declare dso_local i32 @intel_plane_free(%struct.intel_plane*) #1

declare dso_local %struct.intel_plane* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
