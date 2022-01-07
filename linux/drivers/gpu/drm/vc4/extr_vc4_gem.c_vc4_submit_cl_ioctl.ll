; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_submit_cl_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_submit_cl_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.vc4_file* }
%struct.vc4_file = type { i32 }
%struct.vc4_dev = type { i32, i32, i32, i32 }
%struct.drm_vc4_submit_cl = type { i32, i32, i64, i32, i64, i64, i64 }
%struct.drm_syncobj = type { i32 }
%struct.vc4_exec_info = type { %struct.drm_vc4_submit_cl*, i64, i64, i32, i32 }
%struct.ww_acquire_ctx = type { i32 }
%struct.dma_fence = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"VC4_SUBMIT_CL with no VC4 V3D probed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VC4_SUBMIT_CL_USE_CLEAR_COLOR = common dso_local global i32 0, align 4
@VC4_SUBMIT_CL_FIXED_RCL_ORDER = common dso_local global i32 0, align 4
@VC4_SUBMIT_CL_RCL_ORDER_INCREASING_X = common dso_local global i32 0, align 4
@VC4_SUBMIT_CL_RCL_ORDER_INCREASING_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown flags: 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid pad: 0x%08x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"malloc failure on exec struct\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_submit_cl_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.vc4_dev*, align 8
  %9 = alloca %struct.vc4_file*, align 8
  %10 = alloca %struct.drm_vc4_submit_cl*, align 8
  %11 = alloca %struct.drm_syncobj*, align 8
  %12 = alloca %struct.vc4_exec_info*, align 8
  %13 = alloca %struct.ww_acquire_ctx, align 4
  %14 = alloca %struct.dma_fence*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %16)
  store %struct.vc4_dev* %17, %struct.vc4_dev** %8, align 8
  %18 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %19 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %18, i32 0, i32 0
  %20 = load %struct.vc4_file*, %struct.vc4_file** %19, align 8
  store %struct.vc4_file* %20, %struct.vc4_file** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.drm_vc4_submit_cl*
  store %struct.drm_vc4_submit_cl* %22, %struct.drm_vc4_submit_cl** %10, align 8
  store %struct.drm_syncobj* null, %struct.drm_syncobj** %11, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %24 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %230

31:                                               ; preds = %3
  %32 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %33 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VC4_SUBMIT_CL_USE_CLEAR_COLOR, align 4
  %36 = load i32, i32* @VC4_SUBMIT_CL_FIXED_RCL_ORDER, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VC4_SUBMIT_CL_RCL_ORDER_INCREASING_X, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @VC4_SUBMIT_CL_RCL_ORDER_INCREASING_Y, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %34, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %31
  %46 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %47 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %230

52:                                               ; preds = %31
  %53 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %54 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %59 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %230

64:                                               ; preds = %52
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.vc4_exec_info* @kcalloc(i32 1, i32 32, i32 %65)
  store %struct.vc4_exec_info* %66, %struct.vc4_exec_info** %12, align 8
  %67 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %68 = icmp ne %struct.vc4_exec_info* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %230

