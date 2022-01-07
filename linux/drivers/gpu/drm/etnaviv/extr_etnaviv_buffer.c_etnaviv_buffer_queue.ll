; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, i32, i64, %struct.etnaviv_iommu_context*, i32, %struct.etnaviv_cmdbuf }
%struct.etnaviv_cmdbuf = type { i32, i32, i32 }
%struct.etnaviv_iommu_context = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@drm_debug = common dso_local global i32 0, align 4
@DRM_UT_DRIVER = common dso_local global i32 0, align 4
@ETNAVIV_IOMMU_V1 = common dso_local global i64 0, align 8
@ETNA_SEC_KERNEL = common dso_local global i64 0, align 8
@VIVS_GL_FLUSH_MMU = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_MMU_FLUSH_FEMMU = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_MMU_FLUSH_UNK1 = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_MMU_FLUSH_UNK2 = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_MMU_FLUSH_PEMMU = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_MMU_FLUSH_UNK4 = common dso_local global i32 0, align 4
@VIVS_MMUv2_CONFIGURATION_MODE_MASK = common dso_local global i32 0, align 4
@VIVS_MMUv2_CONFIGURATION_FLUSH_FLUSH = common dso_local global i32 0, align 4
@VIVS_MMUv2_PTA_CONFIG = common dso_local global i32 0, align 4
@ETNA_SEC_NONE = common dso_local global i64 0, align 8
@VIVS_MMUv2_CONFIGURATION = common dso_local global i32 0, align 4
@SYNC_RECIPIENT_FE = common dso_local global i32 0, align 4
@SYNC_RECIPIENT_PE = common dso_local global i32 0, align 4
@ETNA_PIPE_2D = common dso_local global i64 0, align 8
@VIVS_GL_FLUSH_CACHE = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_CACHE_PE2D = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_CACHE_DEPTH = common dso_local global i32 0, align 4
@VIVS_GL_FLUSH_CACHE_COLOR = common dso_local global i32 0, align 4
@VIVS_TS_FLUSH_CACHE = common dso_local global i32 0, align 4
@VIVS_TS_FLUSH_CACHE_FLUSH = common dso_local global i32 0, align 4
@VIVS_GL_EVENT = common dso_local global i32 0, align 4
@VIVS_GL_EVENT_FROM_PE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"stream link to 0x%08x @ 0x%08x %p\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cmd \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"link op: %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"addr: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"back: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"event: %d\0A\00", align 1
@VIV_FE_LINK_HEADER_OP_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etnaviv_buffer_queue(%struct.etnaviv_gpu* %0, i32 %1, %struct.etnaviv_iommu_context* %2, i32 %3, %struct.etnaviv_cmdbuf* %4) #0 {
  %6 = alloca %struct.etnaviv_gpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.etnaviv_iommu_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.etnaviv_cmdbuf*, align 8
  %11 = alloca %struct.etnaviv_cmdbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.etnaviv_iommu_context*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i16, align 2
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.etnaviv_iommu_context* %2, %struct.etnaviv_iommu_context** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.etnaviv_cmdbuf* %4, %struct.etnaviv_cmdbuf** %10, align 8
  %26 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %27 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %26, i32 0, i32 5
  store %struct.etnaviv_cmdbuf* %27, %struct.etnaviv_cmdbuf** %11, align 8
  %28 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %29 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 16
  store i32 %31, i32* %12, align 4
  %32 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %33 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %39 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %38, i32 0, i32 3
  %40 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %39, align 8
  %41 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %8, align 8
  %42 = icmp ne %struct.etnaviv_iommu_context* %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %18, align 4
  %44 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %45 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %44, i32 0, i32 3
  %46 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %45, align 8
  %47 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @READ_ONCE(i32 %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %5
  %53 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %54 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %55, %56
  br label %58

58:                                               ; preds = %52, %5
  %59 = phi i1 [ true, %5 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %20, align 4
  %61 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %62 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %61, i32 0, i32 4
  %63 = call i32 @lockdep_assert_held(i32* %62)
  %64 = load i32, i32* @drm_debug, align 4
  %65 = load i32, i32* @DRM_UT_DRIVER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %70 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %71 = call i32 @etnaviv_buffer_dump(%struct.etnaviv_gpu* %69, %struct.etnaviv_cmdbuf* %70, i32 0, i32 80)
  br label %72

72:                                               ; preds = %68, %58
  %73 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %10, align 8
  %74 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %75 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %74, i32 0, i32 3
  %76 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %75, align 8
  %77 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %76, i32 0, i32 0
  %78 = call i32 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf* %73, i32* %77)
  store i32 %78, i32* %15, align 4
  %79 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %10, align 8
  %80 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 8
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %246

88:                                               ; preds = %85, %72
  store i32 1, i32* %22, align 4
  %89 = load i32, i32* %20, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %93 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %92, i32 0, i32 3
  %94 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %93, align 8
  %95 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ETNAVIV_IOMMU_V1, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* %22, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %22, align 4
  br label %107

104:                                              ; preds = %91
  %105 = load i32, i32* %22, align 4
  %106 = add nsw i32 %105, 3
  store i32 %106, i32* %22, align 4
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %88
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %22, align 4
  %113 = add nsw i32 %112, 4
  store i32 %113, i32* %22, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %119 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ETNA_SEC_KERNEL, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* %22, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %22, align 4
  br label %126

126:                                              ; preds = %123, %117, %114
  %127 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %128 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %129 = load i32, i32* %22, align 4
  %130 = call i32 @etnaviv_buffer_reserve(%struct.etnaviv_gpu* %127, %struct.etnaviv_cmdbuf* %128, i32 %129)
  store i32 %130, i32* %21, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %126
  %134 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %135 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %134, i32 0, i32 3
  %136 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %135, align 8
  store %struct.etnaviv_iommu_context* %136, %struct.etnaviv_iommu_context** %23, align 8
  %137 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %8, align 8
  %138 = call i32 @etnaviv_iommu_context_get(%struct.etnaviv_iommu_context* %137)
  %139 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %8, align 8
  %140 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %141 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %140, i32 0, i32 3
  store %struct.etnaviv_iommu_context* %139, %struct.etnaviv_iommu_context** %141, align 8
  %142 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %23, align 8
  %143 = call i32 @etnaviv_iommu_context_put(%struct.etnaviv_iommu_context* %142)
  br label %144

144:                                              ; preds = %133, %126
  %145 = load i32, i32* %20, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %222

147:                                              ; preds = %144
  %148 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %149 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %148, i32 0, i32 3
  %150 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %149, align 8
  %151 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %150, i32 0, i32 1
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @ETNAVIV_IOMMU_V1, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %147
  %158 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %159 = load i32, i32* @VIVS_GL_FLUSH_MMU, align 4
  %160 = load i32, i32* @VIVS_GL_FLUSH_MMU_FLUSH_FEMMU, align 4
  %161 = load i32, i32* @VIVS_GL_FLUSH_MMU_FLUSH_UNK1, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @VIVS_GL_FLUSH_MMU_FLUSH_UNK2, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @VIVS_GL_FLUSH_MMU_FLUSH_PEMMU, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @VIVS_GL_FLUSH_MMU_FLUSH_UNK4, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %158, i32 %159, i32 %168)
  br label %218

