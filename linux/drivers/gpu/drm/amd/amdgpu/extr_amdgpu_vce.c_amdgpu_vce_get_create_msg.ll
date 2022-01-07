; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_get_create_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_get_create_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_bo = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_job = type { %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vce_get_create_msg(%struct.amdgpu_ring* %0, i32 %1, %struct.amdgpu_bo* %2, %struct.dma_fence** %3) #0 {
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
  store i32 1024, i32* %10, align 4
  store %struct.dma_fence* null, %struct.dma_fence** %13, align 8
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i32 @amdgpu_job_alloc_with_ib(%struct.TYPE_4__* %19, i32 4096, %struct.amdgpu_job** %11)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %16, align 4
  store i32 %24, i32* %5, align 4
  br label %321

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
  store i32 12, i32* %42, align 4
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
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 24
  %69 = icmp sge i32 %68, 52
  br i1 %69, label %70, label %80

70:                                               ; preds = %25
  %71 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %72 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %75 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  store i32 64, i32* %79, align 4
  br label %90

80:                                               ; preds = %25
  %81 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %82 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %85 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  store i32 48, i32* %89, align 4
  br label %90

90:                                               ; preds = %80, %70
  %91 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %92 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %95 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  store i32 16777217, i32* %99, align 4
  %100 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %101 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %104 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  store i32 0, i32* %108, align 4
  %109 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %110 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %113 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  store i32 66, i32* %117, align 4
  %118 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %119 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %122 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  store i32 10, i32* %126, align 4
  %127 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %128 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %131 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %129, i64 %134
  store i32 1, i32* %135, align 4
  %136 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %137 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %140 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  store i32 128, i32* %144, align 4
  %145 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %146 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %149 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  store i32 96, i32* %153, align 4
  %154 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %155 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %158 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %156, i64 %161
  store i32 256, i32* %162, align 4
  %163 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %164 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %167 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  store i32 256, i32* %171, align 4
  %172 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %173 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %176 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %174, i64 %179
  store i32 12, i32* %180, align 4
  %181 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %182 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %185 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %183, i64 %188
  store i32 0, i32* %189, align 4
  %190 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %191 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %190, i32 0, i32 0
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = ashr i32 %195, 24
  %197 = icmp sge i32 %196, 52
  br i1 %197, label %198, label %235

198:                                              ; preds = %90
  %199 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %200 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %203 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %201, i64 %206
  store i32 0, i32* %207, align 4
  %208 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %209 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %212 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %210, i64 %215
  store i32 0, i32* %216, align 4
  %217 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %218 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %221 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %219, i64 %224
  store i32 0, i32* %225, align 4
  %226 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %227 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %230 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %228, i64 %233
  store i32 0, i32* %234, align 4
  br label %235

235:                                              ; preds = %198, %90
  %236 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %237 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %240 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %238, i64 %243
  store i32 20, i32* %244, align 4
  %245 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %246 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %249 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i32, i32* %247, i64 %252
  store i32 83886085, i32* %253, align 4
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @upper_32_bits(i32 %254)
  %256 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %257 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %260 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %260, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %258, i64 %263
  store i32 %255, i32* %264, align 4
  %265 = load i32, i32* %14, align 4
  %266 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %267 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %270 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i32, i32* %268, i64 %273
  store i32 %265, i32* %274, align 4
  %275 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %276 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %279 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i32, i32* %277, i64 %282
  store i32 1, i32* %283, align 4
  %284 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %285 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  store i32 %286, i32* %15, align 4
  br label %287

287:                                              ; preds = %297, %235
  %288 = load i32, i32* %15, align 4
  %289 = icmp ult i32 %288, 1024
  br i1 %289, label %290, label %300

290:                                              ; preds = %287
  %291 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %292 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %15, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  store i32 0, i32* %296, align 4
  br label %297

297:                                              ; preds = %290
  %298 = load i32, i32* %15, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %15, align 4
  br label %287

300:                                              ; preds = %287
  %301 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %302 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %303 = call i32 @amdgpu_job_submit_direct(%struct.amdgpu_job* %301, %struct.amdgpu_ring* %302, %struct.dma_fence** %13)
  store i32 %303, i32* %16, align 4
  %304 = load i32, i32* %16, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %300
  br label %317

307:                                              ; preds = %300
  %308 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %309 = icmp ne %struct.dma_fence** %308, null
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  %311 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %312 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %311)
  %313 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  store %struct.dma_fence* %312, %struct.dma_fence** %313, align 8
  br label %314

314:                                              ; preds = %310, %307
  %315 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %316 = call i32 @dma_fence_put(%struct.dma_fence* %315)
  store i32 0, i32* %5, align 4
  br label %321

317:                                              ; preds = %306
  %318 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %319 = call i32 @amdgpu_job_free(%struct.amdgpu_job* %318)
  %320 = load i32, i32* %16, align 4
  store i32 %320, i32* %5, align 4
  br label %321

321:                                              ; preds = %317, %314, %23
  %322 = load i32, i32* %5, align 4
  ret i32 %322
}

declare dso_local i32 @amdgpu_job_alloc_with_ib(%struct.TYPE_4__*, i32, %struct.amdgpu_job**) #1

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
