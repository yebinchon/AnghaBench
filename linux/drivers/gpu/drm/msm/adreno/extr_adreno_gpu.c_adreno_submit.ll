; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)* }
%struct.msm_ringbuffer = type { i32 }
%struct.TYPE_4__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_file_private* }
%struct.msm_gem_submit = type { i32, i32, %struct.TYPE_5__*, %struct.msm_ringbuffer* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.msm_file_private = type { i32 }
%struct.adreno_gpu = type { i32 }

@CP_INDIRECT_BUFFER_PFE = common dso_local global i32 0, align 4
@CP_INDIRECT_BUFFER_PFD = common dso_local global i32 0, align 4
@REG_AXXX_CP_SCRATCH_REG2 = common dso_local global i32 0, align 4
@CP_EVENT_WRITE = common dso_local global i32 0, align 4
@HLSQ_FLUSH = common dso_local global i32 0, align 4
@CP_WAIT_FOR_IDLE = common dso_local global i32 0, align 4
@CACHE_FLUSH_TS = common dso_local global i32 0, align 4
@fence = common dso_local global i32 0, align 4
@CP_INTERRUPT = common dso_local global i32 0, align 4
@CP_SET_CONSTANT = common dso_local global i32 0, align 4
@REG_A3XX_HLSQ_CL_KERNEL_GROUP_X_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adreno_submit(%struct.msm_gpu* %0, %struct.msm_gem_submit* %1, %struct.msm_file_private* %2) #0 {
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.msm_gem_submit*, align 8
  %6 = alloca %struct.msm_file_private*, align 8
  %7 = alloca %struct.adreno_gpu*, align 8
  %8 = alloca %struct.msm_drm_private*, align 8
  %9 = alloca %struct.msm_ringbuffer*, align 8
  %10 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store %struct.msm_gem_submit* %1, %struct.msm_gem_submit** %5, align 8
  store %struct.msm_file_private* %2, %struct.msm_file_private** %6, align 8
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %12 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %11)
  store %struct.adreno_gpu* %12, %struct.adreno_gpu** %7, align 8
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %14 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.msm_drm_private*, %struct.msm_drm_private** %16, align 8
  store %struct.msm_drm_private* %17, %struct.msm_drm_private** %8, align 8
  %18 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %19 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %18, i32 0, i32 3
  %20 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %19, align 8
  store %struct.msm_ringbuffer* %20, %struct.msm_ringbuffer** %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %81, %3
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %24 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %84

27:                                               ; preds = %21
  %28 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %29 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %80 [
    i32 128, label %36
    i32 129, label %37
    i32 130, label %45
  ]

36:                                               ; preds = %27
  br label %80