170:                                              ; preds = %147
  %171 = load i32, i32* @VIVS_MMUv2_CONFIGURATION_MODE_MASK, align 4
  %172 = load i32, i32* @VIVS_MMUv2_CONFIGURATION_FLUSH_FLUSH, align 4
  %173 = or i32 %171, %172
  store i32 %173, i32* %24, align 4
  %174 = load i32, i32* %18, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %170
  %177 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %178 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @ETNA_SEC_KERNEL, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  %183 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %184 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %183, i32 0, i32 3
  %185 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %184, align 8
  %186 = call zeroext i16 @etnaviv_iommuv2_get_pta_id(%struct.etnaviv_iommu_context* %185)
  store i16 %186, i16* %25, align 2
  %187 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %188 = load i32, i32* @VIVS_MMUv2_PTA_CONFIG, align 4
  %189 = load i16, i16* %25, align 2
  %190 = call i32 @VIVS_MMUv2_PTA_CONFIG_INDEX(i16 zeroext %189)
  %191 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %187, i32 %188, i32 %190)
  br label %192

192:                                              ; preds = %182, %176, %170
  %193 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %194 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @ETNA_SEC_NONE, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %192
  %199 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %200 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %199, i32 0, i32 3
  %201 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %200, align 8
  %202 = call i32 @etnaviv_iommuv2_get_mtlb_addr(%struct.etnaviv_iommu_context* %201)
  %203 = load i32, i32* %24, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %24, align 4
  br label %205

