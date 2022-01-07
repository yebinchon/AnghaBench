; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_kms_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_kms_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.dpu_kms = type { i32, %struct.TYPE_28__*, i32, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__**, %struct.TYPE_27__**, %struct.TYPE_27__*, i32, i32, i8*, %struct.TYPE_27__*, i8**, i8*, i32, %struct.drm_device* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.drm_device = type { %struct.TYPE_26__, %struct.msm_drm_private* }
%struct.TYPE_26__ = type { i32, i32, i32, i64, i64 }
%struct.msm_drm_private = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"invalid kms\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid device\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid private data\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mdp\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"mdp register memory map failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"mapped dpu address space @%pK\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vbif\00", align 1
@VBIF_RT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"vbif register memory map failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"vbif_nrt\00", align 1
@VBIF_NRT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"VBIF NRT is not defined\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"regdma\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"REG_DMA is not defined\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"dpu hardware revision:0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"catalog init failed: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"dpu_kms_mmu_init failed: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"rm init failed: %d\0A\00", align 1
@MDP_TOP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"failed to get hw_mdp: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"failed to init vbif %d: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"failed to init perf %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"hw_intr init failed: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"modeset init failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_kms*)* @dpu_kms_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_kms_hw_init(%struct.msm_kms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_kms*, align 8
  %4 = alloca %struct.dpu_kms*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.msm_kms* %0, %struct.msm_kms** %3, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %13 = icmp ne %struct.msm_kms* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %2, align 4
  br label %440

17:                                               ; preds = %1
  %18 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %19 = call %struct.dpu_kms* @to_dpu_kms(%struct.msm_kms* %18)
  store %struct.dpu_kms* %19, %struct.dpu_kms** %4, align 8
  %20 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %21 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %20, i32 0, i32 16
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %5, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = icmp ne %struct.drm_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %440

28:                                               ; preds = %17
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 1
  %31 = load %struct.msm_drm_private*, %struct.msm_drm_private** %30, align 8
  store %struct.msm_drm_private* %31, %struct.msm_drm_private** %6, align 8
  %32 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %33 = icmp ne %struct.msm_drm_private* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %440

37:                                               ; preds = %28
  %38 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %39 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %38, i32 0, i32 15
  %40 = call i32 @atomic_set(i32* %39, i32 0)
  %41 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %42 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %41, i32 0, i32 1
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  %44 = call i8* @msm_ioremap(%struct.TYPE_28__* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %45 = bitcast i8* %44 to %struct.TYPE_27__*
  %46 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %47 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %46, i32 0, i32 5
  store %struct.TYPE_27__* %45, %struct.TYPE_27__** %47, align 8
  %48 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %49 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %48, i32 0, i32 5
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %49, align 8
  %51 = call i64 @IS_ERR(%struct.TYPE_27__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %37
  %54 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %55 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %54, i32 0, i32 5
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.TYPE_27__* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %61 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %60, i32 0, i32 5
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %61, align 8
  br label %436

62:                                               ; preds = %37
  %63 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %64 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %63, i32 0, i32 5
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %64, align 8
  %66 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_27__* %65)
  %67 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %68 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %67, i32 0, i32 1
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %68, align 8
  %70 = call i8* @dpu_iomap_size(%struct.TYPE_28__* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %72 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %71, i32 0, i32 14
  store i8* %70, i8** %72, align 8
  %73 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %74 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %73, i32 0, i32 1
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %74, align 8
  %76 = call i8* @msm_ioremap(%struct.TYPE_28__* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %77 = bitcast i8* %76 to %struct.TYPE_27__*
  %78 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %79 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %78, i32 0, i32 7
  %80 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %79, align 8
  %81 = load i64, i64* @VBIF_RT, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %80, i64 %81
  store %struct.TYPE_27__* %77, %struct.TYPE_27__** %82, align 8
  %83 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %84 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %83, i32 0, i32 7
  %85 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %84, align 8
  %86 = load i64, i64* @VBIF_RT, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %85, i64 %86
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %87, align 8
  %89 = call i64 @IS_ERR(%struct.TYPE_27__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %62
  %92 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %93 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %92, i32 0, i32 7
  %94 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %93, align 8
  %95 = load i64, i64* @VBIF_RT, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %94, i64 %95
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %96, align 8
  %98 = call i32 @PTR_ERR(%struct.TYPE_27__* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %102 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %101, i32 0, i32 7
  %103 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %102, align 8
  %104 = load i64, i64* @VBIF_RT, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %103, i64 %104
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %105, align 8
  br label %436

106:                                              ; preds = %62
  %107 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %108 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %107, i32 0, i32 1
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %108, align 8
  %110 = call i8* @dpu_iomap_size(%struct.TYPE_28__* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %111 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %112 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %111, i32 0, i32 13
  %113 = load i8**, i8*** %112, align 8
  %114 = load i64, i64* @VBIF_RT, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  store i8* %110, i8** %115, align 8
  %116 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %117 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %116, i32 0, i32 1
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %117, align 8
  %119 = call i8* @msm_ioremap(%struct.TYPE_28__* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %120 = bitcast i8* %119 to %struct.TYPE_27__*
  %121 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %122 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %121, i32 0, i32 7
  %123 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %122, align 8
  %124 = load i64, i64* @VBIF_NRT, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %123, i64 %124
  store %struct.TYPE_27__* %120, %struct.TYPE_27__** %125, align 8
  %126 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %127 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %126, i32 0, i32 7
  %128 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %127, align 8
  %129 = load i64, i64* @VBIF_NRT, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %128, i64 %129
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %130, align 8
  %132 = call i64 @IS_ERR(%struct.TYPE_27__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %106
  %135 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %136 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %135, i32 0, i32 7
  %137 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %136, align 8
  %138 = load i64, i64* @VBIF_NRT, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %137, i64 %138
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %139, align 8
  %140 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %151

141:                                              ; preds = %106
  %142 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %143 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %142, i32 0, i32 1
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %143, align 8
  %145 = call i8* @dpu_iomap_size(%struct.TYPE_28__* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %146 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %147 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %146, i32 0, i32 13
  %148 = load i8**, i8*** %147, align 8
  %149 = load i64, i64* @VBIF_NRT, align 8
  %150 = getelementptr inbounds i8*, i8** %148, i64 %149
  store i8* %145, i8** %150, align 8
  br label %151

151:                                              ; preds = %141, %134
  %152 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %153 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %152, i32 0, i32 1
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %153, align 8
  %155 = call i8* @msm_ioremap(%struct.TYPE_28__* %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %156 = bitcast i8* %155 to %struct.TYPE_27__*
  %157 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %158 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %157, i32 0, i32 12
  store %struct.TYPE_27__* %156, %struct.TYPE_27__** %158, align 8
  %159 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %160 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %159, i32 0, i32 12
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %160, align 8
  %162 = call i64 @IS_ERR(%struct.TYPE_27__* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %151
  %165 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %166 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %165, i32 0, i32 12
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %166, align 8
  %167 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %175

168:                                              ; preds = %151
  %169 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %170 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %169, i32 0, i32 1
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %170, align 8
  %172 = call i8* @dpu_iomap_size(%struct.TYPE_28__* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %173 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %174 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %173, i32 0, i32 11
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %168, %164
  %176 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %177 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %176, i32 0, i32 1
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 0
  %180 = call i32 @pm_runtime_get_sync(i32* %179)
  %181 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %182 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %181, i32 0, i32 5
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i64 0
  %185 = call i32 @readl_relaxed(%struct.TYPE_27__* %184)
  %186 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %187 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %186, i32 0, i32 10
  store i32 %185, i32* %187, align 4
  %188 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %189 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %188, i32 0, i32 10
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %190)
  %192 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %193 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %192, i32 0, i32 10
  %194 = load i32, i32* %193, align 4
  %195 = call %struct.TYPE_27__* @dpu_hw_catalog_init(i32 %194)
  %196 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %197 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %196, i32 0, i32 3
  store %struct.TYPE_27__* %195, %struct.TYPE_27__** %197, align 8
  %198 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %199 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %198, i32 0, i32 3
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %199, align 8
  %201 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_27__* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %220

203:                                              ; preds = %175
  %204 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %205 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %204, i32 0, i32 3
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %205, align 8
  %207 = call i32 @PTR_ERR(%struct.TYPE_27__* %206)
  store i32 %207, i32* %8, align 4
  %208 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %209 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %208, i32 0, i32 3
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %209, align 8
  %211 = icmp ne %struct.TYPE_27__* %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %203
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %212, %203
  %216 = load i32, i32* %8, align 4
  %217 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %216)
  %218 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %219 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %218, i32 0, i32 3
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %219, align 8
  br label %430

220:                                              ; preds = %175
  %221 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %222 = call i32 @_dpu_kms_mmu_init(%struct.dpu_kms* %221)
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load i32, i32* %8, align 4
  %227 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %226)
  br label %430

228:                                              ; preds = %220
  %229 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %230 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %229, i32 0, i32 9
  %231 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %232 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %231, i32 0, i32 3
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %232, align 8
  %234 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %235 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %234, i32 0, i32 5
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %235, align 8
  %237 = call i32 @dpu_rm_init(i32* %230, %struct.TYPE_27__* %233, %struct.TYPE_27__* %236)
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %228
  %241 = load i32, i32* %8, align 4
  %242 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %241)
  br label %430

243:                                              ; preds = %228
  %244 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %245 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %244, i32 0, i32 0
  store i32 1, i32* %245, align 8
  %246 = load i32, i32* @MDP_TOP, align 4
  %247 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %248 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %247, i32 0, i32 5
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %248, align 8
  %250 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %251 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %250, i32 0, i32 3
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %251, align 8
  %253 = call %struct.TYPE_27__* @dpu_hw_mdptop_init(i32 %246, %struct.TYPE_27__* %249, %struct.TYPE_27__* %252)
  %254 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %255 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %254, i32 0, i32 8
  store %struct.TYPE_27__* %253, %struct.TYPE_27__** %255, align 8
  %256 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %257 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %256, i32 0, i32 8
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %257, align 8
  %259 = call i64 @IS_ERR(%struct.TYPE_27__* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %243
  %262 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %263 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %262, i32 0, i32 8
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %263, align 8
  %265 = call i32 @PTR_ERR(%struct.TYPE_27__* %264)
  store i32 %265, i32* %8, align 4
  %266 = load i32, i32* %8, align 4
  %267 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %266)
  %268 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %269 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %268, i32 0, i32 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %269, align 8
  br label %430

270:                                              ; preds = %243
  store i32 0, i32* %7, align 4
  br label %271

271:                                              ; preds = %343, %270
  %272 = load i32, i32* %7, align 4
  %273 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %274 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %273, i32 0, i32 3
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp slt i32 %272, %277
  br i1 %278, label %279, label %346

279:                                              ; preds = %271
  %280 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %281 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %280, i32 0, i32 3
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %283, align 8
  %285 = load i32, i32* %7, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %9, align 8
  %290 = load i64, i64* %9, align 8
  %291 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %292 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %291, i32 0, i32 7
  %293 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %292, align 8
  %294 = load i64, i64* %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %293, i64 %294
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %295, align 8
  %297 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %298 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %297, i32 0, i32 3
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %298, align 8
  %300 = call %struct.TYPE_27__* @dpu_hw_vbif_init(i64 %290, %struct.TYPE_27__* %296, %struct.TYPE_27__* %299)
  %301 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %302 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %301, i32 0, i32 6
  %303 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %303, i64 %305
  store %struct.TYPE_27__* %300, %struct.TYPE_27__** %306, align 8
  %307 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %308 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %307, i32 0, i32 6
  %309 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %308, align 8
  %310 = load i64, i64* %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %309, i64 %310
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %311, align 8
  %313 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_27__* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %342

315:                                              ; preds = %279
  %316 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %317 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %316, i32 0, i32 6
  %318 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %317, align 8
  %319 = load i64, i64* %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %318, i64 %319
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %320, align 8
  %322 = call i32 @PTR_ERR(%struct.TYPE_27__* %321)
  store i32 %322, i32* %8, align 4
  %323 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %324 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %323, i32 0, i32 6
  %325 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %324, align 8
  %326 = load i64, i64* %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %325, i64 %326
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %327, align 8
  %329 = icmp ne %struct.TYPE_27__* %328, null
  br i1 %329, label %333, label %330

330:                                              ; preds = %315
  %331 = load i32, i32* @EINVAL, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %8, align 4
  br label %333

333:                                              ; preds = %330, %315
  %334 = load i64, i64* %9, align 8
  %335 = load i32, i32* %8, align 4
  %336 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i64 %334, i32 %335)
  %337 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %338 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %337, i32 0, i32 6
  %339 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %338, align 8
  %340 = load i64, i64* %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %339, i64 %340
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %341, align 8
  br label %430

342:                                              ; preds = %279
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %7, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %7, align 4
  br label %271

346:                                              ; preds = %271
  %347 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %348 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %347, i32 0, i32 2
  %349 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %350 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %351 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %350, i32 0, i32 3
  %352 = load %struct.TYPE_27__*, %struct.TYPE_27__** %351, align 8
  %353 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %354 = call i32 @_dpu_kms_get_clk(%struct.dpu_kms* %353, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %355 = call i32 @dpu_core_perf_init(i32* %348, %struct.drm_device* %349, %struct.TYPE_27__* %352, i32 %354)
  store i32 %355, i32* %8, align 4
  %356 = load i32, i32* %8, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %346
  %359 = load i32, i32* %8, align 4
  %360 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %359)
  br label %429

361:                                              ; preds = %346
  %362 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %363 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %362, i32 0, i32 5
  %364 = load %struct.TYPE_27__*, %struct.TYPE_27__** %363, align 8
  %365 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %366 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %365, i32 0, i32 3
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %366, align 8
  %368 = call %struct.TYPE_27__* @dpu_hw_intr_init(%struct.TYPE_27__* %364, %struct.TYPE_27__* %367)
  %369 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %370 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %369, i32 0, i32 4
  store %struct.TYPE_27__* %368, %struct.TYPE_27__** %370, align 8
  %371 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %372 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %371, i32 0, i32 4
  %373 = load %struct.TYPE_27__*, %struct.TYPE_27__** %372, align 8
  %374 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_27__* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %385

376:                                              ; preds = %361
  %377 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %378 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %377, i32 0, i32 4
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %378, align 8
  %380 = call i32 @PTR_ERR(%struct.TYPE_27__* %379)
  store i32 %380, i32* %8, align 4
  %381 = load i32, i32* %8, align 4
  %382 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %381)
  %383 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %384 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %383, i32 0, i32 4
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %384, align 8
  br label %428

385:                                              ; preds = %361
  %386 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %387 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %387, i32 0, i32 4
  store i64 0, i64* %388, align 8
  %389 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %390 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %390, i32 0, i32 3
  store i64 0, i64* %391, align 8
  %392 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %393 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %392, i32 0, i32 3
  %394 = load %struct.TYPE_27__*, %struct.TYPE_27__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_25__*, %struct.TYPE_25__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = mul nsw i32 %398, 2
  %400 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %401 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %401, i32 0, i32 0
  store i32 %399, i32* %402, align 8
  %403 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %404 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %404, i32 0, i32 1
  store i32 4096, i32* %405, align 4
  %406 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %407 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %407, i32 0, i32 2
  store i32 1, i32* %408, align 8
  %409 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %410 = call i32 @_dpu_kms_drm_obj_init(%struct.dpu_kms* %409)
  store i32 %410, i32* %8, align 4
  %411 = load i32, i32* %8, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %385
  %414 = load i32, i32* %8, align 4
  %415 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 %414)
  br label %424

416:                                              ; preds = %385
  %417 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %418 = call i32 @dpu_vbif_init_memtypes(%struct.dpu_kms* %417)
  %419 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %420 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %419, i32 0, i32 1
  %421 = load %struct.TYPE_28__*, %struct.TYPE_28__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %421, i32 0, i32 0
  %423 = call i32 @pm_runtime_put_sync(i32* %422)
  store i32 0, i32* %2, align 4
  br label %440

424:                                              ; preds = %413
  %425 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %426 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %425, i32 0, i32 2
  %427 = call i32 @dpu_core_perf_destroy(i32* %426)
  br label %428

428:                                              ; preds = %424, %376
  br label %429

429:                                              ; preds = %428, %358
  br label %430

430:                                              ; preds = %429, %333, %261, %240, %225, %215
  %431 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %432 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %431, i32 0, i32 1
  %433 = load %struct.TYPE_28__*, %struct.TYPE_28__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %433, i32 0, i32 0
  %435 = call i32 @pm_runtime_put_sync(i32* %434)
  br label %436

436:                                              ; preds = %430, %91, %53
  %437 = load %struct.dpu_kms*, %struct.dpu_kms** %4, align 8
  %438 = call i32 @_dpu_kms_hw_destroy(%struct.dpu_kms* %437)
  %439 = load i32, i32* %8, align 4
  store i32 %439, i32* %2, align 4
  br label %440

440:                                              ; preds = %436, %416, %34, %25, %14
  %441 = load i32, i32* %2, align 4
  ret i32 %441
}

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local %struct.dpu_kms* @to_dpu_kms(%struct.msm_kms*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @msm_ioremap(%struct.TYPE_28__*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_27__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_27__*) #1

declare dso_local i32 @DRM_DEBUG(i8*, %struct.TYPE_27__*) #1

declare dso_local i8* @dpu_iomap_size(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @DPU_DEBUG(i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @readl_relaxed(%struct.TYPE_27__*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.TYPE_27__* @dpu_hw_catalog_init(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.TYPE_27__*) #1

declare dso_local i32 @_dpu_kms_mmu_init(%struct.dpu_kms*) #1

declare dso_local i32 @dpu_rm_init(i32*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @dpu_hw_mdptop_init(i32, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @dpu_hw_vbif_init(i64, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @dpu_core_perf_init(i32*, %struct.drm_device*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @_dpu_kms_get_clk(%struct.dpu_kms*, i8*) #1

declare dso_local %struct.TYPE_27__* @dpu_hw_intr_init(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @_dpu_kms_drm_obj_init(%struct.dpu_kms*) #1

declare dso_local i32 @dpu_vbif_init_memtypes(%struct.dpu_kms*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @dpu_core_perf_destroy(i32*) #1

declare dso_local i32 @_dpu_kms_hw_destroy(%struct.dpu_kms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
