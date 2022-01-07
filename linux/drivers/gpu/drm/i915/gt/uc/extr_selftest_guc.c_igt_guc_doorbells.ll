; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_selftest_guc.c_igt_guc_doorbells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_selftest_guc.c_igt_guc_doorbells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64 }
%struct.drm_i915_private = type { %struct.TYPE_16__, i32, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.intel_guc }
%struct.intel_guc = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"No guc object!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATTEMPTS = common dso_local global i32 0, align 4
@GUC_CLIENT_PRIORITY_NUM = common dso_local global i32 0, align 4
@clients = common dso_local global %struct.TYPE_17__** null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"[%d] No guc client\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"[%d] unexpected error\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"[%d] non-db related alloc fail\0A\00", align 1
@GUC_NUM_DOORBELLS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"[%d] more clients than doorbells (%d >= %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"[%d] client_alloc sanity check failed!\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"[%d] Failed to create a doorbell\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"[%d] doorbell id changed (%d != %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_guc_doorbells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_guc_doorbells(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_guc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = call i32 @HAS_GT_UC(%struct.drm_i915_private* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @GEM_BUG_ON(i32 %15)
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 1
  %23 = call i32 @intel_runtime_pm_get(i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store %struct.intel_guc* %27, %struct.intel_guc** %5, align 8
  %28 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %29 = icmp ne %struct.intel_guc* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %240

34:                                               ; preds = %1
  %35 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %36 = call i32 @check_all_doorbells(%struct.intel_guc* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %240

40:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %205, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ATTEMPTS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %208

45:                                               ; preds = %41
  %46 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @GUC_CLIENT_PRIORITY_NUM, align 4
  %49 = srem i32 %47, %48
  %50 = call %struct.TYPE_17__* @guc_client_alloc(%struct.intel_guc* %46, i32 %49)
  %51 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %51, i64 %53
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %54, align 8
  %55 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %55, i64 %57
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = icmp ne %struct.TYPE_17__* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %209

66:                                               ; preds = %45
  %67 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %67, i64 %69
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = call i64 @IS_ERR(%struct.TYPE_17__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %66
  %75 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %75, i64 %77
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = call i32 @PTR_ERR(%struct.TYPE_17__* %79)
  %81 = load i32, i32* @ENOSPC, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %74
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %87, i64 %89
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = call i32 @PTR_ERR(%struct.TYPE_17__* %91)
  store i32 %92, i32* %7, align 4
  br label %209

93:                                               ; preds = %74
  %94 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @GUC_CLIENT_PRIORITY_NUM, align 4
  %97 = srem i32 %95, %96
  %98 = call i64 @available_dbs(%struct.intel_guc* %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %209

105:                                              ; preds = %93
  br label %205

106:                                              ; preds = %66
  %107 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %107, i64 %109
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @GUC_NUM_DOORBELLS, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %106
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %118, i64 %120
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @GUC_NUM_DOORBELLS, align 8
  %126 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %117, i64 %124, i64 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %209

129:                                              ; preds = %106
  %130 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %130, i64 %132
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @GUC_CLIENT_PRIORITY_NUM, align 4
  %137 = srem i32 %135, %136
  %138 = call i32 @validate_client(%struct.TYPE_17__* %134, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %129
  %142 = load i32, i32* %6, align 4
  %143 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %7, align 4
  br label %209

146:                                              ; preds = %129
  %147 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %147, i64 %149
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %8, align 8
  %154 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %154, i64 %156
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = call i32 @__guc_client_enable(%struct.TYPE_17__* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %146
  %163 = load i32, i32* %6, align 4
  %164 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  br label %209

165:                                              ; preds = %146
  %166 = load i64, i64* %8, align 8
  %167 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %167, i64 %169
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %166, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %165
  %176 = load i32, i32* %6, align 4
  %177 = load i64, i64* %8, align 8
  %178 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %178, i64 %180
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %176, i64 %177, i64 %184)
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %7, align 4
  br label %209

188:                                              ; preds = %165
  %189 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %190 = call i32 @check_all_doorbells(%struct.intel_guc* %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %209

194:                                              ; preds = %188
  %195 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %195, i64 %197
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %198, align 8
  %200 = call i32 @ring_doorbell_nop(%struct.TYPE_17__* %199)
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  br label %209

204:                                              ; preds = %194
  br label %205

205:                                              ; preds = %204, %105
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %41

208:                                              ; preds = %41
  br label %209

209:                                              ; preds = %208, %203, %193, %175, %162, %141, %116, %100, %84, %61
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %236, %209
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @ATTEMPTS, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %239

214:                                              ; preds = %210
  %215 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %215, i64 %217
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %218, align 8
  %220 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_17__* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %235, label %222

222:                                              ; preds = %214
  %223 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %223, i64 %225
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = call i32 @__guc_client_disable(%struct.TYPE_17__* %227)
  %229 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @clients, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %229, i64 %231
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %232, align 8
  %234 = call i32 @guc_client_free(%struct.TYPE_17__* %233)
  br label %235

235:                                              ; preds = %222, %214
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  br label %210

239:                                              ; preds = %210
  br label %240

240:                                              ; preds = %239, %39, %30
  %241 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %242 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %241, i32 0, i32 1
  %243 = load i32, i32* %4, align 4
  %244 = call i32 @intel_runtime_pm_put(i32* %242, i32 %243)
  %245 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %246 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = call i32 @mutex_unlock(i32* %247)
  %249 = load i32, i32* %7, align 4
  ret i32 %249
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @HAS_GT_UC(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @check_all_doorbells(%struct.intel_guc*) #1

declare dso_local %struct.TYPE_17__* @guc_client_alloc(%struct.intel_guc*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_17__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_17__*) #1

declare dso_local i64 @available_dbs(%struct.intel_guc*, i32) #1

declare dso_local i32 @validate_client(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @__guc_client_enable(%struct.TYPE_17__*) #1

declare dso_local i32 @ring_doorbell_nop(%struct.TYPE_17__*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_17__*) #1

declare dso_local i32 @__guc_client_disable(%struct.TYPE_17__*) #1

declare dso_local i32 @guc_client_free(%struct.TYPE_17__*) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
