; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_map_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_map_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_tt* }
%struct.ttm_tt = type { i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.amdgpu_ttm_tt = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.amdgpu_job = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32*, i64 }
%struct.dma_fence = type { i32 }

@AMDGPU_GTT_MAX_TRANSFER_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@AMDGPU_FENCE_OWNER_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_mem_reg*, i32, i32, i32, %struct.amdgpu_ring*, i32*)* @amdgpu_map_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_map_buffer(%struct.ttm_buffer_object* %0, %struct.ttm_mem_reg* %1, i32 %2, i32 %3, i32 %4, %struct.amdgpu_ring* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_buffer_object*, align 8
  %10 = alloca %struct.ttm_mem_reg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_ring*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.amdgpu_ttm_tt*, align 8
  %17 = alloca %struct.amdgpu_device*, align 8
  %18 = alloca %struct.ttm_tt*, align 8
  %19 = alloca %struct.amdgpu_job*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.dma_fence*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %9, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.amdgpu_ring* %5, %struct.amdgpu_ring** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %29 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %28, i32 0, i32 0
  %30 = load %struct.ttm_tt*, %struct.ttm_tt** %29, align 8
  %31 = bitcast %struct.ttm_tt* %30 to i8*
  %32 = bitcast i8* %31 to %struct.amdgpu_ttm_tt*
  store %struct.amdgpu_ttm_tt* %32, %struct.amdgpu_ttm_tt** %16, align 8
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %33, i32 0, i32 0
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %34, align 8
  store %struct.amdgpu_device* %35, %struct.amdgpu_device** %17, align 8
  %36 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %37 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %36, i32 0, i32 0
  %38 = load %struct.ttm_tt*, %struct.ttm_tt** %37, align 8
  store %struct.ttm_tt* %38, %struct.ttm_tt** %18, align 8
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AMDGPU_GTT_MAX_TRANSFER_SIZE, align 4
  %46 = mul nsw i32 %45, 8
  %47 = icmp slt i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %15, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @AMDGPU_GTT_MAX_TRANSFER_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %20, align 4
  br label %69

69:                                               ; preds = %73, %7
  %70 = load i32, i32* %20, align 4
  %71 = and i32 %70, 7
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* %20, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %20, align 4
  br label %69

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = mul i32 %77, 8
  store i32 %78, i32* %21, align 4
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  %80 = load i32, i32* %20, align 4
  %81 = mul i32 %80, 4
  %82 = load i32, i32* %21, align 4
  %83 = add i32 %81, %82
  %84 = call i32 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device* %79, i32 %83, %struct.amdgpu_job** %19)
  store i32 %84, i32* %27, align 4
  %85 = load i32, i32* %27, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* %27, align 4
  store i32 %88, i32* %8, align 4
  br label %186

89:                                               ; preds = %76
  %90 = load i32, i32* %20, align 4
  %91 = mul i32 %90, 4
  store i32 %91, i32* %24, align 4
  %92 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %93 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %24, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %24, align 4
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @amdgpu_bo_gpu_offset(i32 %105)
  store i32 %106, i32* %25, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @AMDGPU_GTT_MAX_TRANSFER_SIZE, align 4
  %109 = mul i32 %107, %108
  %110 = mul i32 %109, 8
  %111 = load i32, i32* %25, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %25, align 4
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  %114 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %115 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 0
  %118 = load i32, i32* %24, align 4
  %119 = load i32, i32* %25, align 4
  %120 = load i32, i32* %21, align 4
  %121 = call i32 @amdgpu_emit_copy_buffer(%struct.amdgpu_device* %113, %struct.TYPE_13__* %117, i32 %118, i32 %119, i32 %120)
  %122 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %123 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %124 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %123, i32 0, i32 0
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i64 0
  %127 = call i32 @amdgpu_ring_pad_ib(%struct.amdgpu_ring* %122, %struct.TYPE_13__* %126)
  %128 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %129 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %128, i32 0, i32 0
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %20, align 4
  %135 = icmp ugt i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @WARN_ON(i32 %136)
  %138 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %16, align 8
  %139 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @PAGE_SHIFT, align 4
  %144 = ashr i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  store i32* %146, i32** %22, align 8
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  %148 = load %struct.ttm_tt*, %struct.ttm_tt** %18, align 8
  %149 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %150 = call i32 @amdgpu_ttm_tt_pte_flags(%struct.amdgpu_device* %147, %struct.ttm_tt* %148, %struct.ttm_mem_reg* %149)
  store i32 %150, i32* %26, align 4
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load i32*, i32** %22, align 8
  %154 = load i32, i32* %26, align 4
  %155 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %156 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %155, i32 0, i32 0
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %20, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = call i32 @amdgpu_gart_map(%struct.amdgpu_device* %151, i32 0, i32 %152, i32* %153, i32 %154, i32* %163)
  store i32 %164, i32* %27, align 4
  %165 = load i32, i32* %27, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %89
  br label %182

168:                                              ; preds = %89
  %169 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  %171 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32, i32* @AMDGPU_FENCE_OWNER_UNDEFINED, align 4
  %174 = call i32 @amdgpu_job_submit(%struct.amdgpu_job* %169, i32* %172, i32 %173, %struct.dma_fence** %23)
  store i32 %174, i32* %27, align 4
  %175 = load i32, i32* %27, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %182

178:                                              ; preds = %168
  %179 = load %struct.dma_fence*, %struct.dma_fence** %23, align 8
  %180 = call i32 @dma_fence_put(%struct.dma_fence* %179)
  %181 = load i32, i32* %27, align 4
  store i32 %181, i32* %8, align 4
  br label %186

182:                                              ; preds = %177, %167
  %183 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %184 = call i32 @amdgpu_job_free(%struct.amdgpu_job* %183)
  %185 = load i32, i32* %27, align 4
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %182, %178, %87
  %187 = load i32, i32* %8, align 4
  ret i32 %187
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device*, i32, %struct.amdgpu_job**) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(i32) #1

declare dso_local i32 @amdgpu_emit_copy_buffer(%struct.amdgpu_device*, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_pad_ib(%struct.amdgpu_ring*, %struct.TYPE_13__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @amdgpu_ttm_tt_pte_flags(%struct.amdgpu_device*, %struct.ttm_tt*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @amdgpu_gart_map(%struct.amdgpu_device*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @amdgpu_job_submit(%struct.amdgpu_job*, i32*, i32, %struct.dma_fence**) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_job_free(%struct.amdgpu_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
