; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_dec_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_dec_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.amdgpu_bo = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_job = type { %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, %struct.amdgpu_bo*, %struct.dma_fence**)* @amdgpu_vcn_dec_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vcn_dec_send_msg(%struct.amdgpu_ring* %0, %struct.amdgpu_bo* %1, %struct.dma_fence** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca %struct.dma_fence**, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.dma_fence*, align 8
  %10 = alloca %struct.amdgpu_job*, align 8
  %11 = alloca %struct.amdgpu_ib*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %6, align 8
  store %struct.dma_fence** %2, %struct.dma_fence*** %7, align 8
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %8, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %9, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %19 = call i32 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device* %18, i32 64, %struct.amdgpu_job** %10)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %133

23:                                               ; preds = %3
  %24 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %25 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %24, i32 0, i32 0
  %26 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %25, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %26, i64 0
  store %struct.amdgpu_ib* %27, %struct.amdgpu_ib** %11, align 8
  %28 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %29 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @PACKET0(i32 %34, i32 0)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %11, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %11, align 8
  %43 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @PACKET0(i32 %50, i32 0)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %11, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  %58 = ashr i32 %57, 32
  %59 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %11, align 8
  %60 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  store i32 %58, i32* %62, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @PACKET0(i32 %67, i32 0)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %11, align 8
  %71 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %69, i32* %73, align 4
  %74 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %11, align 8
  %75 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  store i32 0, i32* %77, align 4
  store i32 6, i32* %13, align 4
  br label %78

78:                                               ; preds = %102, %23
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 16
  br i1 %80, label %81, label %105

81:                                               ; preds = %78
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @PACKET0(i32 %86, i32 0)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %11, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  %95 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %11, align 8
  %96 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %81
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 2
  store i32 %104, i32* %13, align 4
  br label %78

105:                                              ; preds = %78
  %106 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %11, align 8
  %107 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %106, i32 0, i32 1
  store i32 16, i32* %107, align 8
  %108 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %109 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %110 = call i32 @amdgpu_job_submit_direct(%struct.amdgpu_job* %108, %struct.amdgpu_ring* %109, %struct.dma_fence** %9)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %130

114:                                              ; preds = %105
  %115 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %116 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %117 = call i32 @amdgpu_bo_fence(%struct.amdgpu_bo* %115, %struct.dma_fence* %116, i32 0)
  %118 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %119 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %118)
  %120 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %6)
  %121 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %122 = icmp ne %struct.dma_fence** %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %125 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %124)
  %126 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  store %struct.dma_fence* %125, %struct.dma_fence** %126, align 8
  br label %127

127:                                              ; preds = %123, %114
  %128 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %129 = call i32 @dma_fence_put(%struct.dma_fence* %128)
  store i32 0, i32* %4, align 4
  br label %138

130:                                              ; preds = %113
  %131 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %132 = call i32 @amdgpu_job_free(%struct.amdgpu_job* %131)
  br label %133

133:                                              ; preds = %130, %22
  %134 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %135 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %134)
  %136 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %6)
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %133, %127
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device*, i32, %struct.amdgpu_job**) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i8* @PACKET0(i32, i32) #1

declare dso_local i32 @amdgpu_job_submit_direct(%struct.amdgpu_job*, %struct.amdgpu_ring*, %struct.dma_fence**) #1

declare dso_local i32 @amdgpu_bo_fence(%struct.amdgpu_bo*, %struct.dma_fence*, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

declare dso_local %struct.dma_fence* @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_job_free(%struct.amdgpu_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
