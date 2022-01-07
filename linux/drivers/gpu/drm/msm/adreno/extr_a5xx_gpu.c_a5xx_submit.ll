; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_file_private* }
%struct.msm_gem_submit = type { i32, i32, %struct.TYPE_4__*, %struct.msm_ringbuffer*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.msm_ringbuffer = type { i64 }
%struct.msm_file_private = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a5xx_gpu = type { i32* }

@CONFIG_DRM_MSM_GPU_SUDO = common dso_local global i32 0, align 4
@CP_PREEMPT_ENABLE_GLOBAL = common dso_local global i32 0, align 4
@CP_SET_PROTECTED_MODE = common dso_local global i32 0, align 4
@REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO = common dso_local global i32 0, align 4
@CP_YIELD_ENABLE = common dso_local global i32 0, align 4
@CP_INDIRECT_BUFFER_PFE = common dso_local global i32 0, align 4
@CP_SET_RENDER_MODE = common dso_local global i32 0, align 4
@CP_EVENT_WRITE = common dso_local global i32 0, align 4
@CACHE_FLUSH_TS = common dso_local global i32 0, align 4
@fence = common dso_local global i32 0, align 4
@CP_CONTEXT_SWITCH_YIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.msm_gem_submit*, %struct.msm_file_private*)* @a5xx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a5xx_submit(%struct.msm_gpu* %0, %struct.msm_gem_submit* %1, %struct.msm_file_private* %2) #0 {
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.msm_gem_submit*, align 8
  %6 = alloca %struct.msm_file_private*, align 8
  %7 = alloca %struct.adreno_gpu*, align 8
  %8 = alloca %struct.a5xx_gpu*, align 8
  %9 = alloca %struct.msm_drm_private*, align 8
  %10 = alloca %struct.msm_ringbuffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store %struct.msm_gem_submit* %1, %struct.msm_gem_submit** %5, align 8
  store %struct.msm_file_private* %2, %struct.msm_file_private** %6, align 8
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %14 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %13)
  store %struct.adreno_gpu* %14, %struct.adreno_gpu** %7, align 8
  %15 = load %struct.adreno_gpu*, %struct.adreno_gpu** %7, align 8
  %16 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %15)
  store %struct.a5xx_gpu* %16, %struct.a5xx_gpu** %8, align 8
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %18 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.msm_drm_private*, %struct.msm_drm_private** %20, align 8
  store %struct.msm_drm_private* %21, %struct.msm_drm_private** %9, align 8
  %22 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %23 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %22, i32 0, i32 3
  %24 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %23, align 8
  store %struct.msm_ringbuffer* %24, %struct.msm_ringbuffer** %10, align 8
  store i32 0, i32* %12, align 4
  %25 = load i32, i32* @CONFIG_DRM_MSM_GPU_SUDO, align 4
  %26 = call i64 @IS_ENABLED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %30 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  %35 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %34, i32 0, i32 0
  store %struct.msm_file_private* null, %struct.msm_file_private** %35, align 8
  %36 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %37 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %38 = load %struct.msm_file_private*, %struct.msm_file_private** %6, align 8
  %39 = call i32 @a5xx_submit_in_rb(%struct.msm_gpu* %36, %struct.msm_gem_submit* %37, %struct.msm_file_private* %38)
  br label %228

40:                                               ; preds = %28, %3
  %41 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %42 = load i32, i32* @CP_PREEMPT_ENABLE_GLOBAL, align 4
  %43 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %41, i32 %42, i32 1)
  %44 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %45 = call i32 @OUT_RING(%struct.msm_ringbuffer* %44, i32 2)
  %46 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %47 = load i32, i32* @CP_SET_PROTECTED_MODE, align 4
  %48 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %46, i32 %47, i32 1)
  %49 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %50 = call i32 @OUT_RING(%struct.msm_ringbuffer* %49, i32 0)
  %51 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %52 = load i32, i32* @REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO, align 4
  %53 = call i32 @OUT_PKT4(%struct.msm_ringbuffer* %51, i32 %52, i32 2)
  %54 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %55 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %8, align 8
  %56 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %59 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %58, i32 0, i32 3
  %60 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %59, align 8
  %61 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @lower_32_bits(i32 %64)
  %66 = call i32 @OUT_RING(%struct.msm_ringbuffer* %54, i32 %65)
  %67 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %68 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %8, align 8
  %69 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %72 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %71, i32 0, i32 3
  %73 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %72, align 8
  %74 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @upper_32_bits(i32 %77)
  %79 = call i32 @OUT_RING(%struct.msm_ringbuffer* %67, i32 %78)
  %80 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %81 = load i32, i32* @CP_SET_PROTECTED_MODE, align 4
  %82 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %80, i32 %81, i32 1)
  %83 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %84 = call i32 @OUT_RING(%struct.msm_ringbuffer* %83, i32 1)
  %85 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %86 = load i32, i32* @CP_PREEMPT_ENABLE_GLOBAL, align 4
  %87 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %85, i32 %86, i32 1)
  %88 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %89 = call i32 @OUT_RING(%struct.msm_ringbuffer* %88, i32 2)
  %90 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %91 = load i32, i32* @CP_YIELD_ENABLE, align 4
  %92 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %90, i32 %91, i32 1)
  %93 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %94 = call i32 @OUT_RING(%struct.msm_ringbuffer* %93, i32 2)
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %158, %40
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %98 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %161

