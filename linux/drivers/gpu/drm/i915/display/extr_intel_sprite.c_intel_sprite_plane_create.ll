; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_sprite_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_sprite_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_funcs = type { i32 }
%struct.intel_plane = type { i32, i32, i64, i32, i8*, i32, i32, i32, i8* }
%struct.drm_i915_private = type { i32 }

@PLANE_SPRITE0 = common dso_local global i64 0, align 8
@i9xx_plane_max_stride = common dso_local global i8* null, align 8
@vlv_update_plane = common dso_local global i32 0, align 4
@vlv_disable_plane = common dso_local global i32 0, align 4
@vlv_plane_get_hw_state = common dso_local global i32 0, align 4
@vlv_sprite_check = common dso_local global i8* null, align 8
@vlv_plane_formats = common dso_local global i32* null, align 8
@i9xx_plane_format_modifiers = common dso_local global i32* null, align 8
@vlv_sprite_funcs = common dso_local global %struct.drm_plane_funcs zeroinitializer, align 4
@g4x_sprite_max_stride = common dso_local global i8* null, align 8
@ivb_update_plane = common dso_local global i32 0, align 4
@ivb_disable_plane = common dso_local global i32 0, align 4
@ivb_plane_get_hw_state = common dso_local global i32 0, align 4
@g4x_sprite_check = common dso_local global i8* null, align 8
@snb_plane_formats = common dso_local global i32* null, align 8
@snb_sprite_funcs = common dso_local global %struct.drm_plane_funcs zeroinitializer, align 4
@g4x_update_plane = common dso_local global i32 0, align 4
@g4x_disable_plane = common dso_local global i32 0, align 4
@g4x_plane_get_hw_state = common dso_local global i32 0, align 4
@g4x_plane_formats = common dso_local global i32* null, align 8
@g4x_sprite_funcs = common dso_local global %struct.drm_plane_funcs zeroinitializer, align 4
@PIPE_B = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sprite %c\00", align 1
@DRM_COLOR_YCBCR_BT601 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_FULL_RANGE = common dso_local global i32 0, align 4
@intel_plane_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_plane* @intel_sprite_plane_create(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_plane*, align 8
  %9 = alloca %struct.drm_plane_funcs*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = call i32 @INTEL_GEN(%struct.drm_i915_private* %16)
  %18 = icmp sge i32 %17, 9
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* @PLANE_SPRITE0, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call %struct.intel_plane* @skl_universal_plane_create(%struct.drm_i915_private* %20, i32 %21, i64 %25)
  store %struct.intel_plane* %26, %struct.intel_plane** %4, align 8
  br label %200

27:                                               ; preds = %3
  %28 = call %struct.intel_plane* (...) @intel_plane_alloc()
  store %struct.intel_plane* %28, %struct.intel_plane** %8, align 8
  %29 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %30 = call i64 @IS_ERR(%struct.intel_plane* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  store %struct.intel_plane* %33, %struct.intel_plane** %4, align 8
  br label %200

34:                                               ; preds = %27
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %36 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %40 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %38, %34
  %43 = load i8*, i8** @i9xx_plane_max_stride, align 8
  %44 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %45 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @vlv_update_plane, align 4
  %47 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %48 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @vlv_disable_plane, align 4
  %50 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %51 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @vlv_plane_get_hw_state, align 4
  %53 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %54 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** @vlv_sprite_check, align 8
  %56 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %57 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** @vlv_plane_formats, align 8
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** @vlv_plane_formats, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** @i9xx_plane_format_modifiers, align 8
  store i32* %61, i32** %12, align 8
  store %struct.drm_plane_funcs* @vlv_sprite_funcs, %struct.drm_plane_funcs** %9, align 8
  br label %116

62:                                               ; preds = %38
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %64 = call i32 @INTEL_GEN(%struct.drm_i915_private* %63)
  %65 = icmp sge i32 %64, 7
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load i8*, i8** @g4x_sprite_max_stride, align 8
  %68 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %69 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @ivb_update_plane, align 4
  %71 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %72 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @ivb_disable_plane, align 4
  %74 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %75 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @ivb_plane_get_hw_state, align 4
  %77 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %78 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** @g4x_sprite_check, align 8
  %80 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %81 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load i32*, i32** @snb_plane_formats, align 8
  store i32* %82, i32** %13, align 8
  %83 = load i32*, i32** @snb_plane_formats, align 8
  %84 = call i32 @ARRAY_SIZE(i32* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32*, i32** @i9xx_plane_format_modifiers, align 8
  store i32* %85, i32** %12, align 8
  store %struct.drm_plane_funcs* @snb_sprite_funcs, %struct.drm_plane_funcs** %9, align 8
  br label %115

86:                                               ; preds = %62
  %87 = load i8*, i8** @g4x_sprite_max_stride, align 8
  %88 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %89 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %88, i32 0, i32 8
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @g4x_update_plane, align 4
  %91 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %92 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @g4x_disable_plane, align 4
  %94 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %95 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @g4x_plane_get_hw_state, align 4
  %97 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %98 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  %99 = load i8*, i8** @g4x_sprite_check, align 8
  %100 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %101 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load i32*, i32** @i9xx_plane_format_modifiers, align 8
  store i32* %102, i32** %12, align 8
  %103 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %104 = call i64 @IS_GEN(%struct.drm_i915_private* %103, i32 6)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %86
  %107 = load i32*, i32** @snb_plane_formats, align 8
  store i32* %107, i32** %13, align 8
  %108 = load i32*, i32** @snb_plane_formats, align 8
  %109 = call i32 @ARRAY_SIZE(i32* %108)
  store i32 %109, i32* %14, align 4
  store %struct.drm_plane_funcs* @snb_sprite_funcs, %struct.drm_plane_funcs** %9, align 8
  br label %114

110:                                              ; preds = %86
  %111 = load i32*, i32** @g4x_plane_formats, align 8
  store i32* %111, i32** %13, align 8
  %112 = load i32*, i32** @g4x_plane_formats, align 8
  %113 = call i32 @ARRAY_SIZE(i32* %112)
  store i32 %113, i32* %14, align 4
  store %struct.drm_plane_funcs* @g4x_sprite_funcs, %struct.drm_plane_funcs** %9, align 8
  br label %114

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %114, %66
  br label %116

116:                                              ; preds = %115, %42
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %118 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @PIPE_B, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %126 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %11, align 4
  br label %134

130:                                              ; preds = %120, %116
  %131 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %132 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %133 = or i32 %131, %132
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %130, %124
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %137 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i64, i64* @PLANE_SPRITE0, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %143 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %146 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @INTEL_FRONTBUFFER(i32 %144, i64 %147)
  %149 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %150 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i64 @BIT(i32 %151)
  store i64 %152, i64* %10, align 8
  %153 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %154 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %153, i32 0, i32 0
  %155 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %156 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %155, i32 0, i32 1
  %157 = load i64, i64* %10, align 8
  %158 = load %struct.drm_plane_funcs*, %struct.drm_plane_funcs** %9, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @sprite_name(i32 %163, i32 %164)
  %166 = call i32 @drm_universal_plane_init(i32* %154, i32* %156, i64 %157, %struct.drm_plane_funcs* %158, i32* %159, i32 %160, i32* %161, i32 %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %134
  br label %195

170:                                              ; preds = %134
  %171 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %172 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %171, i32 0, i32 1
  %173 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @drm_plane_create_rotation_property(i32* %172, i32 %173, i32 %174)
  %176 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %177 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %176, i32 0, i32 1
  %178 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %179 = call i64 @BIT(i32 %178)
  %180 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %181 = call i64 @BIT(i32 %180)
  %182 = or i64 %179, %181
  %183 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %184 = call i64 @BIT(i32 %183)
  %185 = load i32, i32* @DRM_COLOR_YCBCR_FULL_RANGE, align 4
  %186 = call i64 @BIT(i32 %185)
  %187 = or i64 %184, %186
  %188 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %189 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %190 = call i32 @drm_plane_create_color_properties(i32* %177, i64 %182, i64 %187, i32 %188, i32 %189)
  %191 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %192 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %191, i32 0, i32 1
  %193 = call i32 @drm_plane_helper_add(i32* %192, i32* @intel_plane_helper_funcs)
  %194 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  store %struct.intel_plane* %194, %struct.intel_plane** %4, align 8
  br label %200

195:                                              ; preds = %169
  %196 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %197 = call i32 @intel_plane_free(%struct.intel_plane* %196)
  %198 = load i32, i32* %15, align 4
  %199 = call %struct.intel_plane* @ERR_PTR(i32 %198)
  store %struct.intel_plane* %199, %struct.intel_plane** %4, align 8
  br label %200

200:                                              ; preds = %195, %170, %32, %19
  %201 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  ret %struct.intel_plane* %201
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_plane* @skl_universal_plane_create(%struct.drm_i915_private*, i32, i64) #1

declare dso_local %struct.intel_plane* @intel_plane_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.intel_plane*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_FRONTBUFFER(i32, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @drm_universal_plane_init(i32*, i32*, i64, %struct.drm_plane_funcs*, i32*, i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @sprite_name(i32, i32) #1

declare dso_local i32 @drm_plane_create_rotation_property(i32*, i32, i32) #1

declare dso_local i32 @drm_plane_create_color_properties(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @drm_plane_helper_add(i32*, i32*) #1

declare dso_local i32 @intel_plane_free(%struct.intel_plane*) #1

declare dso_local %struct.intel_plane* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
