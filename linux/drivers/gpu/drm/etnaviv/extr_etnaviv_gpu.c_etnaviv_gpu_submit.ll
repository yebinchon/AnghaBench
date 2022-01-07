; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.etnaviv_gem_submit = type { i32, i32, i64, %struct.TYPE_4__, i64, i32, i64, %struct.etnaviv_gpu* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.etnaviv_gpu = type { i32, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { %struct.etnaviv_gem_submit*, i32*, %struct.dma_fence* }

@.str = private unnamed_addr constant [16 x i8] c"no free events\0A\00", align 1
@sync_point_perfmon_sample_pre = common dso_local global i32 0, align 4
@sync_point_perfmon_sample_post = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_fence* @etnaviv_gpu_submit(%struct.etnaviv_gem_submit* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.etnaviv_gem_submit*, align 8
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.etnaviv_gem_submit* %0, %struct.etnaviv_gem_submit** %3, align 8
  %10 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %11 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %10, i32 0, i32 7
  %12 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %11, align 8
  store %struct.etnaviv_gpu* %12, %struct.etnaviv_gpu** %4, align 8
  store i32 1, i32* %7, align 4
  %13 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %14 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %19 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pm_runtime_get_sync(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %189

25:                                               ; preds = %17
  %26 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %27 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %30 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 3, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %38 = call i32 @event_alloc(%struct.etnaviv_gpu* %35, i32 %36, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %189

43:                                               ; preds = %34
  %44 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %45 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %48 = call %struct.dma_fence* @etnaviv_gpu_fence_alloc(%struct.etnaviv_gpu* %47)
  store %struct.dma_fence* %48, %struct.dma_fence** %5, align 8
  %49 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %50 = icmp ne %struct.dma_fence* %49, null
  br i1 %50, label %67, label %51

51:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %63, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @event_free(%struct.etnaviv_gpu* %57, i32 %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %52

66:                                               ; preds = %52
  br label %184

67:                                               ; preds = %43
  %68 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %69 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %67
  %73 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %74 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @etnaviv_iommu_context_get(i64 %75)
  %77 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %78 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %81 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %83 = call i32 @etnaviv_gpu_start_fe_idleloop(%struct.etnaviv_gpu* %82)
  br label %94

84:                                               ; preds = %67
  %85 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %86 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @etnaviv_iommu_context_get(i64 %87)
  %89 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %90 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %93 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %92, i32 0, i32 6
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %84, %72
  %95 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %96 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %94
  %100 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %101 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32* @sync_point_perfmon_sample_pre, i32** %107, align 8
  %108 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %109 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %108, i32 0, i32 1
  %110 = call i32 @kref_get(i32* %109)
  %111 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %112 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %113 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store %struct.etnaviv_gem_submit* %111, %struct.etnaviv_gem_submit** %119, align 8
  %120 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @etnaviv_sync_point_queue(%struct.etnaviv_gpu* %120, i32 %122)
  br label %124

124:                                              ; preds = %99, %94
  %125 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %126 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %127 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  store %struct.dma_fence* %125, %struct.dma_fence** %133, align 8
  %134 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %135 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %137, 8
  %139 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %140 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i64 %138, i64* %141, align 8
  %142 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %143 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %144 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %147 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %152 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %151, i32 0, i32 3
  %153 = call i32 @etnaviv_buffer_queue(%struct.etnaviv_gpu* %142, i32 %145, i64 %148, i32 %150, %struct.TYPE_4__* %152)
  %154 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %155 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %183

158:                                              ; preds = %124
  %159 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %160 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %159, i32 0, i32 1
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  store i32* @sync_point_perfmon_sample_post, i32** %166, align 8
  %167 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %168 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %167, i32 0, i32 1
  %169 = call i32 @kref_get(i32* %168)
  %170 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %171 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %172 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %171, i32 0, i32 1
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  store %struct.etnaviv_gem_submit* %170, %struct.etnaviv_gem_submit** %178, align 8
  %179 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %180 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @etnaviv_sync_point_queue(%struct.etnaviv_gpu* %179, i32 %181)
  br label %183

183:                                              ; preds = %158, %124
  br label %184

184:                                              ; preds = %183, %66
  %185 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %186 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  store %struct.dma_fence* %188, %struct.dma_fence** %2, align 8
  br label %189

189:                                              ; preds = %184, %41, %24
  %190 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %190
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @event_alloc(%struct.etnaviv_gpu*, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dma_fence* @etnaviv_gpu_fence_alloc(%struct.etnaviv_gpu*) #1

declare dso_local i32 @event_free(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @etnaviv_iommu_context_get(i64) #1

declare dso_local i32 @etnaviv_gpu_start_fe_idleloop(%struct.etnaviv_gpu*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @etnaviv_sync_point_queue(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @etnaviv_buffer_queue(%struct.etnaviv_gpu*, i32, i64, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
