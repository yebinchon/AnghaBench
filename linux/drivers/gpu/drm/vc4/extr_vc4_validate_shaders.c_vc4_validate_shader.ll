; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_vc4_validate_shader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_vc4_validate_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_validated_shader_info = type { i32, i32, %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info*, i64, i64 }
%struct.drm_gem_cma_object = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.vc4_shader_validation_state = type { i32, i64, i32*, %struct.vc4_validated_shader_info*, i64, i64, i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@QPU_SIG = common dso_local global i32 0, align 4
@LIVE_REG_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Bad write at ip %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Thread switch too soon after last switch at ip %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Bad LOAD_IMM write at ip %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Branch in thread switch at ip %d\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Unsupported QPU signal %d at instruction %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"shader failed to terminate before shader BO end at %zd\0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Shader uses threading, but uses the upper half of the registers, too\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vc4_validated_shader_info* @vc4_validate_shader(%struct.drm_gem_cma_object* %0) #0 {
  %2 = alloca %struct.vc4_validated_shader_info*, align 8
  %3 = alloca %struct.drm_gem_cma_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vc4_validated_shader_info*, align 8
  %9 = alloca %struct.vc4_shader_validation_state, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.drm_gem_cma_object* %0, %struct.drm_gem_cma_object** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 -3, i64* %6, align 8
  store %struct.vc4_validated_shader_info* null, %struct.vc4_validated_shader_info** %8, align 8
  %13 = call i32 @memset(%struct.vc4_shader_validation_state* %9, i32 0, i32 72)
  %14 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %15 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 8
  store i32* %16, i32** %17, align 8
  %18 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %19 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = call i32 @reset_validation_state(%struct.vc4_shader_validation_state* %9)
  %27 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @BITS_TO_LONGS(i32 %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kcalloc(i32 %29, i32 8, i32 %30)
  %32 = bitcast i8* %31 to %struct.vc4_validated_shader_info*
  %33 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 3
  store %struct.vc4_validated_shader_info* %32, %struct.vc4_validated_shader_info** %33, align 8
  %34 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 3
  %35 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %34, align 8
  %36 = icmp ne %struct.vc4_validated_shader_info* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  br label %234

38:                                               ; preds = %1
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kcalloc(i32 1, i32 40, i32 %39)
  %41 = bitcast i8* %40 to %struct.vc4_validated_shader_info*
  store %struct.vc4_validated_shader_info* %41, %struct.vc4_validated_shader_info** %8, align 8
  %42 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %43 = icmp ne %struct.vc4_validated_shader_info* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %234

45:                                               ; preds = %38
  %46 = call i32 @vc4_validate_branches(%struct.vc4_shader_validation_state* %9)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %234

49:                                               ; preds = %45
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %178, %49
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %181

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @QPU_SIG, align 4
  %64 = call i64 @QPU_GET_FIELD(i32 %62, i32 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  %67 = call i32 @vc4_handle_branch_target(%struct.vc4_shader_validation_state* %9)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %56
  br label %234

70:                                               ; preds = %56
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 3
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  store i32 64, i32* %12, align 4
  br label %76

76:                                               ; preds = %96, %75
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @LIVE_REG_COUNT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 7
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 -1, i32* %85, align 4
  %86 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 -1, i32* %95, align 4
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %76

99:                                               ; preds = %76
  br label %100

100:                                              ; preds = %99, %70
  %101 = load i64, i64* %11, align 8
  switch i64 %101, label %163 [
    i64 133, label %102
    i64 128, label %102
    i64 131, label %102
    i64 138, label %102
    i64 135, label %102
    i64 134, label %102
    i64 132, label %102
    i64 130, label %102
    i64 129, label %102
    i64 137, label %102
    i64 136, label %139
    i64 139, label %147
  ]

102:                                              ; preds = %100, %100, %100, %100, %100, %100, %100, %100, %100, %100
  %103 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %104 = call i32 @check_instruction_writes(%struct.vc4_validated_shader_info* %103, %struct.vc4_shader_validation_state* %9)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %7, align 8
  %108 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %107)
  br label %234

109:                                              ; preds = %102
  %110 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %111 = call i32 @check_instruction_reads(%struct.vc4_validated_shader_info* %110, %struct.vc4_shader_validation_state* %9)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  br label %234

114:                                              ; preds = %109
  %115 = load i64, i64* %11, align 8
  %116 = icmp eq i64 %115, 132
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  store i32 1, i32* %4, align 4
  %118 = load i64, i64* %7, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i64, i64* %11, align 8
  %122 = icmp eq i64 %121, 129
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i64, i64* %11, align 8
  %125 = icmp eq i64 %124, 137
  br i1 %125, label %126, label %138

126:                                              ; preds = %123, %120
  %127 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %128 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, 3
  %132 = icmp ult i64 %129, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i64, i64* %7, align 8
  %135 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  br label %234

136:                                              ; preds = %126
  %137 = load i64, i64* %7, align 8
  store i64 %137, i64* %6, align 8
  br label %138

138:                                              ; preds = %136, %123
  br label %167

139:                                              ; preds = %100
  %140 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %141 = call i32 @check_instruction_writes(%struct.vc4_validated_shader_info* %140, %struct.vc4_shader_validation_state* %9)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %7, align 8
  %145 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %144)
  br label %234

146:                                              ; preds = %139
  br label %167

147:                                              ; preds = %100
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %150 = load i64, i64* %7, align 8
  %151 = call i32 @check_branch(i32 %148, %struct.vc4_validated_shader_info* %149, %struct.vc4_shader_validation_state* %9, i64 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %234

154:                                              ; preds = %147
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* %6, align 8
  %157 = add i64 %156, 3
  %158 = icmp ult i64 %155, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i64, i64* %7, align 8
  %161 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %160)
  br label %234

162:                                              ; preds = %154
  br label %167

163:                                              ; preds = %100
  %164 = load i64, i64* %11, align 8
  %165 = load i64, i64* %7, align 8
  %166 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %164, i64 %165)
  br label %234

