; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_12__, %struct.TYPE_18__, %struct.TYPE_10__, %struct.TYPE_16__, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.amdgpu_ring, %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.drm_sched_rq* }
%struct.drm_sched_rq = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.TYPE_10__ = type { %struct.amdgpu_ring* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.amdgpu_ring }
%struct.TYPE_14__ = type { i32, %struct.amdgpu_ring*, %struct.amdgpu_ring* }
%struct.drm_file = type { i32 }
%struct.amdgpu_ctx = type { i32, %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity**, i32, i32, i8*, i8*, i8*, i32, i32, i32, %struct.amdgpu_device* }
%struct.amdgpu_ctx_entity = type { i32, i32, %struct.amdgpu_ctx_entity* }

@DRM_SCHED_PRIORITY_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@amdgpu_sched_jobs = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_HW_IP_NUM = common dso_local global i32 0, align 4
@amdgpu_ctx_num_entities = common dso_local global i32* null, align 8
@DRM_SCHED_PRIORITY_UNSET = common dso_local global i32 0, align 4
@AMDGPU_MAX_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, %struct.drm_file*, %struct.amdgpu_ctx*)* @amdgpu_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ctx_init(%struct.amdgpu_device* %0, i32 %1, %struct.drm_file* %2, %struct.amdgpu_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.amdgpu_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.amdgpu_ctx_entity*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.drm_file* %2, %struct.drm_file** %8, align 8
  store %struct.amdgpu_ctx* %3, %struct.amdgpu_ctx** %9, align 8
  %22 = call i32 (...) @amdgpu_ctx_total_num_entities()
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ult i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DRM_SCHED_PRIORITY_MAX, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %498

32:                                               ; preds = %25
  %33 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @amdgpu_ctx_priority_permit(%struct.drm_file* %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %5, align 4
  br label %498

40:                                               ; preds = %32
  %41 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %42 = call i32 @memset(%struct.amdgpu_ctx* %41, i32 0, i32 80)
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %44 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %44, i32 0, i32 11
  store %struct.amdgpu_device* %43, %struct.amdgpu_device** %45, align 8
  %46 = load i32, i32* @amdgpu_sched_jobs, align 4
  %47 = load i32, i32* %10, align 4
  %48 = mul i32 %46, %47
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kcalloc(i32 %48, i32 8, i32 %49)
  %51 = bitcast i8* %50 to %struct.amdgpu_ctx_entity*
  %52 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %52, i32 0, i32 1
  store %struct.amdgpu_ctx_entity* %51, %struct.amdgpu_ctx_entity** %53, align 8
  %54 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %54, i32 0, i32 1
  %56 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %55, align 8
  %57 = icmp ne %struct.amdgpu_ctx_entity* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %40
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %498

61:                                               ; preds = %40
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kcalloc(i32 %62, i32 16, i32 %63)
  %65 = bitcast i8* %64 to %struct.amdgpu_ctx_entity*
  %66 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %67 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %66, i32 0, i32 2
  %68 = load %struct.amdgpu_ctx_entity**, %struct.amdgpu_ctx_entity*** %67, align 8
  %69 = getelementptr inbounds %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %68, i64 0
  store %struct.amdgpu_ctx_entity* %65, %struct.amdgpu_ctx_entity** %69, align 8
  %70 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %70, i32 0, i32 2
  %72 = load %struct.amdgpu_ctx_entity**, %struct.amdgpu_ctx_entity*** %71, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %72, i64 0
  %74 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %73, align 8
  %75 = icmp ne %struct.amdgpu_ctx_entity* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %61
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %14, align 4
  br label %490

79:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %105, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %86 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %85, i32 0, i32 2
  %87 = load %struct.amdgpu_ctx_entity**, %struct.amdgpu_ctx_entity*** %86, align 8
  %88 = getelementptr inbounds %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %87, i64 0
  %89 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %89, i64 %91
  store %struct.amdgpu_ctx_entity* %92, %struct.amdgpu_ctx_entity** %15, align 8
  %93 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %15, align 8
  %94 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %96 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %95, i32 0, i32 1
  %97 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %96, align 8
  %98 = load i32, i32* @amdgpu_sched_jobs, align 4
  %99 = load i32, i32* %11, align 4
  %100 = mul i32 %98, %99
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %97, i64 %101
  %103 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %15, align 8
  %104 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %103, i32 0, i32 2
  store %struct.amdgpu_ctx_entity* %102, %struct.amdgpu_ctx_entity** %104, align 8
  br label %105

105:                                              ; preds = %84
  %106 = load i32, i32* %11, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %80

108:                                              ; preds = %80
  store i32 1, i32* %11, align 4
  br label %109

109:                                              ; preds = %136, %108
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @AMDGPU_HW_IP_NUM, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %139

113:                                              ; preds = %109
  %114 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %115 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %114, i32 0, i32 2
  %116 = load %struct.amdgpu_ctx_entity**, %struct.amdgpu_ctx_entity*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sub i32 %117, 1
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %116, i64 %119
  %121 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %120, align 8
  %122 = load i32*, i32** @amdgpu_ctx_num_entities, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sub i32 %123, 1
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %121, i64 %128
  %130 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %131 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %130, i32 0, i32 2
  %132 = load %struct.amdgpu_ctx_entity**, %struct.amdgpu_ctx_entity*** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %132, i64 %134
  store %struct.amdgpu_ctx_entity* %129, %struct.amdgpu_ctx_entity** %135, align 8
  br label %136

136:                                              ; preds = %113
  %137 = load i32, i32* %11, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %109

139:                                              ; preds = %109
  %140 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %141 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %140, i32 0, i32 10
  %142 = call i32 @kref_init(i32* %141)
  %143 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %144 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %143, i32 0, i32 9
  %145 = call i32 @spin_lock_init(i32* %144)
  %146 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %147 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %146, i32 0, i32 8
  %148 = call i32 @mutex_init(i32* %147)
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %150 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %149, i32 0, i32 6
  %151 = call i8* @atomic_read(i32* %150)
  %152 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %153 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %152, i32 0, i32 6
  store i8* %151, i8** %153, align 8
  %154 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %155 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %154, i32 0, i32 6
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %158 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %157, i32 0, i32 7
  store i8* %156, i8** %158, align 8
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 5
  %161 = call i8* @atomic_read(i32* %160)
  %162 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %163 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %162, i32 0, i32 5
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %166 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @DRM_SCHED_PRIORITY_UNSET, align 4
  %168 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %169 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %460, %139
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @AMDGPU_HW_IP_NUM, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %174, label %463

174:                                              ; preds = %170
  %175 = load i32, i32* @AMDGPU_MAX_RINGS, align 4
  %176 = zext i32 %175 to i64
  %177 = call i8* @llvm.stacksave()
  store i8* %177, i8** %16, align 8
  %178 = alloca %struct.amdgpu_ring*, i64 %176, align 16
  store i64 %176, i64* %17, align 8
  %179 = load i32, i32* @AMDGPU_MAX_RINGS, align 4
  %180 = zext i32 %179 to i64
  %181 = alloca %struct.drm_sched_rq*, i64 %180, align 16
  store i64 %180, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %182 = load i32, i32* %11, align 4
  switch i32 %182, label %391 [
    i32 134, label %183
    i32 136, label %190
    i32 135, label %217
    i32 133, label %245
    i32 131, label %253
    i32 132, label %260
    i32 130, label %270
    i32 129, label %305
    i32 128, label %356
  ]

183:                                              ; preds = %174
  %184 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %185 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 2
  %187 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %186, align 8
  %188 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %187, i64 0
  %189 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %178, i64 0
  store %struct.amdgpu_ring* %188, %struct.amdgpu_ring** %189, align 16
  store i32 1, i32* %19, align 4
  br label %391

190:                                              ; preds = %174
  store i32 0, i32* %12, align 4
  br label %191

191:                                              ; preds = %209, %190
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %194 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ult i32 %192, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %191
  %199 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %200 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %202, i64 %204
  %206 = load i32, i32* %12, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %178, i64 %207
  store %struct.amdgpu_ring* %205, %struct.amdgpu_ring** %208, align 8
  br label %209

209:                                              ; preds = %198
  %210 = load i32, i32* %12, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %12, align 4
  br label %191

212:                                              ; preds = %191
  %213 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %214 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  store i32 %216, i32* %19, align 4
  br label %391

217:                                              ; preds = %174
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %237, %217
  %219 = load i32, i32* %12, align 4
  %220 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %221 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ult i32 %219, %223
  br i1 %224, label %225, label %240

225:                                              ; preds = %218
  %226 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %227 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i32, i32* %12, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %178, i64 %235
  store %struct.amdgpu_ring* %233, %struct.amdgpu_ring** %236, align 8
  br label %237

237:                                              ; preds = %225
  %238 = load i32, i32* %12, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %12, align 4
  br label %218

240:                                              ; preds = %218
  %241 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %242 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  store i32 %244, i32* %19, align 4
  br label %391

245:                                              ; preds = %174
  %246 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %247 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %178, i64 0
  store %struct.amdgpu_ring* %251, %struct.amdgpu_ring** %252, align 16
  store i32 1, i32* %19, align 4
  br label %391

253:                                              ; preds = %174
  %254 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %255 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %256, align 8
  %258 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %257, i64 0
  %259 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %178, i64 0
  store %struct.amdgpu_ring* %258, %struct.amdgpu_ring** %259, align 16
  store i32 1, i32* %19, align 4
  br label %391

260:                                              ; preds = %174
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %262 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i64 0
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %266, align 8
  %268 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %267, i64 0
  %269 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %178, i64 0
  store %struct.amdgpu_ring* %268, %struct.amdgpu_ring** %269, align 16
  store i32 1, i32* %19, align 4
  br label %391

270:                                              ; preds = %174
  store i32 0, i32* %12, align 4
  br label %271

271:                                              ; preds = %301, %270
  %272 = load i32, i32* %12, align 4
  %273 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %274 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp ult i32 %272, %276
  br i1 %277, label %278, label %304

278:                                              ; preds = %271
  %279 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %280 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %12, align 4
  %284 = shl i32 1, %283
  %285 = and i32 %282, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %278
  br label %301

288:                                              ; preds = %278
  %289 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %290 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 3
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %291, align 8
  %293 = load i32, i32* %12, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 2
  %297 = load i32, i32* %19, align 4
  %298 = add i32 %297, 1
  store i32 %298, i32* %19, align 4
  %299 = zext i32 %297 to i64
  %300 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %178, i64 %299
  store %struct.amdgpu_ring* %296, %struct.amdgpu_ring** %300, align 8
  br label %301

301:                                              ; preds = %288, %287
  %302 = load i32, i32* %12, align 4
  %303 = add i32 %302, 1
  store i32 %303, i32* %12, align 4
  br label %271

304:                                              ; preds = %271
  br label %391

305:                                              ; preds = %174
  store i32 0, i32* %12, align 4
  br label %306

306:                                              ; preds = %352, %305
  %307 = load i32, i32* %12, align 4
  %308 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %309 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp ult i32 %307, %311
  br i1 %312, label %313, label %355

313:                                              ; preds = %306
  %314 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %315 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %12, align 4
  %319 = shl i32 1, %318
  %320 = and i32 %317, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %313
  br label %352

323:                                              ; preds = %313
  store i32 0, i32* %13, align 4
  br label %324

324:                                              ; preds = %348, %323
  %325 = load i32, i32* %13, align 4
  %326 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %327 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = icmp ult i32 %325, %329
  br i1 %330, label %331, label %351

331:                                              ; preds = %324
  %332 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %333 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 3
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %334, align 8
  %336 = load i32, i32* %12, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 1
  %340 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %339, align 8
  %341 = load i32, i32* %13, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %340, i64 %342
  %344 = load i32, i32* %19, align 4
  %345 = add i32 %344, 1
  store i32 %345, i32* %19, align 4
  %346 = zext i32 %344 to i64
  %347 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %178, i64 %346
  store %struct.amdgpu_ring* %343, %struct.amdgpu_ring** %347, align 8
  br label %348

348:                                              ; preds = %331
  %349 = load i32, i32* %13, align 4
  %350 = add i32 %349, 1
  store i32 %350, i32* %13, align 4
  br label %324

351:                                              ; preds = %324
  br label %352

352:                                              ; preds = %351, %322
  %353 = load i32, i32* %12, align 4
  %354 = add i32 %353, 1
  store i32 %354, i32* %12, align 4
  br label %306

355:                                              ; preds = %306
  br label %391

356:                                              ; preds = %174
  store i32 0, i32* %12, align 4
  br label %357

357:                                              ; preds = %387, %356
  %358 = load i32, i32* %12, align 4
  %359 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %360 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = icmp ult i32 %358, %362
  br i1 %363, label %364, label %390

364:                                              ; preds = %357
  %365 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %366 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %12, align 4
  %370 = shl i32 1, %369
  %371 = and i32 %368, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %364
  br label %387

374:                                              ; preds = %364
  %375 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %376 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 3
  %378 = load %struct.TYPE_11__*, %struct.TYPE_11__** %377, align 8
  %379 = load i32, i32* %12, align 4
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 0
  %383 = load i32, i32* %19, align 4
  %384 = add i32 %383, 1
  store i32 %384, i32* %19, align 4
  %385 = zext i32 %383 to i64
  %386 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %178, i64 %385
  store %struct.amdgpu_ring* %382, %struct.amdgpu_ring** %386, align 8
  br label %387

387:                                              ; preds = %374, %373
  %388 = load i32, i32* %12, align 4
  %389 = add i32 %388, 1
  store i32 %389, i32* %12, align 4
  br label %357

390:                                              ; preds = %357
  br label %391

391:                                              ; preds = %174, %390, %355, %304, %260, %253, %245, %240, %212, %183
  store i32 0, i32* %12, align 4
  br label %392

392:                                              ; preds = %420, %391
  %393 = load i32, i32* %12, align 4
  %394 = load i32, i32* %19, align 4
  %395 = icmp ult i32 %393, %394
  br i1 %395, label %396, label %423

396:                                              ; preds = %392
  %397 = load i32, i32* %12, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %178, i64 %398
  %400 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %399, align 8
  %401 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %396
  br label %420

405:                                              ; preds = %396
  %406 = load i32, i32* %12, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %178, i64 %407
  %409 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %408, align 8
  %410 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 0
  %412 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %411, align 8
  %413 = load i32, i32* %7, align 4
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %412, i64 %414
  %416 = load i32, i32* %20, align 4
  %417 = add i32 %416, 1
  store i32 %417, i32* %20, align 4
  %418 = zext i32 %416 to i64
  %419 = getelementptr inbounds %struct.drm_sched_rq*, %struct.drm_sched_rq** %181, i64 %418
  store %struct.drm_sched_rq* %415, %struct.drm_sched_rq** %419, align 8
  br label %420

420:                                              ; preds = %405, %404
  %421 = load i32, i32* %12, align 4
  %422 = add i32 %421, 1
  store i32 %422, i32* %12, align 4
  br label %392

423:                                              ; preds = %392
  store i32 0, i32* %12, align 4
  br label %424

424:                                              ; preds = %448, %423
  %425 = load i32, i32* %12, align 4
  %426 = load i32*, i32** @amdgpu_ctx_num_entities, align 8
  %427 = load i32, i32* %11, align 4
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = icmp ult i32 %425, %430
  br i1 %431, label %432, label %451

432:                                              ; preds = %424
  %433 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %434 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %433, i32 0, i32 2
  %435 = load %struct.amdgpu_ctx_entity**, %struct.amdgpu_ctx_entity*** %434, align 8
  %436 = load i32, i32* %11, align 4
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %435, i64 %437
  %439 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %438, align 8
  %440 = load i32, i32* %12, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %439, i64 %441
  %443 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %442, i32 0, i32 1
  %444 = load i32, i32* %20, align 4
  %445 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %446 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %445, i32 0, i32 3
  %447 = call i32 @drm_sched_entity_init(i32* %443, %struct.drm_sched_rq** %181, i32 %444, i32* %446)
  store i32 %447, i32* %14, align 4
  br label %448

448:                                              ; preds = %432
  %449 = load i32, i32* %12, align 4
  %450 = add i32 %449, 1
  store i32 %450, i32* %12, align 4
  br label %424

451:                                              ; preds = %424
  %452 = load i32, i32* %14, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %451
  store i32 37, i32* %21, align 4
  br label %456

455:                                              ; preds = %451
  store i32 0, i32* %21, align 4
  br label %456

456:                                              ; preds = %454, %455
  %457 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %457)
  %458 = load i32, i32* %21, align 4
  switch i32 %458, label %500 [
    i32 0, label %459
    i32 37, label %464
  ]

459:                                              ; preds = %456
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %11, align 4
  %462 = add i32 %461, 1
  store i32 %462, i32* %11, align 4
  br label %170

463:                                              ; preds = %170
  store i32 0, i32* %5, align 4
  br label %498

464:                                              ; preds = %456
  store i32 0, i32* %11, align 4
  br label %465

465:                                              ; preds = %480, %464
  %466 = load i32, i32* %11, align 4
  %467 = load i32, i32* %10, align 4
  %468 = icmp ult i32 %466, %467
  br i1 %468, label %469, label %483

469:                                              ; preds = %465
  %470 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %471 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %470, i32 0, i32 2
  %472 = load %struct.amdgpu_ctx_entity**, %struct.amdgpu_ctx_entity*** %471, align 8
  %473 = getelementptr inbounds %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %472, i64 0
  %474 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %473, align 8
  %475 = load i32, i32* %11, align 4
  %476 = zext i32 %475 to i64
  %477 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %474, i64 %476
  %478 = getelementptr inbounds %struct.amdgpu_ctx_entity, %struct.amdgpu_ctx_entity* %477, i32 0, i32 1
  %479 = call i32 @drm_sched_entity_destroy(i32* %478)
  br label %480

480:                                              ; preds = %469
  %481 = load i32, i32* %11, align 4
  %482 = add i32 %481, 1
  store i32 %482, i32* %11, align 4
  br label %465

483:                                              ; preds = %465
  %484 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %485 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %484, i32 0, i32 2
  %486 = load %struct.amdgpu_ctx_entity**, %struct.amdgpu_ctx_entity*** %485, align 8
  %487 = getelementptr inbounds %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %486, i64 0
  %488 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %487, align 8
  %489 = call i32 @kfree(%struct.amdgpu_ctx_entity* %488)
  br label %490

490:                                              ; preds = %483, %76
  %491 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %492 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %491, i32 0, i32 1
  %493 = load %struct.amdgpu_ctx_entity*, %struct.amdgpu_ctx_entity** %492, align 8
  %494 = call i32 @kfree(%struct.amdgpu_ctx_entity* %493)
  %495 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %9, align 8
  %496 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %495, i32 0, i32 1
  store %struct.amdgpu_ctx_entity* null, %struct.amdgpu_ctx_entity** %496, align 8
  %497 = load i32, i32* %14, align 4
  store i32 %497, i32* %5, align 4
  br label %498

498:                                              ; preds = %490, %463, %58, %38, %29
  %499 = load i32, i32* %5, align 4
  ret i32 %499

500:                                              ; preds = %456
  unreachable
}

declare dso_local i32 @amdgpu_ctx_total_num_entities(...) #1

declare dso_local i32 @amdgpu_ctx_priority_permit(%struct.drm_file*, i32) #1

declare dso_local i32 @memset(%struct.amdgpu_ctx*, i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @atomic_read(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @drm_sched_entity_init(i32*, %struct.drm_sched_rq**, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @drm_sched_entity_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.amdgpu_ctx_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
