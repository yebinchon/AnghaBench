; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_primary_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_primary_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_funcs = type { i32 }
%struct.intel_plane = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i64, i32 }
%struct.drm_i915_private = type { i32, %struct.intel_fbc }
%struct.intel_fbc = type { i32 }

@PLANE_PRIMARY = common dso_local global i32 0, align 4
@i965_primary_formats = common dso_local global i32* null, align 8
@i9xx_format_modifiers = common dso_local global i32* null, align 8
@i9xx_plane_max_stride = common dso_local global i8* null, align 8
@i9xx_update_plane = common dso_local global i8* null, align 8
@i9xx_disable_plane = common dso_local global i8* null, align 8
@i9xx_plane_get_hw_state = common dso_local global i8* null, align 8
@i9xx_plane_check = common dso_local global i8* null, align 8
@i965_plane_funcs = common dso_local global %struct.drm_plane_funcs zeroinitializer, align 4
@i8xx_primary_formats = common dso_local global i32* null, align 8
@i8xx_plane_funcs = common dso_local global %struct.drm_plane_funcs zeroinitializer, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"primary %c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"plane %c\00", align 1
@PIPE_B = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@intel_plane_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_plane* (%struct.drm_i915_private*, i32)* @intel_primary_plane_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_plane* @intel_primary_plane_create(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_plane*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca %struct.drm_plane_funcs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.intel_fbc*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = call i32 @INTEL_GEN(%struct.drm_i915_private* %15)
  %17 = icmp sge i32 %16, 9
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PLANE_PRIMARY, align 4
  %22 = call %struct.intel_plane* @skl_universal_plane_create(%struct.drm_i915_private* %19, i32 %20, i32 %21)
  store %struct.intel_plane* %22, %struct.intel_plane** %3, align 8
  br label %217

23:                                               ; preds = %2
  %24 = call %struct.intel_plane* (...) @intel_plane_alloc()
  store %struct.intel_plane* %24, %struct.intel_plane** %6, align 8
  %25 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %26 = call i64 @IS_ERR(%struct.intel_plane* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  store %struct.intel_plane* %29, %struct.intel_plane** %3, align 8
  br label %217

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %33 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %35 = call i64 @HAS_FBC(%struct.drm_i915_private* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = call i32 @INTEL_GEN(%struct.drm_i915_private* %38)
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %47 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %37, %30
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %51 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %41
  %53 = load i32, i32* @PLANE_PRIMARY, align 4
  %54 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %55 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %54, i32 0, i32 10
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %58 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @INTEL_FRONTBUFFER(i32 %56, i32 %59)
  %61 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %62 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 8
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %64 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %65 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @i9xx_plane_has_fbc(%struct.drm_i915_private* %63, i32 %66)
  %68 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %69 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %68, i32 0, i32 9
  store i64 %67, i64* %69, align 8
  %70 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %71 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %70, i32 0, i32 9
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %52
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 1
  store %struct.intel_fbc* %76, %struct.intel_fbc** %14, align 8
  %77 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %78 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.intel_fbc*, %struct.intel_fbc** %14, align 8
  %81 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %74, %52
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %86 = call i32 @INTEL_GEN(%struct.drm_i915_private* %85)
  %87 = icmp sge i32 %86, 4
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  %89 = load i32*, i32** @i965_primary_formats, align 8
  store i32* %89, i32** %11, align 8
  %90 = load i32*, i32** @i965_primary_formats, align 8
  %91 = call i32 @ARRAY_SIZE(i32* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32*, i32** @i9xx_format_modifiers, align 8
  store i32* %92, i32** %10, align 8
  %93 = load i8*, i8** @i9xx_plane_max_stride, align 8
  %94 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %95 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @i9xx_update_plane, align 8
  %97 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %98 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @i9xx_disable_plane, align 8
  %100 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %101 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @i9xx_plane_get_hw_state, align 8
  %103 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %104 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @i9xx_plane_check, align 8
  %106 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %107 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  store %struct.drm_plane_funcs* @i965_plane_funcs, %struct.drm_plane_funcs** %7, align 8
  br label %128

108:                                              ; preds = %84
  %109 = load i32*, i32** @i8xx_primary_formats, align 8
  store i32* %109, i32** %11, align 8
  %110 = load i32*, i32** @i8xx_primary_formats, align 8
  %111 = call i32 @ARRAY_SIZE(i32* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32*, i32** @i9xx_format_modifiers, align 8
  store i32* %112, i32** %10, align 8
  %113 = load i8*, i8** @i9xx_plane_max_stride, align 8
  %114 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %115 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %114, i32 0, i32 7
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @i9xx_update_plane, align 8
  %117 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %118 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** @i9xx_disable_plane, align 8
  %120 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %121 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** @i9xx_plane_get_hw_state, align 8
  %123 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %124 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** @i9xx_plane_check, align 8
  %126 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %127 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  store %struct.drm_plane_funcs* @i8xx_plane_funcs, %struct.drm_plane_funcs** %7, align 8
  br label %128

128:                                              ; preds = %108, %88
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @BIT(i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %132 = call i32 @INTEL_GEN(%struct.drm_i915_private* %131)
  %133 = icmp sge i32 %132, 5
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %136 = call i64 @IS_G4X(%struct.drm_i915_private* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %134, %128
  %139 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %140 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %139, i32 0, i32 0
  %141 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %142 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %141, i32 0, i32 2
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.drm_plane_funcs*, %struct.drm_plane_funcs** %7, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @pipe_name(i32 %149)
  %151 = call i32 @drm_universal_plane_init(i32* %140, i32* %142, i32 %143, %struct.drm_plane_funcs* %144, i32* %145, i32 %146, i32* %147, i32 %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %150)
  store i32 %151, i32* %13, align 4
  br label %168

152:                                              ; preds = %134
  %153 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %154 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %153, i32 0, i32 0
  %155 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %156 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %155, i32 0, i32 2
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.drm_plane_funcs*, %struct.drm_plane_funcs** %7, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %163 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %164 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @plane_name(i32 %165)
  %167 = call i32 @drm_universal_plane_init(i32* %154, i32* %156, i32 %157, %struct.drm_plane_funcs* %158, i32* %159, i32 %160, i32* %161, i32 %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %152, %138
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %212

172:                                              ; preds = %168
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %174 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @PIPE_B, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %182 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %185 = or i32 %183, %184
  store i32 %185, i32* %8, align 4
  br label %197

186:                                              ; preds = %176, %172
  %187 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %188 = call i32 @INTEL_GEN(%struct.drm_i915_private* %187)
  %189 = icmp sge i32 %188, 4
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %192 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %193 = or i32 %191, %192
  store i32 %193, i32* %8, align 4
  br label %196

194:                                              ; preds = %186
  %195 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %194, %190
  br label %197

197:                                              ; preds = %196, %180
  %198 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %199 = call i32 @INTEL_GEN(%struct.drm_i915_private* %198)
  %200 = icmp sge i32 %199, 4
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %203 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %202, i32 0, i32 2
  %204 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @drm_plane_create_rotation_property(i32* %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %201, %197
  %208 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %209 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %208, i32 0, i32 2
  %210 = call i32 @drm_plane_helper_add(i32* %209, i32* @intel_plane_helper_funcs)
  %211 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  store %struct.intel_plane* %211, %struct.intel_plane** %3, align 8
  br label %217

212:                                              ; preds = %171
  %213 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %214 = call i32 @intel_plane_free(%struct.intel_plane* %213)
  %215 = load i32, i32* %13, align 4
  %216 = call %struct.intel_plane* @ERR_PTR(i32 %215)
  store %struct.intel_plane* %216, %struct.intel_plane** %3, align 8
  br label %217

217:                                              ; preds = %212, %207, %28, %18
  %218 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  ret %struct.intel_plane* %218
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_plane* @skl_universal_plane_create(%struct.drm_i915_private*, i32, i32) #1

declare dso_local %struct.intel_plane* @intel_plane_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.intel_plane*) #1

declare dso_local i64 @HAS_FBC(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_FRONTBUFFER(i32, i32) #1

declare dso_local i64 @i9xx_plane_has_fbc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_universal_plane_init(i32*, i32*, i32, %struct.drm_plane_funcs*, i32*, i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @plane_name(i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_plane_create_rotation_property(i32*, i32, i32) #1

declare dso_local i32 @drm_plane_helper_add(i32*, i32*) #1

declare dso_local i32 @intel_plane_free(%struct.intel_plane*) #1

declare dso_local %struct.intel_plane* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
