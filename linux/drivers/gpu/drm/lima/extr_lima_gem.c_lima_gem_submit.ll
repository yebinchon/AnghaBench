; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.lima_submit = type { i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i64, %struct.lima_bo** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.lima_bo = type { %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }
%struct.ww_acquire_ctx = type { i32 }
%struct.lima_drm_priv = type { %struct.lima_vm* }
%struct.lima_vm = type { i32 }
%struct.drm_syncobj = type { i32 }
%struct.dma_fence = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@LIMA_SUBMIT_BO_WRITE = common dso_local global i32 0, align 4
@LIMA_SUBMIT_FLAG_EXPLICIT_FENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_gem_submit(%struct.drm_file* %0, %struct.lima_submit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.lima_submit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ww_acquire_ctx, align 4
  %9 = alloca %struct.lima_drm_priv*, align 8
  %10 = alloca %struct.lima_vm*, align 8
  %11 = alloca %struct.drm_syncobj*, align 8
  %12 = alloca %struct.dma_fence*, align 8
  %13 = alloca %struct.lima_bo**, align 8
  %14 = alloca %struct.drm_gem_object*, align 8
  %15 = alloca %struct.lima_bo*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store %struct.lima_submit* %1, %struct.lima_submit** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %17 = call %struct.lima_drm_priv* @to_lima_drm_priv(%struct.drm_file* %16)
  store %struct.lima_drm_priv* %17, %struct.lima_drm_priv** %9, align 8
  %18 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %9, align 8
  %19 = getelementptr inbounds %struct.lima_drm_priv, %struct.lima_drm_priv* %18, i32 0, i32 0
  %20 = load %struct.lima_vm*, %struct.lima_vm** %19, align 8
  store %struct.lima_vm* %20, %struct.lima_vm** %10, align 8
  store %struct.drm_syncobj* null, %struct.drm_syncobj** %11, align 8
  %21 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %22 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %21, i32 0, i32 7
  %23 = load %struct.lima_bo**, %struct.lima_bo*** %22, align 8
  store %struct.lima_bo** %23, %struct.lima_bo*** %13, align 8
  %24 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %25 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %30 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %31 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file* %29, i64 %32)
  store %struct.drm_syncobj* %33, %struct.drm_syncobj** %11, align 8
  %34 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %35 = icmp ne %struct.drm_syncobj* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %305

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %2
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %80, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %44 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %41
  %48 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %49 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %50 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %48, i32 %56)
  store %struct.drm_gem_object* %57, %struct.drm_gem_object** %14, align 8
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %59 = icmp ne %struct.drm_gem_object* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %264

63:                                               ; preds = %47
  %64 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %65 = call %struct.lima_bo* @to_lima_bo(%struct.drm_gem_object* %64)
  store %struct.lima_bo* %65, %struct.lima_bo** %15, align 8
  %66 = load %struct.lima_vm*, %struct.lima_vm** %10, align 8
  %67 = load %struct.lima_bo*, %struct.lima_bo** %15, align 8
  %68 = call i32 @lima_vm_bo_add(%struct.lima_vm* %66, %struct.lima_bo* %67, i32 0)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %73 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %72)
  br label %264

74:                                               ; preds = %63
  %75 = load %struct.lima_bo*, %struct.lima_bo** %15, align 8
  %76 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %76, i64 %78
  store %struct.lima_bo* %75, %struct.lima_bo** %79, align 8
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %41

83:                                               ; preds = %41
  %84 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %85 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %86 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @lima_gem_lock_bos(%struct.lima_bo** %84, i32 %87, %struct.ww_acquire_ctx* %8)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %264

