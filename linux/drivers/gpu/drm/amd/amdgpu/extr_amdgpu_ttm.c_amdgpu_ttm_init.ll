; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.sysinfo = type { i32, i64 }

@amdgpu_bo_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed initializing buffer object driver(%d).\0A\00", align 1
@TTM_PL_VRAM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed initializing VRAM heap.\0A\00", align 1
@amdgpu_vis_vram_limit = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"amdgpu: %uM of VRAM memory ready\0A\00", align 1
@amdgpu_gtt_size = common dso_local global i32 0, align 4
@AMDGPU_DEFAULT_GTT_SIZE_MB = common dso_local global i32 0, align 4
@TTM_PL_TT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed initializing GTT heap.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"amdgpu: %uM of GTT memory ready.\0A\00", align 1
@AMDGPU_PL_GDS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed initializing GDS heap.\0A\00", align 1
@AMDGPU_PL_GWS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed initializing gws heap.\0A\00", align 1
@AMDGPU_PL_OA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed initializing oa heap.\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Failed to init debugfs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ttm_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sysinfo, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 5
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dma_addressing_limited(i32 %25)
  %27 = call i32 @ttm_bo_device_init(%struct.TYPE_13__* %15, i32* @amdgpu_bo_driver, i32 %22, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %202

34:                                               ; preds = %1
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* @TTM_PL_VRAM, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = call i32 @ttm_bo_init_mm(%struct.TYPE_13__* %44, i32 %45, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %34
  %56 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %202

58:                                               ; preds = %34
  %59 = load i64, i64* @amdgpu_vis_vram_limit, align 8
  %60 = trunc i64 %59 to i32
  %61 = mul nsw i32 %60, 1024
  %62 = mul nsw i32 %61, 1024
  store i32 %62, i32* %6, align 4
  %63 = load i64, i64* @amdgpu_vis_vram_limit, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %66, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %65, %58
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = call i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device* %78, i32 0)
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = call i32 @amdgpu_ttm_fw_reserve_vram_init(%struct.amdgpu_device* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %202

86:                                               ; preds = %77
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 3
  %96 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %87, i32 %91, i32 %92, i32 %93, i32* %95, i32* null, i8** %7)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %202

101:                                              ; preds = %86
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sdiv i32 %105, 1048576
  %107 = call i32 @DRM_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @amdgpu_gtt_size, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %128

110:                                              ; preds = %101
  %111 = call i32 @si_meminfo(%struct.sysinfo* %8)
  %112 = load i32, i32* @AMDGPU_DEFAULT_GTT_SIZE_MB, align 4
  %113 = shl i32 %112, 20
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @max(i32 %113, i32 %117)
  %119 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %8, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %8, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %121, %123
  %125 = mul nsw i32 %124, 3
  %126 = sdiv i32 %125, 4
  %127 = call i32 @min(i32 %118, i32 %126)
  store i32 %127, i32* %4, align 4
  br label %131

128:                                              ; preds = %101
  %129 = load i32, i32* @amdgpu_gtt_size, align 4
  %130 = shl i32 %129, 20
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %110
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* @TTM_PL_TT, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @PAGE_SHIFT, align 4
  %138 = ashr i32 %136, %137
  %139 = call i32 @ttm_bo_init_mm(%struct.TYPE_13__* %134, i32 %135, i32 %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %131
  %143 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %202

145:                                              ; preds = %131
  %146 = load i32, i32* %4, align 4
  %147 = sdiv i32 %146, 1048576
  %148 = call i32 @DRM_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %150 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* @AMDGPU_PL_GDS, align 4
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @ttm_bo_init_mm(%struct.TYPE_13__* %151, i32 %152, i32 %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %145
  %161 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* %5, align 4
  store i32 %162, i32* %2, align 4
  br label %202

163:                                              ; preds = %145
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %165 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i32, i32* @AMDGPU_PL_GWS, align 4
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ttm_bo_init_mm(%struct.TYPE_13__* %166, i32 %167, i32 %171)
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %177 = load i32, i32* %5, align 4
  store i32 %177, i32* %2, align 4
  br label %202

178:                                              ; preds = %163
  %179 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %180 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i32, i32* @AMDGPU_PL_OA, align 4
  %183 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %184 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @ttm_bo_init_mm(%struct.TYPE_13__* %181, i32 %182, i32 %186)
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %178
  %191 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %202

193:                                              ; preds = %178
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %195 = call i32 @amdgpu_ttm_debugfs_init(%struct.amdgpu_device* %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %200 = load i32, i32* %5, align 4
  store i32 %200, i32* %2, align 4
  br label %202

201:                                              ; preds = %193
  store i32 0, i32* %2, align 4
  br label %202

202:                                              ; preds = %201, %198, %190, %175, %160, %142, %99, %84, %55, %30
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ttm_bo_device_init(%struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i32 @dma_addressing_limited(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @ttm_bo_init_mm(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ttm_fw_reserve_vram_init(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i8**) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @amdgpu_ttm_debugfs_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
