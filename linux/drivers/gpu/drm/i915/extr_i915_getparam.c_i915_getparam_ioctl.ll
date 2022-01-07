; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_getparam.c_i915_getparam_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_getparam.c_i915_getparam_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_17__, %struct.TYPE_16__, i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.sseu_dev_info = type { i32, i32, i32, i32* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.sseu_dev_info }
%struct.TYPE_11__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@I915_ENGINE_CLASS_VIDEO = common dso_local global i32 0, align 4
@I915_ENGINE_CLASS_COPY = common dso_local global i32 0, align 4
@I915_ENGINE_CLASS_VIDEO_ENHANCE = common dso_local global i32 0, align 4
@I915_SCHEDULER_CAP_SEMAPHORES = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@i915_modparams = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown parameter %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_getparam_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.sseu_dev_info*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %8, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %15 = call %struct.TYPE_20__* @RUNTIME_INFO(%struct.drm_i915_private* %14)
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  store %struct.sseu_dev_info* %16, %struct.sseu_dev_info** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %10, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %218 [
    i32 138, label %22
    i32 180, label %22
    i32 137, label %22
    i32 164, label %22
    i32 179, label %25
    i32 131, label %32
    i32 132, label %39
    i32 153, label %44
    i32 173, label %52
    i32 174, label %60
    i32 142, label %68
    i32 172, label %76
    i32 154, label %84
    i32 140, label %87
    i32 175, label %90
    i32 143, label %93
    i32 144, label %104
    i32 178, label %115
    i32 128, label %118
    i32 176, label %127
    i32 155, label %137
    i32 146, label %155
    i32 150, label %156
    i32 136, label %159
    i32 139, label %163
    i32 134, label %174
    i32 145, label %176
    i32 133, label %181
    i32 157, label %181
    i32 152, label %181
    i32 168, label %181
    i32 147, label %181
    i32 170, label %181
    i32 148, label %181
    i32 156, label %181
    i32 141, label %181
    i32 149, label %181
    i32 151, label %181
    i32 160, label %181
    i32 161, label %181
    i32 171, label %181
    i32 159, label %181
    i32 167, label %181
    i32 163, label %181
    i32 165, label %181
    i32 166, label %181
    i32 162, label %181
    i32 158, label %181
    i32 169, label %182
    i32 130, label %185
    i32 129, label %195
    i32 177, label %207
    i32 135, label %213
  ]

22:                                               ; preds = %3, %3, %3, %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %236

25:                                               ; preds = %3
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  br label %225

32:                                               ; preds = %3
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  br label %225

39:                                               ; preds = %3
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %41 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  br label %225

44:                                               ; preds = %3
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %11, align 4
  br label %225

52:                                               ; preds = %3
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %54 = load i32, i32* @I915_ENGINE_CLASS_VIDEO, align 4
  %55 = call i32 @intel_engine_lookup_user(%struct.drm_i915_private* %53, i32 %54, i32 0)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %11, align 4
  br label %225

60:                                               ; preds = %3
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %62 = load i32, i32* @I915_ENGINE_CLASS_COPY, align 4
  %63 = call i32 @intel_engine_lookup_user(%struct.drm_i915_private* %61, i32 %62, i32 0)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %11, align 4
  br label %225

68:                                               ; preds = %3
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %70 = load i32, i32* @I915_ENGINE_CLASS_VIDEO_ENHANCE, align 4
  %71 = call i32 @intel_engine_lookup_user(%struct.drm_i915_private* %69, i32 %70, i32 0)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %11, align 4
  br label %225

76:                                               ; preds = %3
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %78 = load i32, i32* @I915_ENGINE_CLASS_VIDEO, align 4
  %79 = call i32 @intel_engine_lookup_user(%struct.drm_i915_private* %77, i32 %78, i32 1)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %11, align 4
  br label %225

84:                                               ; preds = %3
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %86 = call i32 @HAS_LLC(%struct.drm_i915_private* %85)
  store i32 %86, i32* %11, align 4
  br label %225

87:                                               ; preds = %3
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %89 = call i32 @HAS_WT(%struct.drm_i915_private* %88)
  store i32 %89, i32* %11, align 4
  br label %225

90:                                               ; preds = %3
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %92 = call i32 @INTEL_PPGTT(%struct.drm_i915_private* %91)
  store i32 %92, i32* %11, align 4
  br label %225

93:                                               ; preds = %3
  %94 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %95 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @I915_SCHEDULER_CAP_SEMAPHORES, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %11, align 4
  br label %225

