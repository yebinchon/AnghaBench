; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.msm_gpu = type { i32, i8**, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8**, i32, i32, %struct.platform_device*, i32, i32, i32, i32, i32, %struct.msm_gpu_funcs*, %struct.drm_device* }
%struct.msm_gpu_funcs = type { i32 }
%struct.msm_gpu_config = type { i32, i32, i32, i32 }

@retire_worker = common dso_local global i32 0, align 4
@recover_worker = common dso_local global i32 0, align 4
@hangcheck_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to get irq: %d\0A\00", align 1
@irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to request IRQ%u: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ebi1_clk: %p\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gpu_reg: %p\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"vddcx\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"gpu_cx: %p\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"%s: no IOMMU, fallback to VRAM carveout!\0A\00", align 1
@MSM_BO_UNCACHED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"could not allocate memptrs: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"memptrs\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Only creating %zu ringbuffers\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"could not create ringbuffer %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gpu_init(%struct.drm_device* %0, %struct.platform_device* %1, %struct.msm_gpu* %2, %struct.msm_gpu_funcs* %3, i8* %4, %struct.msm_gpu_config* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.msm_gpu*, align 8
  %11 = alloca %struct.msm_gpu_funcs*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.msm_gpu_config*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store %struct.platform_device* %1, %struct.platform_device** %9, align 8
  store %struct.msm_gpu* %2, %struct.msm_gpu** %10, align 8
  store %struct.msm_gpu_funcs* %3, %struct.msm_gpu_funcs** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.msm_gpu_config* %5, %struct.msm_gpu_config** %13, align 8
  %19 = load %struct.msm_gpu_config*, %struct.msm_gpu_config** %13, align 8
  %20 = getelementptr inbounds %struct.msm_gpu_config, %struct.msm_gpu_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %23 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %26 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = call i32 @ARRAY_SIZE(i8** %27)
  %29 = icmp sgt i32 %24, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %6
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %35 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = call i32 @ARRAY_SIZE(i8** %36)
  %38 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %39 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %33, %6
  %41 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %42 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %43 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %42, i32 0, i32 19
  store %struct.drm_device* %41, %struct.drm_device** %43, align 8
  %44 = load %struct.msm_gpu_funcs*, %struct.msm_gpu_funcs** %11, align 8
  %45 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %46 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %45, i32 0, i32 18
  store %struct.msm_gpu_funcs* %44, %struct.msm_gpu_funcs** %46, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %49 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %51 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %50, i32 0, i32 17
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %54 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %53, i32 0, i32 16
  %55 = load i32, i32* @retire_worker, align 4
  %56 = call i32 @INIT_WORK(i32* %54, i32 %55)
  %57 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %58 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %57, i32 0, i32 15
  %59 = load i32, i32* @recover_worker, align 4
  %60 = call i32 @INIT_WORK(i32* %58, i32 %59)
  %61 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %62 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %61, i32 0, i32 14
  %63 = load i32, i32* @hangcheck_handler, align 4
  %64 = call i32 @timer_setup(i32* %62, i32 %63, i32 0)
  %65 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %66 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %65, i32 0, i32 13
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %69 = load %struct.msm_gpu_config*, %struct.msm_gpu_config** %13, align 8
  %70 = getelementptr inbounds %struct.msm_gpu_config, %struct.msm_gpu_config* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = call i8* @msm_ioremap(%struct.platform_device* %68, i32 %71, i8* %72)
  %74 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %75 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %77 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @IS_ERR(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %40
  %82 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %83 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @PTR_ERR(i8* %84)
  store i32 %85, i32* %15, align 4
  br label %333

86:                                               ; preds = %40
  %87 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %88 = call i32 @platform_get_irq(%struct.platform_device* %87, i32 0)
  %89 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %90 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %92 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %97 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %15, align 4
  %99 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %100 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 (i32, i8*, i32, ...) @DRM_DEV_ERROR(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %333

104:                                              ; preds = %86
  %105 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %108 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @irq_handler, align 4
  %111 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %112 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %113 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %116 = call i32 @devm_request_irq(i32* %106, i32 %109, i32 %110, i32 %111, i8* %114, %struct.msm_gpu* %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %104
  %120 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %121 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %124 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 (i32, i8*, i32, ...) @DRM_DEV_ERROR(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126)
  br label %333

128:                                              ; preds = %104
  %129 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %130 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %131 = call i32 @get_clocks(%struct.platform_device* %129, %struct.msm_gpu* %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %333

135:                                              ; preds = %128
  %136 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %137 = call i8* @msm_clk_get(%struct.platform_device* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %139 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %138, i32 0, i32 5
  store i8* %137, i8** %139, align 8
  %140 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %141 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %140, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %142)
  %144 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %145 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %144, i32 0, i32 5
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @IS_ERR(i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %135
  %150 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %151 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %150, i32 0, i32 5
  store i8* null, i8** %151, align 8
  br label %152

152:                                              ; preds = %149, %135
  %153 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i8* @devm_regulator_get(i32* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %156 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %157 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %156, i32 0, i32 6
  store i8* %155, i8** %157, align 8
  %158 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %159 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %158, i32 0, i32 6
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %160)
  %162 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %163 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %162, i32 0, i32 6
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @IS_ERR(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %152
  %168 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %169 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %168, i32 0, i32 6
  store i8* null, i8** %169, align 8
  br label %170

170:                                              ; preds = %167, %152
  %171 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call i8* @devm_regulator_get(i32* %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %174 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %175 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %174, i32 0, i32 7
  store i8* %173, i8** %175, align 8
  %176 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %177 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %176, i32 0, i32 7
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %178)
  %180 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %181 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %180, i32 0, i32 7
  %182 = load i8*, i8** %181, align 8
  %183 = call i64 @IS_ERR(i8* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %170
  %186 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %187 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %186, i32 0, i32 7
  store i8* null, i8** %187, align 8
  br label %188

188:                                              ; preds = %185, %170
  %189 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %190 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %191 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %190, i32 0, i32 12
  store %struct.platform_device* %189, %struct.platform_device** %191, align 8
  %192 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %193 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %194 = call i32 @platform_set_drvdata(%struct.platform_device* %192, %struct.msm_gpu* %193)
  %195 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %196 = call i32 @msm_devfreq_init(%struct.msm_gpu* %195)
  %197 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %198 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %199 = load %struct.msm_gpu_config*, %struct.msm_gpu_config** %13, align 8
  %200 = getelementptr inbounds %struct.msm_gpu_config, %struct.msm_gpu_config* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.msm_gpu_config*, %struct.msm_gpu_config** %13, align 8
  %203 = getelementptr inbounds %struct.msm_gpu_config, %struct.msm_gpu_config* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @msm_gpu_create_address_space(%struct.msm_gpu* %197, %struct.platform_device* %198, i32 %201, i32 %204)
  %206 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %207 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %206, i32 0, i32 8
  store i8* %205, i8** %207, align 8
  %208 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %209 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %208, i32 0, i32 8
  %210 = load i8*, i8** %209, align 8
  %211 = icmp eq i8* %210, null
  br i1 %211, label %212, label %218

212:                                              ; preds = %188
  %213 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %214 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i8*, i8** %12, align 8
  %217 = call i32 @DRM_DEV_INFO(i32 %215, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* %216)
  br label %230

218:                                              ; preds = %188
  %219 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %220 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %219, i32 0, i32 8
  %221 = load i8*, i8** %220, align 8
  %222 = call i64 @IS_ERR(i8* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %218
  %225 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %226 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %225, i32 0, i32 8
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @PTR_ERR(i8* %227)
  store i32 %228, i32* %15, align 4
  br label %333

229:                                              ; preds = %218
  br label %230

230:                                              ; preds = %229, %212
  %231 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %232 = load i32, i32* %16, align 4
  %233 = sext i32 %232 to i64
  %234 = mul i64 4, %233
  %235 = trunc i64 %234 to i32
  %236 = load i32, i32* @MSM_BO_UNCACHED, align 4
  %237 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %238 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %237, i32 0, i32 8
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %241 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %240, i32 0, i32 11
  %242 = call i8* @msm_gem_kernel_new(%struct.drm_device* %231, i32 %235, i32 %236, i8* %239, i32* %241, i32* %18)
  store i8* %242, i8** %17, align 8
  %243 = load i8*, i8** %17, align 8
  %244 = call i64 @IS_ERR(i8* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %230
  %247 = load i8*, i8** %17, align 8
  %248 = call i32 @PTR_ERR(i8* %247)
  store i32 %248, i32* %15, align 4
  %249 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %250 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %15, align 4
  %253 = call i32 (i32, i8*, i32, ...) @DRM_DEV_ERROR(i32 %251, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %252)
  br label %333

254:                                              ; preds = %230
  %255 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %256 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %255, i32 0, i32 11
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @msm_gem_object_set_name(i32 %257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %259 = load i32, i32* %16, align 4
  %260 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %261 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %260, i32 0, i32 9
  %262 = load i8**, i8*** %261, align 8
  %263 = call i32 @ARRAY_SIZE(i8** %262)
  %264 = icmp sgt i32 %259, %263
  br i1 %264, label %265, label %278

265:                                              ; preds = %254
  %266 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %267 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %270 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %269, i32 0, i32 9
  %271 = load i8**, i8*** %270, align 8
  %272 = call i32 @ARRAY_SIZE(i8** %271)
  %273 = call i32 @DRM_DEV_INFO_ONCE(i32 %268, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %272)
  %274 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %275 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %274, i32 0, i32 9
  %276 = load i8**, i8*** %275, align 8
  %277 = call i32 @ARRAY_SIZE(i8** %276)
  store i32 %277, i32* %16, align 4
  br label %278

278:                                              ; preds = %265, %254
  store i32 0, i32* %14, align 4
  br label %279

279:                                              ; preds = %326, %278
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* %16, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %329

283:                                              ; preds = %279
  %284 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %285 = load i32, i32* %14, align 4
  %286 = load i8*, i8** %17, align 8
  %287 = load i32, i32* %18, align 4
  %288 = call i8* @msm_ringbuffer_new(%struct.msm_gpu* %284, i32 %285, i8* %286, i32 %287)
  %289 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %290 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %289, i32 0, i32 9
  %291 = load i8**, i8*** %290, align 8
  %292 = load i32, i32* %14, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %291, i64 %293
  store i8* %288, i8** %294, align 8
  %295 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %296 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %295, i32 0, i32 9
  %297 = load i8**, i8*** %296, align 8
  %298 = load i32, i32* %14, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %297, i64 %299
  %301 = load i8*, i8** %300, align 8
  %302 = call i64 @IS_ERR(i8* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %319

304:                                              ; preds = %283
  %305 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %306 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %305, i32 0, i32 9
  %307 = load i8**, i8*** %306, align 8
  %308 = load i32, i32* %14, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8*, i8** %307, i64 %309
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @PTR_ERR(i8* %311)
  store i32 %312, i32* %15, align 4
  %313 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %314 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %14, align 4
  %317 = load i32, i32* %15, align 4
  %318 = call i32 (i32, i8*, i32, ...) @DRM_DEV_ERROR(i32 %315, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %316, i32 %317)
  br label %333

319:                                              ; preds = %283
  %320 = load i8*, i8** %17, align 8
  %321 = getelementptr i8, i8* %320, i64 4
  store i8* %321, i8** %17, align 8
  %322 = load i32, i32* %18, align 4
  %323 = sext i32 %322 to i64
  %324 = add i64 %323, 4
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %18, align 4
  br label %326

326:                                              ; preds = %319
  %327 = load i32, i32* %14, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %14, align 4
  br label %279

329:                                              ; preds = %279
  %330 = load i32, i32* %16, align 4
  %331 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %332 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %331, i32 0, i32 10
  store i32 %330, i32* %332, align 8
  store i32 0, i32* %7, align 4
  br label %370

333:                                              ; preds = %304, %246, %224, %134, %119, %95, %81
  store i32 0, i32* %14, align 4
  br label %334

334:                                              ; preds = %356, %333
  %335 = load i32, i32* %14, align 4
  %336 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %337 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %336, i32 0, i32 9
  %338 = load i8**, i8*** %337, align 8
  %339 = call i32 @ARRAY_SIZE(i8** %338)
  %340 = icmp slt i32 %335, %339
  br i1 %340, label %341, label %359

341:                                              ; preds = %334
  %342 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %343 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %342, i32 0, i32 9
  %344 = load i8**, i8*** %343, align 8
  %345 = load i32, i32* %14, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8*, i8** %344, i64 %346
  %348 = load i8*, i8** %347, align 8
  %349 = call i32 @msm_ringbuffer_destroy(i8* %348)
  %350 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %351 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %350, i32 0, i32 9
  %352 = load i8**, i8*** %351, align 8
  %353 = load i32, i32* %14, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8*, i8** %352, i64 %354
  store i8* null, i8** %355, align 8
  br label %356

356:                                              ; preds = %341
  %357 = load i32, i32* %14, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %14, align 4
  br label %334

359:                                              ; preds = %334
  %360 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %361 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %360, i32 0, i32 11
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.msm_gpu*, %struct.msm_gpu** %10, align 8
  %364 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %363, i32 0, i32 8
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 @msm_gem_kernel_put(i32 %362, i8* %365, i32 0)
  %367 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %368 = call i32 @platform_set_drvdata(%struct.platform_device* %367, %struct.msm_gpu* null)
  %369 = load i32, i32* %15, align 4
  store i32 %369, i32* %7, align 4
  br label %370

370:                                              ; preds = %359, %329
  %371 = load i32, i32* %7, align 4
  ret i32 %371
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @msm_ioremap(%struct.platform_device*, i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, ...) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.msm_gpu*) #1

declare dso_local i32 @get_clocks(%struct.platform_device*, %struct.msm_gpu*) #1

declare dso_local i8* @msm_clk_get(%struct.platform_device*, i8*) #1

declare dso_local i32 @DBG(i8*, i8*) #1

declare dso_local i8* @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.msm_gpu*) #1

declare dso_local i32 @msm_devfreq_init(%struct.msm_gpu*) #1

declare dso_local i8* @msm_gpu_create_address_space(%struct.msm_gpu*, %struct.platform_device*, i32, i32) #1

declare dso_local i32 @DRM_DEV_INFO(i32, i8*, i8*) #1

declare dso_local i8* @msm_gem_kernel_new(%struct.drm_device*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @msm_gem_object_set_name(i32, i8*) #1

declare dso_local i32 @DRM_DEV_INFO_ONCE(i32, i8*, i32) #1

declare dso_local i8* @msm_ringbuffer_new(%struct.msm_gpu*, i32, i8*, i32) #1

declare dso_local i32 @msm_ringbuffer_destroy(i8*) #1

declare dso_local i32 @msm_gem_kernel_put(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