37:                                               ; preds = %27
  %38 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %39 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %38, i32 0, i32 0
  %40 = load %struct.msm_file_private*, %struct.msm_file_private** %39, align 8
  %41 = load %struct.msm_file_private*, %struct.msm_file_private** %6, align 8
  %42 = icmp eq %struct.msm_file_private* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %80

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %27, %44
  %46 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %47 = load %struct.adreno_gpu*, %struct.adreno_gpu** %7, align 8
  %48 = call i32 @adreno_is_a430(%struct.adreno_gpu* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @CP_INDIRECT_BUFFER_PFE, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @CP_INDIRECT_BUFFER_PFD, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @OUT_PKT3(%struct.msm_ringbuffer* %46, i32 %55, i32 2)
  %57 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %58 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %59 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @lower_32_bits(i32 %65)
  %67 = call i32 @OUT_RING(%struct.msm_ringbuffer* %57, i32 %66)
  %68 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %69 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %70 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @OUT_RING(%struct.msm_ringbuffer* %68, i32 %76)
  %78 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %79 = call i32 @OUT_PKT2(%struct.msm_ringbuffer* %78)
  br label %80

80:                                               ; preds = %27, %54, %43, %36
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %21

84:                                               ; preds = %21
  %85 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %86 = load i32, i32* @REG_AXXX_CP_SCRATCH_REG2, align 4
  %87 = call i32 @OUT_PKT0(%struct.msm_ringbuffer* %85, i32 %86, i32 1)
  %88 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %89 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %90 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @OUT_RING(%struct.msm_ringbuffer* %88, i32 %91)
  %93 = load %struct.adreno_gpu*, %struct.adreno_gpu** %7, align 8
  %94 = call i64 @adreno_is_a3xx(%struct.adreno_gpu* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %84
  %97 = load %struct.adreno_gpu*, %struct.adreno_gpu** %7, align 8
  %98 = call i64 @adreno_is_a4xx(%struct.adreno_gpu* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96, %84
  %101 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %102 = load i32, i32* @CP_EVENT_WRITE, align 4
  %103 = call i32 @OUT_PKT3(%struct.msm_ringbuffer* %101, i32 %102, i32 1)
  %104 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %105 = load i32, i32* @HLSQ_FLUSH, align 4
  %106 = call i32 @OUT_RING(%struct.msm_ringbuffer* %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %96
  %108 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %109 = load i32, i32* @CP_WAIT_FOR_IDLE, align 4
  %110 = call i32 @OUT_PKT3(%struct.msm_ringbuffer* %108, i32 %109, i32 1)
  %111 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %112 = call i32 @OUT_RING(%struct.msm_ringbuffer* %111, i32 0)
  %113 = load %struct.adreno_gpu*, %struct.adreno_gpu** %7, align 8
  %114 = call i32 @adreno_is_a2xx(%struct.adreno_gpu* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %107
  %117 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %118 = load i32, i32* @CP_EVENT_WRITE, align 4
  %119 = call i32 @OUT_PKT3(%struct.msm_ringbuffer* %117, i32 %118, i32 3)
  %120 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %121 = load i32, i32* @CACHE_FLUSH_TS, align 4
  %122 = call i32 @BIT(i32 31)
  %123 = or i32 %121, %122
  %124 = call i32 @OUT_RING(%struct.msm_ringbuffer* %120, i32 %123)
  %125 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %126 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %127 = load i32, i32* @fence, align 4
  %128 = call i32 @rbmemptr(%struct.msm_ringbuffer* %126, i32 %127)
  %129 = call i32 @OUT_RING(%struct.msm_ringbuffer* %125, i32 %128)
  %130 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %131 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %132 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @OUT_RING(%struct.msm_ringbuffer* %130, i32 %133)
  br label %157

135:                                              ; preds = %107
  %136 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %137 = load i32, i32* @CP_EVENT_WRITE, align 4
  %138 = call i32 @OUT_PKT3(%struct.msm_ringbuffer* %136, i32 %137, i32 3)
  %139 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %140 = load i32, i32* @CACHE_FLUSH_TS, align 4
  %141 = call i32 @OUT_RING(%struct.msm_ringbuffer* %139, i32 %140)
  %142 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %143 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %144 = load i32, i32* @fence, align 4
  %145 = call i32 @rbmemptr(%struct.msm_ringbuffer* %143, i32 %144)
  %146 = call i32 @OUT_RING(%struct.msm_ringbuffer* %142, i32 %145)
  %147 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %148 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %5, align 8
  %149 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @OUT_RING(%struct.msm_ringbuffer* %147, i32 %150)
  %152 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %153 = load i32, i32* @CP_INTERRUPT, align 4
  %154 = call i32 @OUT_PKT3(%struct.msm_ringbuffer* %152, i32 %153, i32 1)
  %155 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %156 = call i32 @OUT_RING(%struct.msm_ringbuffer* %155, i32 -2147483648)
  br label %157

157:                                              ; preds = %135, %116
  %158 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %159 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %158, i32 0, i32 0
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)*, i32 (%struct.msm_gpu*, %struct.msm_ringbuffer*)** %161, align 8
  %163 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %164 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %9, align 8
  %165 = call i32 %162(%struct.msm_gpu* %163, %struct.msm_ringbuffer* %164)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @OUT_PKT3(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i32 @adreno_is_a430(%struct.adreno_gpu*) #1

declare dso_local i32 @OUT_RING(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @OUT_PKT2(%struct.msm_ringbuffer*) #1

declare dso_local i32 @OUT_PKT0(%struct.msm_ringbuffer*, i32, i32) #1

declare dso_local i64 @adreno_is_a3xx(%struct.adreno_gpu*) #1

declare dso_local i64 @adreno_is_a4xx(%struct.adreno_gpu*) #1

declare dso_local i32 @adreno_is_a2xx(%struct.adreno_gpu*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rbmemptr(%struct.msm_ringbuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
