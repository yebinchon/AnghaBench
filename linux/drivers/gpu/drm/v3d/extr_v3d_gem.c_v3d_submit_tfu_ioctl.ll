; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_submit_tfu_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_submit_tfu_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32, i32, %struct.v3d_file_priv* }
%struct.v3d_file_priv = type { i32 }
%struct.v3d_dev = type { i32, i32 }
%struct.drm_v3d_submit_tfu = type { i32, i32*, i32, i32 }
%struct.v3d_tfu_job = type { %struct.TYPE_6__, %struct.drm_v3d_submit_tfu }
%struct.TYPE_6__ = type { i32, %struct.drm_gem_object**, i32 }
%struct.drm_gem_object = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v3d_job_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to look up GEM BO %d: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@V3D_TFU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v3d_submit_tfu_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.v3d_dev*, align 8
  %9 = alloca %struct.v3d_file_priv*, align 8
  %10 = alloca %struct.drm_v3d_submit_tfu*, align 8
  %11 = alloca %struct.v3d_tfu_job*, align 8
  %12 = alloca %struct.ww_acquire_ctx, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.v3d_dev* @to_v3d_dev(%struct.drm_device* %15)
  store %struct.v3d_dev* %16, %struct.v3d_dev** %8, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %18 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %17, i32 0, i32 2
  %19 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %18, align 8
  store %struct.v3d_file_priv* %19, %struct.v3d_file_priv** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.drm_v3d_submit_tfu*
  store %struct.drm_v3d_submit_tfu* %21, %struct.drm_v3d_submit_tfu** %10, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %23 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %22, i32 0, i32 1
  %24 = load %struct.drm_v3d_submit_tfu*, %struct.drm_v3d_submit_tfu** %10, align 8
  %25 = getelementptr inbounds %struct.drm_v3d_submit_tfu, %struct.drm_v3d_submit_tfu* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @trace_v3d_submit_tfu_ioctl(i32* %23, i32 %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kcalloc(i32 1, i32 48, i32 %28)
  %30 = bitcast i8* %29 to %struct.v3d_tfu_job*
  store %struct.v3d_tfu_job* %30, %struct.v3d_tfu_job** %11, align 8
  %31 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %32 = icmp ne %struct.v3d_tfu_job* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %226

36:                                               ; preds = %3
  %37 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %38 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %39 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %40 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %39, i32 0, i32 0
  %41 = load i32, i32* @v3d_job_free, align 4
  %42 = load %struct.drm_v3d_submit_tfu*, %struct.drm_v3d_submit_tfu** %10, align 8
  %43 = getelementptr inbounds %struct.drm_v3d_submit_tfu, %struct.drm_v3d_submit_tfu* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @v3d_job_init(%struct.v3d_dev* %37, %struct.drm_file* %38, %struct.TYPE_6__* %40, i32 %41, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %50 = call i32 @kfree(%struct.v3d_tfu_job* %49)
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %4, align 4
  br label %226

52:                                               ; preds = %36
  %53 = load %struct.drm_v3d_submit_tfu*, %struct.drm_v3d_submit_tfu** %10, align 8
  %54 = getelementptr inbounds %struct.drm_v3d_submit_tfu, %struct.drm_v3d_submit_tfu* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @ARRAY_SIZE(i32* %55)
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kcalloc(i32 %56, i32 8, i32 %57)
  %59 = bitcast i8* %58 to %struct.drm_gem_object**
  %60 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %61 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store %struct.drm_gem_object** %59, %struct.drm_gem_object*** %62, align 8
  %63 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %64 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %65, align 8
  %67 = icmp ne %struct.drm_gem_object** %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %52
  %69 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %70 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %69, i32 0, i32 0
  %71 = call i32 @v3d_job_put(%struct.TYPE_6__* %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %226

74:                                               ; preds = %52
  %75 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %76 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %75, i32 0, i32 1
  %77 = load %struct.drm_v3d_submit_tfu*, %struct.drm_v3d_submit_tfu** %10, align 8
  %78 = bitcast %struct.drm_v3d_submit_tfu* %76 to i8*
  %79 = bitcast %struct.drm_v3d_submit_tfu* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 24, i1 false)
  %80 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %81 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %80, i32 0, i32 0
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %84 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %161, %74
  %87 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %88 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.drm_v3d_submit_tfu*, %struct.drm_v3d_submit_tfu** %10, align 8
  %92 = getelementptr inbounds %struct.drm_v3d_submit_tfu, %struct.drm_v3d_submit_tfu* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @ARRAY_SIZE(i32* %93)
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %167

96:                                               ; preds = %86
  %97 = load %struct.drm_v3d_submit_tfu*, %struct.drm_v3d_submit_tfu** %10, align 8
  %98 = getelementptr inbounds %struct.drm_v3d_submit_tfu, %struct.drm_v3d_submit_tfu* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %101 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %96
  br label %167

109:                                              ; preds = %96
  %110 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %111 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %110, i32 0, i32 1
  %112 = load %struct.drm_v3d_submit_tfu*, %struct.drm_v3d_submit_tfu** %10, align 8
  %113 = getelementptr inbounds %struct.drm_v3d_submit_tfu, %struct.drm_v3d_submit_tfu* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %116 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.drm_gem_object* @idr_find(i32* %111, i32 %121)
  store %struct.drm_gem_object* %122, %struct.drm_gem_object** %14, align 8
  %123 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %124 = icmp ne %struct.drm_gem_object* %123, null
  br i1 %124, label %147, label %125

125:                                              ; preds = %109
  %126 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %127 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load %struct.drm_v3d_submit_tfu*, %struct.drm_v3d_submit_tfu** %10, align 8
  %132 = getelementptr inbounds %struct.drm_v3d_submit_tfu, %struct.drm_v3d_submit_tfu* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %135 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %133, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %130, i32 %140)
  %142 = load i32, i32* @ENOENT, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %13, align 4
  %144 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %145 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock(i32* %145)
  br label %221

147:                                              ; preds = %109
  %148 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %149 = call i32 @drm_gem_object_get(%struct.drm_gem_object* %148)
  %150 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %151 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %152 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %153, align 8
  %155 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %156 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %154, i64 %159
  store %struct.drm_gem_object* %150, %struct.drm_gem_object** %160, align 8
  br label %161

161:                                              ; preds = %147
  %162 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %163 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  br label %86

167:                                              ; preds = %108, %86
  %168 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %169 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %168, i32 0, i32 0
  %170 = call i32 @spin_unlock(i32* %169)
  %171 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %172 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %171, i32 0, i32 0
  %173 = call i32 @v3d_lock_bo_reservations(%struct.TYPE_6__* %172, %struct.ww_acquire_ctx* %12)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  br label %221

177:                                              ; preds = %167
  %178 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %179 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %178, i32 0, i32 0
  %180 = call i32 @mutex_lock(i32* %179)
  %181 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %9, align 8
  %182 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %183 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %182, i32 0, i32 0
  %184 = load i32, i32* @V3D_TFU, align 4
  %185 = call i32 @v3d_push_job(%struct.v3d_file_priv* %181, %struct.TYPE_6__* %183, i32 %184)
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %177
  br label %207

189:                                              ; preds = %177
  %190 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %191 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %190, i32 0, i32 0
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %194 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %195 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %194, i32 0, i32 0
  %196 = load %struct.drm_v3d_submit_tfu*, %struct.drm_v3d_submit_tfu** %10, align 8
  %197 = getelementptr inbounds %struct.drm_v3d_submit_tfu, %struct.drm_v3d_submit_tfu* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %200 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @v3d_attach_fences_and_unlock_reservation(%struct.drm_file* %193, %struct.TYPE_6__* %195, %struct.ww_acquire_ctx* %12, i32 %198, i32 %202)
  %204 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %205 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %204, i32 0, i32 0
  %206 = call i32 @v3d_job_put(%struct.TYPE_6__* %205)
  store i32 0, i32* %4, align 4
  br label %226

207:                                              ; preds = %188
  %208 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %209 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %208, i32 0, i32 0
  %210 = call i32 @mutex_unlock(i32* %209)
  %211 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %212 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %213, align 8
  %215 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %216 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = call i32 @drm_gem_unlock_reservations(%struct.drm_gem_object** %214, i64 %219, %struct.ww_acquire_ctx* %12)
  br label %221

221:                                              ; preds = %207, %176, %125
  %222 = load %struct.v3d_tfu_job*, %struct.v3d_tfu_job** %11, align 8
  %223 = getelementptr inbounds %struct.v3d_tfu_job, %struct.v3d_tfu_job* %222, i32 0, i32 0
  %224 = call i32 @v3d_job_put(%struct.TYPE_6__* %223)
  %225 = load i32, i32* %13, align 4
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %221, %189, %68, %48, %33
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(%struct.drm_device*) #1

declare dso_local i32 @trace_v3d_submit_tfu_ioctl(i32*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @v3d_job_init(%struct.v3d_dev*, %struct.drm_file*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.v3d_tfu_job*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @v3d_job_put(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.drm_gem_object* @idr_find(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_gem_object_get(%struct.drm_gem_object*) #1

declare dso_local i32 @v3d_lock_bo_reservations(%struct.TYPE_6__*, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v3d_push_job(%struct.v3d_file_priv*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v3d_attach_fences_and_unlock_reservation(%struct.drm_file*, %struct.TYPE_6__*, %struct.ww_acquire_ctx*, i32, i32) #1

declare dso_local i32 @drm_gem_unlock_reservations(%struct.drm_gem_object**, i64, %struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
