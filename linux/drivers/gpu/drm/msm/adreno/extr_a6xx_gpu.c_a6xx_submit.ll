; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_file_private* }
%struct.msm_gem_submit = type { i32, i32, %struct.TYPE_4__*, %struct.msm_ringbuffer* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.msm_ringbuffer = type { i32 }
%struct.msm_file_private = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { i32 }

@MSM_GPU_SUBMIT_STATS_COUNT = common dso_local global i32 0, align 4
@REG_A6XX_RBBM_PERFCTR_CP_0_LO = common dso_local global i64 0, align 8
@cpcycles_start = common dso_local global i32 0, align 4
@REG_A6XX_GMU_ALWAYS_ON_COUNTER_L = common dso_local global i64 0, align 8
@alwayson_start = common dso_local global i32 0, align 4
@CP_EVENT_WRITE = common dso_local global i32 0, align 4
@PC_CCU_INVALIDATE_DEPTH = common dso_local global i32 0, align 4
@PC_CCU_INVALIDATE_COLOR = common dso_local global i32 0, align 4
@CP_INDIRECT_BUFFER_PFE = common dso_local global i32 0, align 4
@cpcycles_end = common dso_local global i32 0, align 4
@alwayson_end = common dso_local global i32 0, align 4
@CACHE_FLUSH_TS = common dso_local global i32 0, align 4
@fence = common dso_local global i32 0, align 4
@REG_A6XX_GMU_ALWAYS_ON_COUNTER_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.msm_gem_submit*, %struct.msm_file_private*)* @a6xx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_submit(%struct.msm_gpu* %0, %struct.msm_gem_submit* %1, %struct.msm_file_private* %2) #0 {
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.msm_gem_submit*, align 8
  %6 = alloca %struct.msm_file_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_drm_private*, align 8
  %9 = alloca %struct.adreno_gpu*, align 8
  %10 = alloca %struct.a6xx_gpu*, align 8
  %11 = alloca %struct.msm_ringbuffer*, align 8
  %12 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store %struct.msm_gem_submit* %1, %struct.msm_gem_submit** %5, align 8
  store %struct.msm_file_private* %2, %struct.msm_file_private** %6, align 8
  %13 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %14 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MSM_GPU_SUBMIT_STATS_COUNT, align 4
  %17 = urem i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %19 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.msm_drm_private*, %struct.msm_drm_private** %21, align 8
  store %struct.msm_drm_private* %22, %struct.msm_drm_private** %8, align 8
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %24 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %23)
  store %struct.adreno_gpu* %24, %struct.adreno_gpu** %9, align 8
  %25 = load %struct.adreno_gpu*, %struct.adreno_gpu** %9, align 8
  %26 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %25)
  store %struct.a6xx_gpu* %26, %struct.a6xx_gpu** %10, align 8
  %27 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %28 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %27, i32 0, i32 3
  %29 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %28, align 8
  store %struct.msm_ringbuffer* %29, %struct.msm_ringbuffer** %11, align 8
  %30 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %31 = load i64, i64* @REG_A6XX_RBBM_PERFCTR_CP_0_LO, align 8
  %32 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @cpcycles_start, align 4
  %35 = call i32 @rbmemptr_stats(%struct.msm_ringbuffer* %32, i32 %33, i32 %34)
  %36 = call i32 @get_stats_counter(%struct.msm_ringbuffer* %30, i64 %31, i32 %35)
  %37 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %38 = load i64, i64* @REG_A6XX_GMU_ALWAYS_ON_COUNTER_L, align 8
  %39 = add nsw i64 %38, 108544
  %40 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @alwayson_start, align 4
  %43 = call i32 @rbmemptr_stats(%struct.msm_ringbuffer* %40, i32 %41, i32 %42)
  %44 = call i32 @get_stats_counter(%struct.msm_ringbuffer* %37, i64 %39, i32 %43)
  %45 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %46 = load i32, i32* @CP_EVENT_WRITE, align 4
  %47 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %45, i32 %46, i32 1)
  %48 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %49 = load i32, i32* @PC_CCU_INVALIDATE_DEPTH, align 4
  %50 = call i32 @OUT_RING(%struct.msm_ringbuffer* %48, i32 %49)
  %51 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %52 = load i32, i32* @CP_EVENT_WRITE, align 4
  %53 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %51, i32 %52, i32 1)
  %54 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %55 = load i32, i32* @PC_CCU_INVALIDATE_COLOR, align 4
  %56 = call i32 @OUT_RING(%struct.msm_ringbuffer* %54, i32 %55)
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %118, %3
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %60 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %121

63:                                               ; preds = %57
  %64 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %65 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %117 [
    i32 128, label %72
    i32 129, label %73
    i32 130, label %81
  ]

72:                                               ; preds = %63
  br label %117