104:                                              ; preds = %3
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %106 = call i32 @HAS_SECURE_BATCHES(%struct.drm_i915_private* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %110 = call i32 @capable(i32 %109)
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i1 [ false, %104 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %11, align 4
  br label %225

115:                                              ; preds = %3
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %117 = call i32 @i915_cmd_parser_get_version(%struct.drm_i915_private* %116)
  store i32 %117, i32* %11, align 4
  br label %225

118:                                              ; preds = %3
  %119 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %9, align 8
  %120 = call i32 @intel_sseu_subslice_total(%struct.sseu_dev_info* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %236

126:                                              ; preds = %118
  br label %225

127:                                              ; preds = %3
  %128 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %9, align 8
  %129 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %236

136:                                              ; preds = %127
  br label %225

137:                                              ; preds = %3
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @i915_modparams, i32 0, i32 0), align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %142 = call i32 @intel_has_gpu_reset(%struct.drm_i915_private* %141)
  %143 = icmp ne i32 %142, 0
  br label %144

144:                                              ; preds = %140, %137
  %145 = phi i1 [ false, %137 ], [ %143, %140 ]
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %151 = call i32 @intel_has_reset_engine(%struct.drm_i915_private* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 2, i32* %11, align 4
  br label %154

154:                                              ; preds = %153, %149, %144
  br label %225

155:                                              ; preds = %3
  store i32 0, i32* %11, align 4
  br label %225

156:                                              ; preds = %3
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %158 = call i32 @HAS_POOLED_EU(%struct.drm_i915_private* %157)
  store i32 %158, i32* %11, align 4
  br label %225

159:                                              ; preds = %3
  %160 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %9, align 8
  %161 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %11, align 4
  br label %225

163:                                              ; preds = %3
  %164 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %165 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = call i32 @intel_huc_check_status(i32* %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %163
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %4, align 4
  br label %236

173:                                              ; preds = %163
  br label %225

174:                                              ; preds = %3
  %175 = call i32 (...) @i915_gem_mmap_gtt_version()
  store i32 %175, i32* %11, align 4
  br label %225

176:                                              ; preds = %3
  %177 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %178 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %11, align 4
  br label %225

181:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  store i32 1, i32* %11, align 4
  br label %225

182:                                              ; preds = %3
  %183 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %184 = call i32 @intel_engines_has_context_isolation(%struct.drm_i915_private* %183)
  store i32 %184, i32* %11, align 4
  br label %225

185:                                              ; preds = %3
  %186 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %9, align 8
  %187 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %185
  %192 = load i32, i32* @ENODEV, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %4, align 4
  br label %236

194:                                              ; preds = %185
  br label %225

195:                                              ; preds = %3
  %196 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %9, align 8
  %197 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %195
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %4, align 4
  br label %236

206:                                              ; preds = %195
  br label %225

207:                                              ; preds = %3
  %208 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %209 = call %struct.TYPE_20__* @RUNTIME_INFO(%struct.drm_i915_private* %208)
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 1000, %211
  store i32 %212, i32* %11, align 4
  br label %225

213:                                              ; preds = %3
  %214 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %215 = call %struct.TYPE_11__* @INTEL_INFO(%struct.drm_i915_private* %214)
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %11, align 4
  br label %225

218:                                              ; preds = %3
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %4, align 4
  br label %236

225:                                              ; preds = %213, %207, %206, %194, %182, %181, %176, %174, %173, %159, %156, %155, %154, %136, %126, %115, %112, %93, %90, %87, %84, %76, %68, %60, %52, %44, %39, %32, %25
  %226 = load i32, i32* %11, align 4
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @put_user(i32 %226, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = load i32, i32* @EFAULT, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %4, align 4
  br label %236

235:                                              ; preds = %225
  store i32 0, i32* %4, align 4
  br label %236

236:                                              ; preds = %235, %232, %218, %203, %191, %171, %133, %123, %22
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.TYPE_20__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_engine_lookup_user(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @HAS_LLC(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_WT(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_PPGTT(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_SECURE_BATCHES(%struct.drm_i915_private*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @i915_cmd_parser_get_version(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_sseu_subslice_total(%struct.sseu_dev_info*) #1

declare dso_local i32 @intel_has_gpu_reset(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_has_reset_engine(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_POOLED_EU(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_huc_check_status(i32*) #1

declare dso_local i32 @i915_gem_mmap_gtt_version(...) #1

declare dso_local i32 @intel_engines_has_context_isolation(%struct.drm_i915_private*) #1

declare dso_local %struct.TYPE_11__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i64 @put_user(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