205:                                              ; preds = %198, %192
  %206 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %207 = load i32, i32* @VIVS_MMUv2_CONFIGURATION, align 4
  %208 = load i32, i32* %24, align 4
  %209 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %206, i32 %207, i32 %208)
  %210 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %211 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %212 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %213 = call i32 @CMD_SEM(%struct.etnaviv_cmdbuf* %210, i32 %211, i32 %212)
  %214 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %215 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %216 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %217 = call i32 @CMD_STALL(%struct.etnaviv_cmdbuf* %214, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %205, %157
  %219 = load i32, i32* %19, align 4
  %220 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %221 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %218, %144
  %223 = load i32, i32* %17, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %222
  %226 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %227 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @etnaviv_cmd_select_pipe(%struct.etnaviv_gpu* %226, %struct.etnaviv_cmdbuf* %227, i32 %228)
  %230 = load i32, i32* %7, align 4
  %231 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %232 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %225, %222
  %234 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %10, align 8
  %235 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %236 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %235, i32 0, i32 3
  %237 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %236, align 8
  %238 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %237, i32 0, i32 0
  %239 = call i32 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf* %234, i32* %238)
  store i32 %239, i32* %15, align 4
  %240 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %15, align 4
  %243 = call i32 @CMD_LINK(%struct.etnaviv_cmdbuf* %240, i32 %241, i32 %242)
  %244 = load i32, i32* %21, align 4
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* %22, align 4
  store i32 %245, i32* %16, align 4
  br label %246

246:                                              ; preds = %233, %85
  store i32 7, i32* %14, align 4
  %247 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %248 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %249 = load i32, i32* %14, align 4
  %250 = call i32 @etnaviv_buffer_reserve(%struct.etnaviv_gpu* %247, %struct.etnaviv_cmdbuf* %248, i32 %249)
  store i32 %250, i32* %13, align 4
  %251 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %10, align 8
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %13, align 4
  %254 = call i32 @CMD_LINK(%struct.etnaviv_cmdbuf* %251, i32 %252, i32 %253)
  %255 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %256 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = load i64, i64* @ETNA_PIPE_2D, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %246
  %262 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %263 = load i32, i32* @VIVS_GL_FLUSH_CACHE, align 4
  %264 = load i32, i32* @VIVS_GL_FLUSH_CACHE_PE2D, align 4
  %265 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %262, i32 %263, i32 %264)
  br label %277

266:                                              ; preds = %246
  %267 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %268 = load i32, i32* @VIVS_GL_FLUSH_CACHE, align 4
  %269 = load i32, i32* @VIVS_GL_FLUSH_CACHE_DEPTH, align 4
  %270 = load i32, i32* @VIVS_GL_FLUSH_CACHE_COLOR, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %267, i32 %268, i32 %271)
  %273 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %274 = load i32, i32* @VIVS_TS_FLUSH_CACHE, align 4
  %275 = load i32, i32* @VIVS_TS_FLUSH_CACHE_FLUSH, align 4
  %276 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %273, i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %266, %261
  %278 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %279 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %280 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %281 = call i32 @CMD_SEM(%struct.etnaviv_cmdbuf* %278, i32 %279, i32 %280)
  %282 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %283 = load i32, i32* @SYNC_RECIPIENT_FE, align 4
  %284 = load i32, i32* @SYNC_RECIPIENT_PE, align 4
  %285 = call i32 @CMD_STALL(%struct.etnaviv_cmdbuf* %282, i32 %283, i32 %284)
  %286 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %287 = load i32, i32* @VIVS_GL_EVENT, align 4
  %288 = load i32, i32* %9, align 4
  %289 = call i32 @VIVS_GL_EVENT_EVENT_ID(i32 %288)
  %290 = load i32, i32* @VIVS_GL_EVENT_FROM_PE, align 4
  %291 = or i32 %289, %290
  %292 = call i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf* %286, i32 %287, i32 %291)
  %293 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %294 = call i32 @CMD_WAIT(%struct.etnaviv_cmdbuf* %293)
  %295 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %296 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %297 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %298 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %297, i32 0, i32 3
  %299 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %298, align 8
  %300 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %299, i32 0, i32 0
  %301 = call i32 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf* %296, i32* %300)
  %302 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %303 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %301, %304
  %306 = sub nsw i32 %305, 4
  %307 = call i32 @CMD_LINK(%struct.etnaviv_cmdbuf* %295, i32 2, i32 %306)
  %308 = load i32, i32* @drm_debug, align 4
  %309 = load i32, i32* @DRM_UT_DRIVER, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %324

