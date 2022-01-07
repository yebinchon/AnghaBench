; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.etnaviv_drm_private* }
%struct.etnaviv_drm_private = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to enable GPU power domain\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Unknown GPU model\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@chipFeatures_PIPE_VG = common dso_local global i32 0, align 4
@chipFeatures_FE20 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Ignoring GPU with VG and FE2.0\0A\00", align 1
@chipMinorFeatures7_BIT_SECURITY = common dso_local global i32 0, align 4
@chipMinorFeatures10_SECURITY_AHB = common dso_local global i32 0, align 4
@ETNA_SEC_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"GPU reset failed\0A\00", align 1
@chipFeatures_PIPE_3D = common dso_local global i32 0, align 4
@chipMinorFeatures0_MC20 = common dso_local global i32 0, align 4
@PHYS_OFFSET = common dso_local global i64 0, align 8
@SZ_2G = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"Need to move linear window on MC1.0, disabling TS\0A\00", align 1
@chipFeatures_FAST_CLEAR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"could not create command buffer\0A\00", align 1
@ETNA_NR_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_gpu_init(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca %struct.etnaviv_drm_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  %8 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %9 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %8, i32 0, i32 11
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %11, align 8
  store %struct.etnaviv_drm_private* %12, %struct.etnaviv_drm_private** %4, align 8
  %13 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %14 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pm_runtime_get_sync(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %21 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %236

25:                                               ; preds = %1
  %26 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %27 = call i32 @etnaviv_hw_identify(%struct.etnaviv_gpu* %26)
  %28 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %29 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %35 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %226

40:                                               ; preds = %25
  %41 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %42 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %41, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @chipFeatures_PIPE_VG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %40
  %49 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %50 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @chipFeatures_FE20, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %58 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_info(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %226

63:                                               ; preds = %48, %40
  %64 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %65 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @chipMinorFeatures7_BIT_SECURITY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %63
  %72 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %73 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %72, i32 0, i32 9
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @chipMinorFeatures10_SECURITY_AHB, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i32, i32* @ETNA_SEC_KERNEL, align 4
  %81 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %82 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %71, %63
  %84 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %85 = call i32 @etnaviv_hw_reset(%struct.etnaviv_gpu* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %90 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %226

93:                                               ; preds = %83
  %94 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %95 = call i32 @etnaviv_iommu_global_init(%struct.etnaviv_gpu* %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %226

99:                                               ; preds = %93
  %100 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %101 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @chipFeatures_PIPE_3D, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %109 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %108, i32 0, i32 9
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @chipMinorFeatures0_MC20, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %107, %99
  %116 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %117 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dma_get_required_mask(i32 %118)
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* @PHYS_OFFSET, align 8
  %123 = load i64, i64* @SZ_2G, align 8
  %124 = add nsw i64 %122, %123
  %125 = icmp slt i64 %121, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %115
  %127 = load i64, i64* @PHYS_OFFSET, align 8
  %128 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %129 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %128, i32 0, i32 1
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i64 %127, i64* %131, align 8
  br label %141

132:                                              ; preds = %115
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* @SZ_2G, align 8
  %135 = sub nsw i64 %133, %134
  %136 = add nsw i64 %135, 1
  %137 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %138 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i64 %136, i64* %140, align 8
  br label %141

141:                                              ; preds = %132, %126
  br label %164

142:                                              ; preds = %107
  %143 = load i64, i64* @PHYS_OFFSET, align 8
  %144 = load i64, i64* @SZ_2G, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %142
  %147 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %148 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @dev_info(i32 %149, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i64, i64* @PHYS_OFFSET, align 8
  %152 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %153 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %152, i32 0, i32 1
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  store i64 %151, i64* %155, align 8
  %156 = load i32, i32* @chipFeatures_FAST_CLEAR, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %159 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %158, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, %157
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %146, %142
  br label %164

164:                                              ; preds = %163, %141
  %165 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %166 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %169 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %168, i32 0, i32 8
  %170 = load i32, i32* @PAGE_SIZE, align 4
  %171 = call i32 @etnaviv_cmdbuf_init(i32 %167, i32* %169, i32 %170)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %164
  %175 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %176 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @dev_err(i32 %177, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %226

179:                                              ; preds = %164
  %180 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %181 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %180, i32 0, i32 7
  %182 = call i32 @spin_lock_init(i32* %181)
  %183 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %184 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %183, i32 0, i32 4
  %185 = call i32 @init_completion(i32* %184)
  %186 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %187 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @ETNA_NR_EVENTS, align 4
  %190 = call i32 @bitmap_zero(i32 %188, i32 %189)
  store i32 0, i32* %6, align 4
  br label %191

191:                                              ; preds = %202, %179
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %194 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @ARRAY_SIZE(i32 %195)
  %197 = icmp slt i32 %192, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %191
  %199 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %200 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %199, i32 0, i32 4
  %201 = call i32 @complete(i32* %200)
  br label %202

202:                                              ; preds = %198
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %191

205:                                              ; preds = %191
  %206 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %207 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %206, i32 0, i32 3
  %208 = call i32 @mutex_lock(i32* %207)
  %209 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %210 = call i32 @etnaviv_gpu_hw_init(%struct.etnaviv_gpu* %209)
  %211 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %212 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %211, i32 0, i32 0
  store i32 -1, i32* %212, align 8
  %213 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %214 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %213, i32 0, i32 3
  %215 = call i32 @mutex_unlock(i32* %214)
  %216 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %217 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @pm_runtime_mark_last_busy(i32 %218)
  %220 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %221 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @pm_runtime_put_autosuspend(i32 %222)
  %224 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %225 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %224, i32 0, i32 1
  store i32 1, i32* %225, align 4
  store i32 0, i32* %2, align 4
  br label %236

226:                                              ; preds = %174, %98, %88, %56, %33
  %227 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %228 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @pm_runtime_mark_last_busy(i32 %229)
  %231 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %232 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @pm_runtime_put_autosuspend(i32 %233)
  %235 = load i32, i32* %5, align 4
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %226, %205, %19
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @etnaviv_hw_identify(%struct.etnaviv_gpu*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @etnaviv_hw_reset(%struct.etnaviv_gpu*) #1

declare dso_local i32 @etnaviv_iommu_global_init(%struct.etnaviv_gpu*) #1

declare dso_local i32 @dma_get_required_mask(i32) #1

declare dso_local i32 @etnaviv_cmdbuf_init(i32, i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @etnaviv_gpu_hw_init(%struct.etnaviv_gpu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