73:                                               ; preds = %63
  %74 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %75 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %74, i32 0, i32 0
  %76 = load %struct.msm_file_private*, %struct.msm_file_private** %75, align 8
  %77 = load %struct.msm_file_private*, %struct.msm_file_private** %6, align 8
  %78 = icmp eq %struct.msm_file_private* %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %117

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %63, %80
  %82 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %83 = load i32, i32* @CP_INDIRECT_BUFFER_PFE, align 4
  %84 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %82, i32 %83, i32 3)
  %85 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %86 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %87 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @lower_32_bits(i32 %93)
  %95 = call i32 @OUT_RING(%struct.msm_ringbuffer* %85, i32 %94)
  %96 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %97 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %98 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @upper_32_bits(i32 %104)
  %106 = call i32 @OUT_RING(%struct.msm_ringbuffer* %96, i32 %105)
  %107 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %108 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %109 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @OUT_RING(%struct.msm_ringbuffer* %107, i32 %115)
  br label %117

117:                                              ; preds = %63, %81, %79, %72
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %57

121:                                              ; preds = %57
  %122 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %123 = load i64, i64* @REG_A6XX_RBBM_PERFCTR_CP_0_LO, align 8
  %124 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @cpcycles_end, align 4
  %127 = call i32 @rbmemptr_stats(%struct.msm_ringbuffer* %124, i32 %125, i32 %126)
  %128 = call i32 @get_stats_counter(%struct.msm_ringbuffer* %122, i64 %123, i32 %127)
  %129 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %130 = load i64, i64* @REG_A6XX_GMU_ALWAYS_ON_COUNTER_L, align 8
  %131 = add nsw i64 %130, 108544
  %132 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @alwayson_end, align 4
  %135 = call i32 @rbmemptr_stats(%struct.msm_ringbuffer* %132, i32 %133, i32 %134)
  %136 = call i32 @get_stats_counter(%struct.msm_ringbuffer* %129, i64 %131, i32 %135)
  %137 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %138 = call i32 @REG_A6XX_CP_SCRATCH_REG(i32 2)
  %139 = call i32 @OUT_PKT4(%struct.msm_ringbuffer* %137, i32 %138, i32 1)
  %140 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %141 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %142 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @OUT_RING(%struct.msm_ringbuffer* %140, i32 %143)
  %145 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %146 = load i32, i32* @CP_EVENT_WRITE, align 4
  %147 = call i32 @OUT_PKT7(%struct.msm_ringbuffer* %145, i32 %146, i32 4)
  %148 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %149 = load i32, i32* @CACHE_FLUSH_TS, align 4
  %150 = or i32 %149, -2147483648
  %151 = call i32 @OUT_RING(%struct.msm_ringbuffer* %148, i32 %150)
  %152 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %153 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %154 = load i32, i32* @fence, align 4
  %155 = call i32 @rbmemptr(%struct.msm_ringbuffer* %153, i32 %154)
  %156 = call i32 @lower_32_bits(i32 %155)
  %157 = call i32 @OUT_RING(%struct.msm_ringbuffer* %152, i32 %156)
  %158 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %159 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %160 = load i32, i32* @fence, align 4
  %161 = call i32 @rbmemptr(%struct.msm_ringbuffer* %159, i32 %160)
  %162 = call i32 @upper_32_bits(i32 %161)
  %163 = call i32 @OUT_RING(%struct.msm_ringbuffer* %158, i32 %162)
  %164 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %165 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %166 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @OUT_RING(%struct.msm_ringbuffer* %164, i32 %167)
  %169 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %170 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %10, align 8
  %171 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %170, i32 0, i32 0
  %172 = load i64, i64* @REG_A6XX_GMU_ALWAYS_ON_COUNTER_L, align 8
  %173 = load i32, i32* @REG_A6XX_GMU_ALWAYS_ON_COUNTER_H, align 4
  %174 = call i32 @gmu_read64(i32* %171, i64 %172, i32 %173)
  %175 = call i32 @trace_msm_gpu_submit_flush(%struct.msm_gem_submit* %169, i32 %174)
  %176 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %177 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %11, align 8
  %178 = call i32 @a6xx_flush(%struct.msm_gpu* %176, %struct.msm_ringbuffer* %177)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @get_stats_counter(%struct.msm_ringbuffer*, i64, i32) #1

declare dso_local i32 @rbmemptr_stats(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @OUT_PKT7(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @OUT_PKT4(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @REG_A6XX_CP_SCRATCH_REG(i32) #1

declare dso_local i32 @rbmemptr(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @trace_msm_gpu_submit_flush(%struct.msm_gem_submit*, i32) #1

declare dso_local i32 @gmu_read64(i32*, i64, i32) #1

declare dso_local i32 @a6xx_flush(%struct.msm_gpu*, %struct.msm_ringbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