101:                                              ; preds = %95
  %102 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %103 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %157 [
    i32 128, label %110
    i32 129, label %111
    i32 130, label %119
  ]

110:                                              ; preds = %101
  br label %157

111:                                              ; preds = %101
  %112 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  %113 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %112, i32 0, i32 0
  %114 = load %struct.msm_file_private*, %struct.msm_file_private** %113, align 8
  %115 = load %struct.msm_file_private*, %struct.msm_file_private** %6, align 8
  %116 = icmp eq %struct.msm_file_private* %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %157

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %101, %118
  %120 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %121 = load i32, i32* @CP_INDIRECT_BUFFER_PFE, align 4
  %122 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %120, i32 %121, i32 3)
  %123 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %124 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %125 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %124, i32 0, i32 2
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @lower_32_bits(i32 %131)
  %133 = call i32 @OUT_RING(%struct.msm_ringbuffer* %123, i32 %132)
  %134 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %135 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %136 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @upper_32_bits(i32 %142)
  %144 = call i32 @OUT_RING(%struct.msm_ringbuffer* %134, i32 %143)
  %145 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %146 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %147 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @OUT_RING(%struct.msm_ringbuffer* %145, i32 %153)
  %155 = load i32, i32* %12, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %101, %119, %117, %110
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %95

161:                                              ; preds = %95
  %162 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %163 = load i32, i32* @CP_SET_RENDER_MODE, align 4
  %164 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %162, i32 %163, i32 5)
  %165 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %166 = call i32 @OUT_RING(%struct.msm_ringbuffer* %165, i32 0)
  %167 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %168 = call i32 @OUT_RING(%struct.msm_ringbuffer* %167, i32 0)
  %169 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %170 = call i32 @OUT_RING(%struct.msm_ringbuffer* %169, i32 0)
  %171 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %172 = call i32 @OUT_RING(%struct.msm_ringbuffer* %171, i32 0)
  %173 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %174 = call i32 @OUT_RING(%struct.msm_ringbuffer* %173, i32 0)
  %175 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %176 = load i32, i32* @CP_YIELD_ENABLE, align 4
  %177 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %175, i32 %176, i32 1)
  %178 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %179 = call i32 @OUT_RING(%struct.msm_ringbuffer* %178, i32 1)
  %180 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %181 = call i32 @REG_A5XX_CP_SCRATCH_REG(i32 2)
  %182 = call i32 @OUT_PKT4(%struct.msm_ringbuffer* %180, i32 %181, i32 1)
  %183 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %184 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %185 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @OUT_RING(%struct.msm_ringbuffer* %183, i32 %186)
  %188 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %189 = load i32, i32* @CP_EVENT_WRITE, align 4
  %190 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %188, i32 %189, i32 4)
  %191 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %192 = load i32, i32* @CACHE_FLUSH_TS, align 4
  %193 = or i32 %192, -2147483648
  %194 = call i32 @OUT_RING(%struct.msm_ringbuffer* %191, i32 %193)
  %195 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %196 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %197 = load i32, i32* @fence, align 4
  %198 = call i32 @rbmemptr(%struct.msm_ringbuffer* %196, i32 %197)
  %199 = call i32 @lower_32_bits(i32 %198)
  %200 = call i32 @OUT_RING(%struct.msm_ringbuffer* %195, i32 %199)
  %201 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %202 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %203 = load i32, i32* @fence, align 4
  %204 = call i32 @rbmemptr(%struct.msm_ringbuffer* %202, i32 %203)
  %205 = call i32 @upper_32_bits(i32 %204)
  %206 = call i32 @OUT_RING(%struct.msm_ringbuffer* %201, i32 %205)
  %207 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %208 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %209 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @OUT_RING(%struct.msm_ringbuffer* %207, i32 %210)
  %212 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %213 = load i32, i32* @CP_CONTEXT_SWITCH_YIELD, align 4
  %214 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %212, i32 %213, i32 4)
  %215 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %216 = call i32 @OUT_RING(%struct.msm_ringbuffer* %215, i32 0)
  %217 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %218 = call i32 @OUT_RING(%struct.msm_ringbuffer* %217, i32 0)
  %219 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %220 = call i32 @OUT_RING(%struct.msm_ringbuffer* %219, i32 1)
  %221 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %222 = call i32 @OUT_RING(%struct.msm_ringbuffer* %221, i32 1)
  %223 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %224 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %225 = call i32 @a5xx_flush(%struct.msm_gpu* %223, %struct.msm_ringbuffer* %224)
  %226 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %227 = call i32 @a5xx_preempt_trigger(%struct.msm_gpu* %226)
  br label %228

228:                                              ; preds = %161, %33
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @a5xx_submit_in_rb(%struct.msm_gpu*, %struct.msm_gem_submit*, %struct.msm_file_private*) #1

declare dso_local i32 @OUT_PKT7(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @OUT_PKT4(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @REG_A5XX_CP_SCRATCH_REG(i32) #1

declare dso_local i32 @rbmemptr(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @a5xx_flush(%struct.msm_gpu*, %struct.msm_ringbuffer*) #1

declare dso_local i32 @a5xx_preempt_trigger(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
