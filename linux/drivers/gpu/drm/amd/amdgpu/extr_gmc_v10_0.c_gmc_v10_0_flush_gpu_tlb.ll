; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_flush_gpu_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_flush_gpu_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__, %struct.TYPE_7__, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.amdgpu_device*, i32*)* }
%struct.dma_fence = type { i32 }
%struct.amdgpu_job = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32* }

@AMDGPU_MMHUB_0 = common dso_local global i64 0, align 8
@AMDGPU_GFXHUB_0 = common dso_local global i64 0, align 8
@AMDGPU_FENCE_OWNER_UNDEFINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Error flushing GPU TLB using the SDMA (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i64, i64, i64)* @gmc_v10_0_flush_gpu_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v10_0_flush_gpu_tlb(%struct.amdgpu_device* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.amdgpu_ring*, align 8
  %10 = alloca %struct.dma_fence*, align 8
  %11 = alloca %struct.amdgpu_job*, align 8
  %12 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %15, align 8
  store %struct.amdgpu_ring* %16, %struct.amdgpu_ring** %9, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (%struct.amdgpu_device*, i32*)*, i32 (%struct.amdgpu_device*, i32*)** %20, align 8
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %23 = call i32 %21(%struct.amdgpu_device* %22, i32* null)
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @AMDGPU_MMHUB_0, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @AMDGPU_MMHUB_0, align 8
  %35 = call i32 @gmc_v10_0_flush_vm_hub(%struct.amdgpu_device* %32, i64 %33, i64 %34, i32 0)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %138

40:                                               ; preds = %4
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56, %51, %40
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %65 = call i32 @gmc_v10_0_flush_vm_hub(%struct.amdgpu_device* %62, i64 %63, i64 %64, i32 0)
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %138

70:                                               ; preds = %56
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %72 = call i32 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device* %71, i32 64, %struct.amdgpu_job** %11)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %131

76:                                               ; preds = %70
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @amdgpu_gmc_pd_addr(i32 %80)
  %82 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %83 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %85 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %87 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %92 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %97 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %95, i64 %102
  store i32 %90, i32* %103, align 4
  %104 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %105 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %106 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 0
  %109 = call i32 @amdgpu_ring_pad_ib(%struct.amdgpu_ring* %104, %struct.TYPE_10__* %108)
  %110 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* @AMDGPU_FENCE_OWNER_UNDEFINED, align 4
  %115 = call i32 @amdgpu_job_submit(%struct.amdgpu_job* %110, i32* %113, i32 %114, %struct.dma_fence** %10)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %76
  br label %128

119:                                              ; preds = %76
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %125 = call i32 @dma_fence_wait(%struct.dma_fence* %124, i32 0)
  %126 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %127 = call i32 @dma_fence_put(%struct.dma_fence* %126)
  br label %138

128:                                              ; preds = %118
  %129 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %130 = call i32 @amdgpu_job_free(%struct.amdgpu_job* %129)
  br label %131

131:                                              ; preds = %128, %75
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %131, %119, %61, %31
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gmc_v10_0_flush_vm_hub(%struct.amdgpu_device*, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device*, i32, %struct.amdgpu_job**) #1

declare dso_local i32 @amdgpu_gmc_pd_addr(i32) #1

declare dso_local i32 @amdgpu_ring_pad_ib(%struct.amdgpu_ring*, %struct.TYPE_10__*) #1

declare dso_local i32 @amdgpu_job_submit(%struct.amdgpu_job*, i32*, i32, %struct.dma_fence**) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_job_free(%struct.amdgpu_job*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
