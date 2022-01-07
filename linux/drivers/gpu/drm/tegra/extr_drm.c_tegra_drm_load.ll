; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_tegra_drm_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_tegra_drm_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_7__, %struct.tegra_drm*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32*, i32*, i64, i64 }
%struct.tegra_drm = type { %struct.TYPE_9__*, %struct.TYPE_8__, i32, i32, i64, %struct.drm_device*, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.host1x_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@platform_bus_type = common dso_local global i32 0, align 4
@tegra_drm_mode_config_funcs = common dso_local global i32 0, align 4
@tegra_drm_mode_config_helpers = common dso_local global i32 0, align 4
@CARVEOUT_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"IOMMU apertures:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"  GEM: %#llx-%#llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"  Carveout: %#llx-%#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i64)* @tegra_drm_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_drm_load(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.host1x_device*, align 8
  %7 = alloca %struct.tegra_drm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.host1x_device* @to_host1x_device(i32 %19)
  store %struct.host1x_device* %20, %struct.host1x_device** %6, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.tegra_drm* @kzalloc(i32 56, i32 %21)
  store %struct.tegra_drm* %22, %struct.tegra_drm** %7, align 8
  %23 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %24 = icmp ne %struct.tegra_drm* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %273

28:                                               ; preds = %2
  %29 = call i64 @iommu_present(i32* @platform_bus_type)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = call %struct.TYPE_9__* @iommu_domain_alloc(i32* @platform_bus_type)
  %33 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %34 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %33, i32 0, i32 0
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %34, align 8
  %35 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %36 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %269

42:                                               ; preds = %31
  %43 = call i32 (...) @iova_cache_get()
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %258

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %50 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %49, i32 0, i32 7
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %53 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %52, i32 0, i32 6
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %56 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 3
  store %struct.tegra_drm* %55, %struct.tegra_drm** %57, align 8
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %60 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %59, i32 0, i32 5
  store %struct.drm_device* %58, %struct.drm_device** %60, align 8
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = call i32 @drm_mode_config_init(%struct.drm_device* %61)
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 8
  store i64 0, i64* %65, align 8
  %66 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 7
  store i64 0, i64* %68, align 8
  %69 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 4096, i32* %71, align 8
  %72 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %73 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 4096, i32* %74, align 4
  %75 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %79 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %82 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 6
  store i32* @tegra_drm_mode_config_funcs, i32** %83, align 8
  %84 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %85 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  store i32* @tegra_drm_mode_config_helpers, i32** %86, align 8
  %87 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %88 = call i32 @tegra_drm_fb_prepare(%struct.drm_device* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %48
  br label %238

92:                                               ; preds = %48
  %93 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %94 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %93)
  %95 = load %struct.host1x_device*, %struct.host1x_device** %6, align 8
  %96 = call i32 @host1x_device_init(%struct.host1x_device* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %233

100:                                              ; preds = %92
  %101 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %102 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = icmp ne %struct.TYPE_9__* %103, null
  br i1 %104, label %105, label %182

105:                                              ; preds = %100
  %106 = load %struct.host1x_device*, %struct.host1x_device** %6, align 8
  %107 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %106, i32 0, i32 0
  %108 = call i32 @dma_get_mask(i32* %107)
  store i32 %108, i32* %13, align 4
  %109 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %110 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = and i32 %114, %115
  store i32 %116, i32* %14, align 4
  %117 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %118 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %117, i32 0, i32 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %122, %123
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @CARVEOUT_SZ, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %15, align 4
  store i32 %131, i32* %10, align 4
  %132 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %133 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @__ffs(i32 %136)
  store i64 %137, i64* %16, align 8
  %138 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %139 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i64, i64* %16, align 8
  %142 = shl i64 1, %141
  %143 = load i32, i32* %9, align 4
  %144 = load i64, i64* %16, align 8
  %145 = trunc i64 %144 to i32
  %146 = ashr i32 %143, %145
  %147 = call i32 @init_iova_domain(i32* %140, i64 %142, i32 %146)
  %148 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %149 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = call i32 @iova_shift(i32* %150)
  %152 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %153 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %157 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = ashr i32 %155, %159
  %161 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %162 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %165 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %164, i32 0, i32 2
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %11, align 4
  %169 = sub nsw i32 %167, %168
  %170 = add nsw i32 %169, 1
  %171 = call i32 @drm_mm_init(i32* %165, i32 %166, i32 %170)
  %172 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %173 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %172, i32 0, i32 3
  %174 = call i32 @mutex_init(i32* %173)
  %175 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %176, i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %105, %100
  %183 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %184 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  %188 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %189 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @tegra_display_hub_prepare(i64 %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %230

195:                                              ; preds = %187
  br label %196

196:                                              ; preds = %195, %182
  %197 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %198 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  %199 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %200 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %199, i32 0, i32 1
  store i32 -1, i32* %200, align 4
  %201 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %202 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %203 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @drm_vblank_init(%struct.drm_device* %201, i32 %205)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %196
  br label %219

210:                                              ; preds = %196
  %211 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %212 = call i32 @drm_mode_config_reset(%struct.drm_device* %211)
  %213 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %214 = call i32 @tegra_drm_fb_init(%struct.drm_device* %213)
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  br label %219

218:                                              ; preds = %210
  store i32 0, i32* %3, align 4
  br label %273

219:                                              ; preds = %217, %209
  %220 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %221 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %226 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @tegra_display_hub_cleanup(i64 %227)
  br label %229

229:                                              ; preds = %224, %219
  br label %230

230:                                              ; preds = %229, %194
  %231 = load %struct.host1x_device*, %struct.host1x_device** %6, align 8
  %232 = call i32 @host1x_device_exit(%struct.host1x_device* %231)
  br label %233

233:                                              ; preds = %230, %99
  %234 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %235 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %234)
  %236 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %237 = call i32 @tegra_drm_fb_free(%struct.drm_device* %236)
  br label %238

238:                                              ; preds = %233, %91
  %239 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %240 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %239)
  %241 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %242 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %241, i32 0, i32 0
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %242, align 8
  %244 = icmp ne %struct.TYPE_9__* %243, null
  br i1 %244, label %245, label %257

245:                                              ; preds = %238
  %246 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %247 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %246, i32 0, i32 3
  %248 = call i32 @mutex_destroy(i32* %247)
  %249 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %250 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %249, i32 0, i32 2
  %251 = call i32 @drm_mm_takedown(i32* %250)
  %252 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %253 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 2
  %255 = call i32 @put_iova_domain(i32* %254)
  %256 = call i32 (...) @iova_cache_put()
  br label %257

257:                                              ; preds = %245, %238
  br label %258

258:                                              ; preds = %257, %46
  %259 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %260 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %259, i32 0, i32 0
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = icmp ne %struct.TYPE_9__* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %265 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %264, i32 0, i32 0
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %265, align 8
  %267 = call i32 @iommu_domain_free(%struct.TYPE_9__* %266)
  br label %268

268:                                              ; preds = %263, %258
  br label %269

269:                                              ; preds = %268, %39
  %270 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %271 = call i32 @kfree(%struct.tegra_drm* %270)
  %272 = load i32, i32* %8, align 4
  store i32 %272, i32* %3, align 4
  br label %273

273:                                              ; preds = %269, %218, %25
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local %struct.host1x_device* @to_host1x_device(i32) #1

declare dso_local %struct.tegra_drm* @kzalloc(i32, i32) #1

declare dso_local i64 @iommu_present(i32*) #1

declare dso_local %struct.TYPE_9__* @iommu_domain_alloc(i32*) #1

declare dso_local i32 @iova_cache_get(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @tegra_drm_fb_prepare(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @host1x_device_init(%struct.host1x_device*) #1

declare dso_local i32 @dma_get_mask(i32*) #1

declare dso_local i64 @__ffs(i32) #1

declare dso_local i32 @init_iova_domain(i32*, i64, i32) #1

declare dso_local i32 @iova_shift(i32*) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @tegra_display_hub_prepare(i64) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @tegra_drm_fb_init(%struct.drm_device*) #1

declare dso_local i32 @tegra_display_hub_cleanup(i64) #1

declare dso_local i32 @host1x_device_exit(%struct.host1x_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @tegra_drm_fb_free(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @drm_mm_takedown(i32*) #1

declare dso_local i32 @put_iova_domain(i32*) #1

declare dso_local i32 @iova_cache_put(...) #1

declare dso_local i32 @iommu_domain_free(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.tegra_drm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