92:                                               ; preds = %83
  %93 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %94 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %97 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %96, i32 0, i32 5
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %102 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %106 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %107 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.lima_vm*, %struct.lima_vm** %10, align 8
  %110 = call i32 @lima_sched_task_init(i32 %95, i64 %104, %struct.lima_bo** %105, i32 %108, %struct.lima_vm* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %92
  br label %258

114:                                              ; preds = %92
  %115 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %116 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %117 = call i32 @lima_gem_add_deps(%struct.drm_file* %115, %struct.lima_submit* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %253

121:                                              ; preds = %114
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %157, %121
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %125 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %160

128:                                              ; preds = %122
  %129 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %130 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %132, i64 %134
  %136 = load %struct.lima_bo*, %struct.lima_bo** %135, align 8
  %137 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %138 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %137, i32 0, i32 3
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @LIMA_SUBMIT_BO_WRITE, align 4
  %146 = and i32 %144, %145
  %147 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %148 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @LIMA_SUBMIT_FLAG_EXPLICIT_FENCE, align 4
  %151 = and i32 %149, %150
  %152 = call i32 @lima_gem_sync_bo(i32 %131, %struct.lima_bo* %136, i32 %146, i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %128
  br label %253

156:                                              ; preds = %128
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %122

160:                                              ; preds = %122
  %161 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %162 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %161, i32 0, i32 5
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %167 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  %170 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %171 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call %struct.dma_fence* @lima_sched_context_queue_task(i64 %169, i32 %172)
  store %struct.dma_fence* %173, %struct.dma_fence** %12, align 8
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %215, %160
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %177 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %218

180:                                              ; preds = %174
  %181 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %182 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %181, i32 0, i32 3
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @LIMA_SUBMIT_BO_WRITE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %180
  %193 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %193, i64 %195
  %197 = load %struct.lima_bo*, %struct.lima_bo** %196, align 8
  %198 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %202 = call i32 @dma_resv_add_excl_fence(i32 %200, %struct.dma_fence* %201)
  br label %214

203:                                              ; preds = %180
  %204 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %204, i64 %206
  %208 = load %struct.lima_bo*, %struct.lima_bo** %207, align 8
  %209 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %213 = call i32 @dma_resv_add_shared_fence(i32 %211, %struct.dma_fence* %212)
  br label %214

214:                                              ; preds = %203, %192
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  br label %174

218:                                              ; preds = %174
  %219 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %220 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %221 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @lima_gem_unlock_bos(%struct.lima_bo** %219, i32 %222, %struct.ww_acquire_ctx* %8)
  store i32 0, i32* %6, align 4
  br label %224

224:                                              ; preds = %238, %218
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %227 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %224
  %231 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %231, i64 %233
  %235 = load %struct.lima_bo*, %struct.lima_bo** %234, align 8
  %236 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %235, i32 0, i32 0
  %237 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %236)
  br label %238

238:                                              ; preds = %230
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %6, align 4
  br label %224

241:                                              ; preds = %224
  %242 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %243 = icmp ne %struct.drm_syncobj* %242, null
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %246 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %247 = call i32 @drm_syncobj_replace_fence(%struct.drm_syncobj* %245, %struct.dma_fence* %246)
  %248 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %249 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %248)
  br label %250

250:                                              ; preds = %244, %241
  %251 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %252 = call i32 @dma_fence_put(%struct.dma_fence* %251)
  store i32 0, i32* %3, align 4
  br label %305

253:                                              ; preds = %155, %120
  %254 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %255 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @lima_sched_task_fini(i32 %256)
  br label %258

258:                                              ; preds = %253, %113
  %259 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %260 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %261 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @lima_gem_unlock_bos(%struct.lima_bo** %259, i32 %262, %struct.ww_acquire_ctx* %8)
  br label %264

264:                                              ; preds = %258, %91, %71, %60
  store i32 0, i32* %6, align 4
  br label %265

265:                                              ; preds = %294, %264
  %266 = load i32, i32* %6, align 4
  %267 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %268 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp slt i32 %266, %269
  br i1 %270, label %271, label %297

271:                                              ; preds = %265
  %272 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %272, i64 %274
  %276 = load %struct.lima_bo*, %struct.lima_bo** %275, align 8
  %277 = icmp ne %struct.lima_bo* %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %271
  br label %297

279:                                              ; preds = %271
  %280 = load %struct.lima_vm*, %struct.lima_vm** %10, align 8
  %281 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %281, i64 %283
  %285 = load %struct.lima_bo*, %struct.lima_bo** %284, align 8
  %286 = call i32 @lima_vm_bo_del(%struct.lima_vm* %280, %struct.lima_bo* %285)
  %287 = load %struct.lima_bo**, %struct.lima_bo*** %13, align 8
  %288 = load i32, i32* %6, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.lima_bo*, %struct.lima_bo** %287, i64 %289
  %291 = load %struct.lima_bo*, %struct.lima_bo** %290, align 8
  %292 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %291, i32 0, i32 0
  %293 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %292)
  br label %294

294:                                              ; preds = %279
  %295 = load i32, i32* %6, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %6, align 4
  br label %265

297:                                              ; preds = %278, %265
  %298 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %299 = icmp ne %struct.drm_syncobj* %298, null
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %302 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %301)
  br label %303

303:                                              ; preds = %300, %297
  %304 = load i32, i32* %7, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %303, %250, %36
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local %struct.lima_drm_priv* @to_lima_drm_priv(%struct.drm_file*) #1

declare dso_local %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file*, i64) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.lima_bo* @to_lima_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @lima_vm_bo_add(%struct.lima_vm*, %struct.lima_bo*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @lima_gem_lock_bos(%struct.lima_bo**, i32, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @lima_sched_task_init(i32, i64, %struct.lima_bo**, i32, %struct.lima_vm*) #1

declare dso_local i32 @lima_gem_add_deps(%struct.drm_file*, %struct.lima_submit*) #1

declare dso_local i32 @lima_gem_sync_bo(i32, %struct.lima_bo*, i32, i32) #1

declare dso_local %struct.dma_fence* @lima_sched_context_queue_task(i64, i32) #1

declare dso_local i32 @dma_resv_add_excl_fence(i32, %struct.dma_fence*) #1

declare dso_local i32 @dma_resv_add_shared_fence(i32, %struct.dma_fence*) #1

declare dso_local i32 @lima_gem_unlock_bos(%struct.lima_bo**, i32, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @drm_syncobj_replace_fence(%struct.drm_syncobj*, %struct.dma_fence*) #1

declare dso_local i32 @drm_syncobj_put(%struct.drm_syncobj*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @lima_sched_task_fini(i32) #1

declare dso_local i32 @lima_vm_bo_del(%struct.lima_vm*, %struct.lima_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
