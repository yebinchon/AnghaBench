; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_enc_get_destroy_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_enc_get_destroy_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_bo = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_job = type { %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i32, %struct.amdgpu_bo*, %struct.dma_fence**)* @uvd_v6_0_enc_get_destroy_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v6_0_enc_get_destroy_msg(%struct.amdgpu_ring* %0, i32 %1, %struct.amdgpu_bo* %2, %struct.dma_fence** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_bo*, align 8
  %9 = alloca %struct.dma_fence**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_job*, align 8
  %12 = alloca %struct.amdgpu_ib*, align 8
  %13 = alloca %struct.dma_fence*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.amdgpu_bo* %2, %struct.amdgpu_bo** %8, align 8
  store %struct.dma_fence** %3, %struct.dma_fence*** %9, align 8
  store i32 16, i32* %10, align 4
  store %struct.dma_fence* null, %struct.dma_fence** %13, align 8
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @amdgpu_job_alloc_with_ib(i32 %19, i32 64, %struct.amdgpu_job** %11)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %16, align 4
  store i32 %24, i32* %5, align 4
  br label %192

25:                                               ; preds = %4
  %26 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %27 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %26, i32 0, i32 0
  %28 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %27, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %28, i64 0
  store %struct.amdgpu_ib* %29, %struct.amdgpu_ib** %12, align 8
  %30 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %8, align 8
  %31 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  store i32 24, i32* %42, align 4
  %43 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  store i32 %52, i32* %61, align 4
  %62 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %66 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  store i32 65536, i32* %70, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @upper_32_bits(i32 %71)
  %73 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  store i32 %72, i32* %81, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %87 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  store i32 %82, i32* %91, align 4
  %92 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %93 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %96 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %94, i64 %99
  store i32 20, i32* %100, align 4
  %101 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %102 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %105 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  store i32 2, i32* %109, align 4
  %110 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %111 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %114 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  store i32 28, i32* %118, align 4
  %119 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %120 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %123 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  store i32 1, i32* %127, align 4
  %128 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %129 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %132 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  store i32 0, i32* %136, align 4
  %137 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %138 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %141 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  store i32 8, i32* %145, align 4
  %146 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %147 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %150 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %148, i64 %153
  store i32 134217730, i32* %154, align 4
  %155 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %156 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %168, %25
  %159 = load i32, i32* %15, align 4
  %160 = icmp ult i32 %159, 16
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %163 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 0, i32* %167, align 4
  br label %168

168:                                              ; preds = %161
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %15, align 4
  br label %158

171:                                              ; preds = %158
  %172 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %173 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %174 = call i32 @amdgpu_job_submit_direct(%struct.amdgpu_job* %172, %struct.amdgpu_ring* %173, %struct.dma_fence** %13)
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %188

178:                                              ; preds = %171
  %179 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %180 = icmp ne %struct.dma_fence** %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %183 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %182)
  %184 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  store %struct.dma_fence* %183, %struct.dma_fence** %184, align 8
  br label %185

185:                                              ; preds = %181, %178
  %186 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %187 = call i32 @dma_fence_put(%struct.dma_fence* %186)
  store i32 0, i32* %5, align 4
  br label %192

188:                                              ; preds = %177
  %189 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %190 = call i32 @amdgpu_job_free(%struct.amdgpu_job* %189)
  %191 = load i32, i32* %16, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %188, %185, %23
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @amdgpu_job_alloc_with_ib(i32, i32, %struct.amdgpu_job**) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @amdgpu_job_submit_direct(%struct.amdgpu_job*, %struct.amdgpu_ring*, %struct.dma_fence**) #1

declare dso_local %struct.dma_fence* @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_job_free(%struct.amdgpu_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