73:                                               ; preds = %64
  %74 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %75 = call i32 @vc4_v3d_pm_get(%struct.vc4_dev* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %80 = call i32 @kfree(%struct.vc4_exec_info* %79)
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %4, align 4
  br label %230

82:                                               ; preds = %73
  %83 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %84 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %85 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %84, i32 0, i32 0
  store %struct.drm_vc4_submit_cl* %83, %struct.drm_vc4_submit_cl** %85, align 8
  %86 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %87 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %86, i32 0, i32 4
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %90 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %91 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %92 = call i32 @vc4_cl_lookup_bos(%struct.drm_device* %89, %struct.drm_file* %90, %struct.vc4_exec_info* %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %223

96:                                               ; preds = %82
  %97 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %98 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load %struct.vc4_file*, %struct.vc4_file** %9, align 8
  %103 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %104 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @vc4_perfmon_find(%struct.vc4_file* %102, i64 %105)
  %107 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %108 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %110 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %101
  %114 = load i32, i32* @ENOENT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %15, align 4
  br label %223

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116, %96
  %118 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %119 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %117
  %123 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %124 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %125 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @drm_syncobj_find_fence(%struct.drm_file* %123, i64 %126, i32 0, i32 0, %struct.dma_fence** %14)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %223

131:                                              ; preds = %122
  %132 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %133 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %134 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dma_fence_match_context(%struct.dma_fence* %132, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %131
  %139 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %140 = call i32 @dma_fence_wait(%struct.dma_fence* %139, i32 1)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %145 = call i32 @dma_fence_put(%struct.dma_fence* %144)
  br label %223

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %131
  %148 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %149 = call i32 @dma_fence_put(%struct.dma_fence* %148)
  br label %150

150:                                              ; preds = %147, %117
  %151 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %152 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %151, i32 0, i32 0
  %153 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %152, align 8
  %154 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %150
  %158 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %159 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %160 = call i32 @vc4_get_bcl(%struct.drm_device* %158, %struct.vc4_exec_info* %159)
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %223

164:                                              ; preds = %157
  br label %170

165:                                              ; preds = %150
  %166 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %167 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %166, i32 0, i32 2
  store i64 0, i64* %167, align 8
  %168 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %169 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %168, i32 0, i32 1
  store i64 0, i64* %169, align 8
  br label %170

170:                                              ; preds = %165, %164
  %171 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %172 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %173 = call i32 @vc4_get_rcl(%struct.drm_device* %171, %struct.vc4_exec_info* %172)
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %223

177:                                              ; preds = %170
  %178 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %179 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %180 = call i32 @vc4_lock_bo_reservations(%struct.drm_device* %178, %struct.vc4_exec_info* %179, %struct.ww_acquire_ctx* %13)
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %15, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %223

184:                                              ; preds = %177
  %185 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %186 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %184
  %190 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %191 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %192 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = call %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file* %190, i64 %193)
  store %struct.drm_syncobj* %194, %struct.drm_syncobj** %11, align 8
  %195 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %196 = icmp ne %struct.drm_syncobj* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %189
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %15, align 4
  br label %223

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200, %184
  %202 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %203 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %202, i32 0, i32 0
  store %struct.drm_vc4_submit_cl* null, %struct.drm_vc4_submit_cl** %203, align 8
  %204 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %205 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %206 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %207 = call i32 @vc4_queue_submit(%struct.drm_device* %204, %struct.vc4_exec_info* %205, %struct.ww_acquire_ctx* %13, %struct.drm_syncobj* %206)
  store i32 %207, i32* %15, align 4
  %208 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %209 = icmp ne %struct.drm_syncobj* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %201
  %211 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %212 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %211)
  br label %213

213:                                              ; preds = %210, %201
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  br label %223

217:                                              ; preds = %213
  %218 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %219 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %10, align 8
  %222 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 8
  store i32 0, i32* %4, align 4
  br label %230

223:                                              ; preds = %216, %197, %183, %176, %163, %143, %130, %113, %95
  %224 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %225 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %12, align 8
  %228 = call i32 @vc4_complete_exec(i32 %226, %struct.vc4_exec_info* %227)
  %229 = load i32, i32* %15, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %223, %217, %78, %69, %57, %45, %27
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local %struct.vc4_exec_info* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vc4_v3d_pm_get(%struct.vc4_dev*) #1

declare dso_local i32 @kfree(%struct.vc4_exec_info*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vc4_cl_lookup_bos(%struct.drm_device*, %struct.drm_file*, %struct.vc4_exec_info*) #1

declare dso_local i32 @vc4_perfmon_find(%struct.vc4_file*, i64) #1

declare dso_local i32 @drm_syncobj_find_fence(%struct.drm_file*, i64, i32, i32, %struct.dma_fence**) #1

declare dso_local i32 @dma_fence_match_context(%struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @vc4_get_bcl(%struct.drm_device*, %struct.vc4_exec_info*) #1

declare dso_local i32 @vc4_get_rcl(%struct.drm_device*, %struct.vc4_exec_info*) #1

declare dso_local i32 @vc4_lock_bo_reservations(%struct.drm_device*, %struct.vc4_exec_info*, %struct.ww_acquire_ctx*) #1

declare dso_local %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file*, i64) #1

declare dso_local i32 @vc4_queue_submit(%struct.drm_device*, %struct.vc4_exec_info*, %struct.ww_acquire_ctx*, %struct.drm_syncobj*) #1

declare dso_local i32 @drm_syncobj_put(%struct.drm_syncobj*) #1

declare dso_local i32 @vc4_complete_exec(i32, %struct.vc4_exec_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
