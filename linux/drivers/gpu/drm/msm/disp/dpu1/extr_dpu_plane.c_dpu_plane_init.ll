; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.dpu_plane = type { i32, i32, %struct.TYPE_16__*, i32, i32, %struct.TYPE_17__*, %struct.TYPE_12__*, i32, i32, %struct.drm_plane }
%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32, i32*, i32 }
%struct.dpu_kms = type { %struct.TYPE_17__*, i32 }

@DPU_ZPOS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"[%u]failed to allocate local plane struct\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"[%u]SSPP init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"[%u]SSPP init returned invalid cfg\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"[%u]invalid sblk\0A\00", align 1
@dpu_plane_funcs = common dso_local global i32 0, align 4
@supported_format_modifiers = common dso_local global i32 0, align 4
@DPU_STAGE_MAX = common dso_local global i32 0, align 4
@DPU_STAGE_0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to install zpos property, rc = %d\0A\00", align 1
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@dpu_plane_helper_funcs = common dso_local global i32 0, align 4
@DPU_NAME_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"plane%u\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"%s created for pipe:%u id:%u virtual:%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_plane* @dpu_plane_init(%struct.drm_device* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.drm_plane*, align 8
  %13 = alloca %struct.drm_plane*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.dpu_plane*, align 8
  %16 = alloca %struct.msm_drm_private*, align 8
  %17 = alloca %struct.dpu_kms*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.dpu_plane*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %12, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %13, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.msm_drm_private*, %struct.msm_drm_private** %23, align 8
  store %struct.msm_drm_private* %24, %struct.msm_drm_private** %16, align 8
  %25 = load %struct.msm_drm_private*, %struct.msm_drm_private** %16, align 8
  %26 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.dpu_kms* @to_dpu_kms(i32 %27)
  store %struct.dpu_kms* %28, %struct.dpu_kms** %17, align 8
  %29 = load i32, i32* @DPU_ZPOS_MAX, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.dpu_plane* @kzalloc(i32 56, i32 %32)
  store %struct.dpu_plane* %33, %struct.dpu_plane** %15, align 8
  %34 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %35 = icmp ne %struct.dpu_plane* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = call %struct.drm_plane* @ERR_PTR(i32 %41)
  store %struct.drm_plane* %42, %struct.drm_plane** %6, align 8
  br label %294

43:                                               ; preds = %5
  %44 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %45 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %44, i32 0, i32 9
  store %struct.drm_plane* %45, %struct.drm_plane** %12, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %48 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %53 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %55 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %54, i32 0, i32 8
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call %struct.drm_plane* @drm_plane_find(%struct.drm_device* %57, i32* null, i64 %58)
  store %struct.drm_plane* %59, %struct.drm_plane** %13, align 8
  %60 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %61 = icmp ne %struct.drm_plane* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %43
  %63 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %64 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %63)
  store %struct.dpu_plane* %64, %struct.dpu_plane** %21, align 8
  %65 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %66 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %65, i32 0, i32 8
  %67 = load %struct.dpu_plane*, %struct.dpu_plane** %21, align 8
  %68 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %67, i32 0, i32 8
  %69 = call i32 @list_add_tail(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %62, %43
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.dpu_kms*, %struct.dpu_kms** %17, align 8
  %73 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.dpu_kms*, %struct.dpu_kms** %17, align 8
  %76 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call %struct.TYPE_16__* @dpu_hw_sspp_init(i32 %71, i32 %74, %struct.TYPE_17__* %77, i32 %80)
  %82 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %83 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %82, i32 0, i32 2
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %83, align 8
  %84 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %85 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %84, i32 0, i32 2
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = call i64 @IS_ERR(%struct.TYPE_16__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %70
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %93 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %92, i32 0, i32 2
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = call i32 @PTR_ERR(%struct.TYPE_16__* %94)
  store i32 %95, i32* %20, align 4
  br label %289

96:                                               ; preds = %70
  %97 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %98 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %97, i32 0, i32 2
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = icmp ne %struct.TYPE_11__* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %105 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %104, i32 0, i32 2
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = icmp ne %struct.TYPE_12__* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %103, %96
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %275

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %118 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %117, i32 0, i32 2
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %125 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 8
  %126 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %127 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %126, i32 0, i32 2
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %134 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %133, i32 0, i32 6
  store %struct.TYPE_12__* %132, %struct.TYPE_12__** %134, align 8
  %135 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %136 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %135, i32 0, i32 6
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = icmp ne %struct.TYPE_12__* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %116
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  br label %275

142:                                              ; preds = %116
  %143 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %144 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  %148 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %149 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %148, i32 0, i32 6
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %14, align 8
  %153 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %154 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %153, i32 0, i32 6
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %19, align 4
  br label %169

158:                                              ; preds = %142
  %159 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %160 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %159, i32 0, i32 6
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %14, align 8
  %164 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %165 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %164, i32 0, i32 6
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %19, align 4
  br label %169

169:                                              ; preds = %158, %147
  %170 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %171 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* @supported_format_modifiers, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @drm_universal_plane_init(%struct.drm_device* %170, %struct.drm_plane* %171, i32 255, i32* @dpu_plane_funcs, i32* %172, i32 %173, i32 %174, i32 %175, i32* null)
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %20, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %275

180:                                              ; preds = %169
  %181 = load %struct.dpu_kms*, %struct.dpu_kms** %17, align 8
  %182 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %181, i32 0, i32 0
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %185 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %184, i32 0, i32 5
  store %struct.TYPE_17__* %183, %struct.TYPE_17__** %185, align 8
  %186 = load %struct.dpu_kms*, %struct.dpu_kms** %17, align 8
  %187 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %186, i32 0, i32 0
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %228

192:                                              ; preds = %180
  %193 = load %struct.dpu_kms*, %struct.dpu_kms** %17, align 8
  %194 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %193, i32 0, i32 0
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %228

204:                                              ; preds = %192
  %205 = load %struct.dpu_kms*, %struct.dpu_kms** %17, align 8
  %206 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %205, i32 0, i32 0
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %214, 1
  store i32 %215, i32* %18, align 4
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* @DPU_STAGE_MAX, align 4
  %218 = load i32, i32* @DPU_STAGE_0, align 4
  %219 = sub nsw i32 %217, %218
  %220 = sub nsw i32 %219, 1
  %221 = icmp sgt i32 %216, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %204
  %223 = load i32, i32* @DPU_STAGE_MAX, align 4
  %224 = load i32, i32* @DPU_STAGE_0, align 4
  %225 = sub nsw i32 %223, %224
  %226 = sub nsw i32 %225, 1
  store i32 %226, i32* %18, align 4
  br label %227

227:                                              ; preds = %222, %204
  br label %228

228:                                              ; preds = %227, %192, %180
  %229 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @drm_plane_create_zpos_property(%struct.drm_plane* %229, i32 0, i32 0, i32 %230)
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %20, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load i32, i32* %20, align 4
  %236 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %234, %228
  %238 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %239 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %240 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %241 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %246 = or i32 %244, %245
  %247 = call i32 @drm_plane_create_rotation_property(%struct.drm_plane* %238, i32 %239, i32 %246)
  %248 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %249 = call i32 @drm_plane_enable_fb_damage_clips(%struct.drm_plane* %248)
  %250 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %251 = call i32 @drm_plane_helper_add(%struct.drm_plane* %250, i32* @dpu_plane_helper_funcs)
  %252 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %253 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @DPU_NAME_SIZE, align 4
  %256 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %257 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @snprintf(i32 %254, i32 %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %259)
  %261 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %262 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %261, i32 0, i32 4
  %263 = call i32 @mutex_init(i32* %262)
  %264 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %265 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %269 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i64, i64* %11, align 8
  %273 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %266, i32 %267, i32 %271, i64 %272)
  %274 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  store %struct.drm_plane* %274, %struct.drm_plane** %6, align 8
  br label %294

275:                                              ; preds = %179, %139, %112
  %276 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %277 = icmp ne %struct.dpu_plane* %276, null
  br i1 %277, label %278, label %288

278:                                              ; preds = %275
  %279 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %280 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %279, i32 0, i32 2
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %280, align 8
  %282 = icmp ne %struct.TYPE_16__* %281, null
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %285 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %284, i32 0, i32 2
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %285, align 8
  %287 = call i32 @dpu_hw_sspp_destroy(%struct.TYPE_16__* %286)
  br label %288

288:                                              ; preds = %283, %278, %275
  br label %289

289:                                              ; preds = %288, %89
  %290 = load %struct.dpu_plane*, %struct.dpu_plane** %15, align 8
  %291 = call i32 @kfree(%struct.dpu_plane* %290)
  %292 = load i32, i32* %20, align 4
  %293 = call %struct.drm_plane* @ERR_PTR(i32 %292)
  store %struct.drm_plane* %293, %struct.drm_plane** %6, align 8
  br label %294

294:                                              ; preds = %289, %237, %36
  %295 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  ret %struct.drm_plane* %295
}

declare dso_local %struct.dpu_kms* @to_dpu_kms(i32) #1

declare dso_local %struct.dpu_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @DPU_ERROR(i8*, i32) #1

declare dso_local %struct.drm_plane* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.drm_plane* @drm_plane_find(%struct.drm_device*, i32*, i64) #1

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @dpu_hw_sspp_init(i32, i32, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_16__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_16__*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @drm_plane_create_zpos_property(%struct.drm_plane*, i32, i32, i32) #1

declare dso_local i32 @drm_plane_create_rotation_property(%struct.drm_plane*, i32, i32) #1

declare dso_local i32 @drm_plane_enable_fb_damage_clips(%struct.drm_plane*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @dpu_hw_sspp_destroy(%struct.TYPE_16__*) #1

declare dso_local i32 @kfree(%struct.dpu_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
