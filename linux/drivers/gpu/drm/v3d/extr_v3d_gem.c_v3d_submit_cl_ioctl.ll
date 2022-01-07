; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_submit_cl_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_submit_cl_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.v3d_file_priv* }
%struct.v3d_file_priv = type { i32 }
%struct.v3d_dev = type { i32, i32 }
%struct.drm_v3d_submit_cl = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v3d_bin_job = type { i64, i64, %struct.TYPE_7__, %struct.v3d_bin_job*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.v3d_render_job = type { i64, i64, %struct.TYPE_7__, %struct.v3d_render_job*, i32, i32, i32, i32 }
%struct.ww_acquire_ctx = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"pad must be zero: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v3d_render_job_free = common dso_local global i32 0, align 4
@v3d_job_free = common dso_local global i32 0, align 4
@V3D_BIN = common dso_local global i32 0, align 4
@V3D_RENDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v3d_submit_cl_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.v3d_dev*, align 8
  %9 = alloca %struct.v3d_file_priv*, align 8
  %10 = alloca %struct.drm_v3d_submit_cl*, align 8
  %11 = alloca %struct.v3d_bin_job*, align 8
  %12 = alloca %struct.v3d_render_job*, align 8
  %13 = alloca %struct.ww_acquire_ctx, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.v3d_dev* @to_v3d_dev(%struct.drm_device* %15)
  store %struct.v3d_dev* %16, %struct.v3d_dev** %8, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %18 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %17, i32 0, i32 0
  %19 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %18, align 8
  store %struct.v3d_file_priv* %19, %struct.v3d_file_priv** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.drm_v3d_submit_cl*
  store %struct.drm_v3d_submit_cl* %21, %struct.drm_v3d_submit_cl** %10, align 8
  store %struct.v3d_bin_job* null, %struct.v3d_bin_job** %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %23 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %22, i32 0, i32 1
  %24 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %25 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %28 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @trace_v3d_submit_cl_ioctl(i32* %23, i64 %26, i64 %29)
  %31 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %32 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %37 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %259

42:                                               ; preds = %3
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.v3d_render_job* @kcalloc(i32 1, i32 56, i32 %43)
  store %struct.v3d_render_job* %44, %struct.v3d_render_job** %12, align 8
  %45 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %46 = icmp ne %struct.v3d_render_job* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %259

50:                                               ; preds = %42
  %51 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %52 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %55 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %57 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %60 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %62 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %61, i32 0, i32 7
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %65 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %66 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %67 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %66, i32 0, i32 2
  %68 = load i32, i32* @v3d_render_job_free, align 4
  %69 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %70 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %69, i32 0, i32 12
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @v3d_job_init(%struct.v3d_dev* %64, %struct.drm_file* %65, %struct.TYPE_7__* %67, i32 %68, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %50
  %76 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %77 = call i32 @kfree(%struct.v3d_render_job* %76)
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %4, align 4
  br label %259

79:                                               ; preds = %50
  %80 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %81 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %84 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %149

87:                                               ; preds = %79
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.v3d_render_job* @kcalloc(i32 1, i32 56, i32 %88)
  %90 = bitcast %struct.v3d_render_job* %89 to %struct.v3d_bin_job*
  store %struct.v3d_bin_job* %90, %struct.v3d_bin_job** %11, align 8
  %91 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %92 = icmp ne %struct.v3d_bin_job* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %95 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %94, i32 0, i32 2
  %96 = call i32 @v3d_job_put(%struct.TYPE_7__* %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %259

99:                                               ; preds = %87
  %100 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %101 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %102 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %103 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %102, i32 0, i32 2
  %104 = load i32, i32* @v3d_job_free, align 4
  %105 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %106 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @v3d_job_init(%struct.v3d_dev* %100, %struct.drm_file* %101, %struct.TYPE_7__* %103, i32 %104, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %99
  %112 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %113 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %112, i32 0, i32 2
  %114 = call i32 @v3d_job_put(%struct.TYPE_7__* %113)
  %115 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %116 = bitcast %struct.v3d_bin_job* %115 to %struct.v3d_render_job*
  %117 = call i32 @kfree(%struct.v3d_render_job* %116)
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %4, align 4
  br label %259

119:                                              ; preds = %99
  %120 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %121 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %124 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %126 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %129 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %131 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %130, i32 0, i32 10
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %134 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 8
  %135 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %136 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %139 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %141 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %144 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %146 = bitcast %struct.v3d_render_job* %145 to %struct.v3d_bin_job*
  %147 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %148 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %147, i32 0, i32 3
  store %struct.v3d_bin_job* %146, %struct.v3d_bin_job** %148, align 8
  br label %149

149:                                              ; preds = %119, %79
  %150 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %151 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %152 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %153 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %152, i32 0, i32 2
  %154 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %155 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %158 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @v3d_lookup_bos(%struct.drm_device* %150, %struct.drm_file* %151, %struct.TYPE_7__* %153, i32 %156, i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %149
  br label %247

164:                                              ; preds = %149
  %165 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %166 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %165, i32 0, i32 2
  %167 = call i32 @v3d_lock_bo_reservations(%struct.TYPE_7__* %166, %struct.ww_acquire_ctx* %13)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %247

171:                                              ; preds = %164
  %172 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %173 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %172, i32 0, i32 0
  %174 = call i32 @mutex_lock(i32* %173)
  %175 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %176 = icmp ne %struct.v3d_bin_job* %175, null
  br i1 %176, label %177, label %200

177:                                              ; preds = %171
  %178 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %9, align 8
  %179 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %180 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %179, i32 0, i32 2
  %181 = load i32, i32* @V3D_BIN, align 4
  %182 = call i32 @v3d_push_job(%struct.v3d_file_priv* %178, %struct.TYPE_7__* %180, i32 %181)
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  br label %234

186:                                              ; preds = %177
  %187 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %188 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 3
  %190 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %191 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @dma_fence_get(i32 %193)
  %195 = call i32 @drm_gem_fence_array_add(i32* %189, i32 %194)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  br label %234

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199, %171
  %201 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %9, align 8
  %202 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %203 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %202, i32 0, i32 2
  %204 = load i32, i32* @V3D_RENDER, align 4
  %205 = call i32 @v3d_push_job(%struct.v3d_file_priv* %201, %struct.TYPE_7__* %203, i32 %204)
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %234

209:                                              ; preds = %200
  %210 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %211 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %210, i32 0, i32 0
  %212 = call i32 @mutex_unlock(i32* %211)
  %213 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %214 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %215 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %214, i32 0, i32 2
  %216 = load %struct.drm_v3d_submit_cl*, %struct.drm_v3d_submit_cl** %10, align 8
  %217 = getelementptr inbounds %struct.drm_v3d_submit_cl, %struct.drm_v3d_submit_cl* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %220 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @v3d_attach_fences_and_unlock_reservation(%struct.drm_file* %213, %struct.TYPE_7__* %215, %struct.ww_acquire_ctx* %13, i32 %218, i32 %222)
  %224 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %225 = icmp ne %struct.v3d_bin_job* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %209
  %227 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %228 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %227, i32 0, i32 2
  %229 = call i32 @v3d_job_put(%struct.TYPE_7__* %228)
  br label %230

230:                                              ; preds = %226, %209
  %231 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %232 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %231, i32 0, i32 2
  %233 = call i32 @v3d_job_put(%struct.TYPE_7__* %232)
  store i32 0, i32* %4, align 4
  br label %259

234:                                              ; preds = %208, %198, %185
  %235 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %236 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %235, i32 0, i32 0
  %237 = call i32 @mutex_unlock(i32* %236)
  %238 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %239 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %243 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @drm_gem_unlock_reservations(i32 %241, i32 %245, %struct.ww_acquire_ctx* %13)
  br label %247

247:                                              ; preds = %234, %170, %163
  %248 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %249 = icmp ne %struct.v3d_bin_job* %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load %struct.v3d_bin_job*, %struct.v3d_bin_job** %11, align 8
  %252 = getelementptr inbounds %struct.v3d_bin_job, %struct.v3d_bin_job* %251, i32 0, i32 2
  %253 = call i32 @v3d_job_put(%struct.TYPE_7__* %252)
  br label %254

254:                                              ; preds = %250, %247
  %255 = load %struct.v3d_render_job*, %struct.v3d_render_job** %12, align 8
  %256 = getelementptr inbounds %struct.v3d_render_job, %struct.v3d_render_job* %255, i32 0, i32 2
  %257 = call i32 @v3d_job_put(%struct.TYPE_7__* %256)
  %258 = load i32, i32* %14, align 4
  store i32 %258, i32* %4, align 4
  br label %259

259:                                              ; preds = %254, %230, %111, %93, %75, %47, %35
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(%struct.drm_device*) #1

declare dso_local i32 @trace_v3d_submit_cl_ioctl(i32*, i64, i64) #1

declare dso_local i32 @DRM_INFO(i8*, i64) #1

declare dso_local %struct.v3d_render_job* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @v3d_job_init(%struct.v3d_dev*, %struct.drm_file*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.v3d_render_job*) #1

declare dso_local i32 @v3d_job_put(%struct.TYPE_7__*) #1

declare dso_local i32 @v3d_lookup_bos(%struct.drm_device*, %struct.drm_file*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @v3d_lock_bo_reservations(%struct.TYPE_7__*, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v3d_push_job(%struct.v3d_file_priv*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @drm_gem_fence_array_add(i32*, i32) #1

declare dso_local i32 @dma_fence_get(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v3d_attach_fences_and_unlock_reservation(%struct.drm_file*, %struct.TYPE_7__*, %struct.ww_acquire_ctx*, i32, i32) #1

declare dso_local i32 @drm_gem_unlock_reservations(i32, i32, %struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