312:                                              ; preds = %277
  %313 = load i32, i32* %13, align 4
  %314 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %10, align 8
  %315 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %316 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %315, i32 0, i32 3
  %317 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %316, align 8
  %318 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %317, i32 0, i32 0
  %319 = call i32 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf* %314, i32* %318)
  %320 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %10, align 8
  %321 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %313, i32 %319, i32 %322)
  br label %324

324:                                              ; preds = %312, %277
  %325 = load i32, i32* @drm_debug, align 4
  %326 = load i32, i32* @DRM_UT_DRIVER, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %351

329:                                              ; preds = %324
  %330 = load i32, i32* @KERN_INFO, align 4
  %331 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %332 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %10, align 8
  %333 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %10, align 8
  %336 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @print_hex_dump(i32 %330, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %331, i32 16, i32 4, i32 %334, i32 %337, i32 0)
  %339 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %340 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %12, align 4
  %343 = add i32 %341, %342
  %344 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %343)
  %345 = load i32, i32* %15, align 4
  %346 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %345)
  %347 = load i32, i32* %13, align 4
  %348 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %347)
  %349 = load i32, i32* %9, align 4
  %350 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %349)
  br label %351

351:                                              ; preds = %329, %324
  %352 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %353 = load i32, i32* %12, align 4
  %354 = load i32, i32* @VIV_FE_LINK_HEADER_OP_LINK, align 4
  %355 = load i32, i32* %16, align 4
  %356 = call i32 @VIV_FE_LINK_HEADER_PREFETCH(i32 %355)
  %357 = or i32 %354, %356
  %358 = load i32, i32* %15, align 4
  %359 = call i32 @etnaviv_buffer_replace_wait(%struct.etnaviv_cmdbuf* %352, i32 %353, i32 %357, i32 %358)
  %360 = load i32, i32* @drm_debug, align 4
  %361 = load i32, i32* @DRM_UT_DRIVER, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %351
  %365 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %6, align 8
  %366 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %11, align 8
  %367 = call i32 @etnaviv_buffer_dump(%struct.etnaviv_gpu* %365, %struct.etnaviv_cmdbuf* %366, i32 0, i32 80)
  br label %368

368:                                              ; preds = %364, %351
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @etnaviv_buffer_dump(%struct.etnaviv_gpu*, %struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf*, i32*) #1

declare dso_local i32 @etnaviv_buffer_reserve(%struct.etnaviv_gpu*, %struct.etnaviv_cmdbuf*, i32) #1

declare dso_local i32 @etnaviv_iommu_context_get(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @etnaviv_iommu_context_put(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @CMD_LOAD_STATE(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local zeroext i16 @etnaviv_iommuv2_get_pta_id(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @VIVS_MMUv2_PTA_CONFIG_INDEX(i16 zeroext) #1

declare dso_local i32 @etnaviv_iommuv2_get_mtlb_addr(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @CMD_SEM(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @CMD_STALL(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @etnaviv_cmd_select_pipe(%struct.etnaviv_gpu*, %struct.etnaviv_cmdbuf*, i32) #1

declare dso_local i32 @CMD_LINK(%struct.etnaviv_cmdbuf*, i32, i32) #1

declare dso_local i32 @VIVS_GL_EVENT_EVENT_ID(i32) #1

declare dso_local i32 @CMD_WAIT(%struct.etnaviv_cmdbuf*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @etnaviv_buffer_replace_wait(%struct.etnaviv_cmdbuf*, i32, i32, i32) #1

declare dso_local i32 @VIV_FE_LINK_HEADER_PREFETCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