167:                                              ; preds = %162, %146, %138
  %168 = load i32, i32* %4, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i64, i64* %7, align 8
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = icmp eq i64 %171, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %181

177:                                              ; preds = %170, %167
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %7, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %7, align 8
  br label %50

181:                                              ; preds = %176, %50
  %182 = load i64, i64* %7, align 8
  %183 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = icmp eq i64 %182, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %189 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %191)
  br label %234

193:                                              ; preds = %181
  %194 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %195 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0))
  br label %234

204:                                              ; preds = %198, %193
  %205 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %204
  %209 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %210 = call i32 @require_uniform_address_uniform(%struct.vc4_validated_shader_info* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  br label %234

213:                                              ; preds = %208
  %214 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %215 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 4
  store i64 %217, i64* %215, align 8
  br label %218

218:                                              ; preds = %213, %204
  %219 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %220 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %223 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 4, %224
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %221, %226
  %228 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %229 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %228, i32 0, i32 5
  store i64 %227, i64* %229, align 8
  %230 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 3
  %231 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %230, align 8
  %232 = call i32 @kfree(%struct.vc4_validated_shader_info* %231)
  %233 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  store %struct.vc4_validated_shader_info* %233, %struct.vc4_validated_shader_info** %2, align 8
  br label %252

234:                                              ; preds = %212, %202, %187, %163, %159, %153, %143, %133, %113, %106, %69, %48, %44, %37
  %235 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %9, i32 0, i32 3
  %236 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %235, align 8
  %237 = call i32 @kfree(%struct.vc4_validated_shader_info* %236)
  %238 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %239 = icmp ne %struct.vc4_validated_shader_info* %238, null
  br i1 %239, label %240, label %251

240:                                              ; preds = %234
  %241 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %242 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %241, i32 0, i32 3
  %243 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %242, align 8
  %244 = call i32 @kfree(%struct.vc4_validated_shader_info* %243)
  %245 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %246 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %245, i32 0, i32 2
  %247 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %246, align 8
  %248 = call i32 @kfree(%struct.vc4_validated_shader_info* %247)
  %249 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %8, align 8
  %250 = call i32 @kfree(%struct.vc4_validated_shader_info* %249)
  br label %251

251:                                              ; preds = %240, %234
  store %struct.vc4_validated_shader_info* null, %struct.vc4_validated_shader_info** %2, align 8
  br label %252

252:                                              ; preds = %251, %218
  %253 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %2, align 8
  ret %struct.vc4_validated_shader_info* %253
}

declare dso_local i32 @memset(%struct.vc4_shader_validation_state*, i32, i32) #1

declare dso_local i32 @reset_validation_state(%struct.vc4_shader_validation_state*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @vc4_validate_branches(%struct.vc4_shader_validation_state*) #1

declare dso_local i64 @QPU_GET_FIELD(i32, i32) #1

declare dso_local i32 @vc4_handle_branch_target(%struct.vc4_shader_validation_state*) #1

declare dso_local i32 @check_instruction_writes(%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @check_instruction_reads(%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*) #1

declare dso_local i32 @check_branch(i32, %struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*, i64) #1

declare dso_local i32 @require_uniform_address_uniform(%struct.vc4_validated_shader_info*) #1

declare dso_local i32 @kfree(%struct.vc4_validated_shader_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
