; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_get_destroy_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_get_destroy_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_job = type { %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32, i32* }

@AMDGPU_FENCE_OWNER_UNDEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vce_get_destroy_msg(%struct.amdgpu_ring* %0, i32 %1, i32 %2, %struct.dma_fence** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_fence**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_job*, align 8
  %12 = alloca %struct.amdgpu_ib*, align 8
  %13 = alloca %struct.dma_fence*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dma_fence** %3, %struct.dma_fence*** %9, align 8
  store i32 1024, i32* %10, align 4
  store %struct.dma_fence* null, %struct.dma_fence** %13, align 8
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @amdgpu_job_alloc_with_ib(%struct.TYPE_4__* %18, i32 4096, %struct.amdgpu_job** %11)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %5, align 4
  br label %199

24:                                               ; preds = %4
  %25 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %26 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %25, i32 0, i32 0
  %27 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %26, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %27, i64 0
  store %struct.amdgpu_ib* %28, %struct.amdgpu_ib** %12, align 8
  %29 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32 12, i32* %39, align 4
  %40 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  store i32 %49, i32* %58, align 4
  %59 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %60 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  store i32 32, i32* %67, align 4
  %68 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %69 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %72 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  store i32 2, i32* %76, align 4
  %77 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %78 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %81 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  store i32 -1, i32* %85, align 4
  %86 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %87 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  store i32 1, i32* %94, align 4
  %95 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %96 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %99 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  store i32 0, i32* %103, align 4
  %104 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %105 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %108 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  store i32 0, i32* %112, align 4
  %113 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %114 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %117 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %115, i64 %120
  store i32 -1, i32* %121, align 4
  %122 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %123 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %126 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %124, i64 %129
  store i32 0, i32* %130, align 4
  %131 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %132 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %135 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %133, i64 %138
  store i32 8, i32* %139, align 4
  %140 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %141 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %144 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %142, i64 %147
  store i32 33554433, i32* %148, align 4
  %149 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %150 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %162, %24
  %153 = load i32, i32* %14, align 4
  %154 = icmp ult i32 %153, 1024
  br i1 %154, label %155, label %165

155:                                              ; preds = %152
  %156 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %12, align 8
  %157 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 0, i32* %161, align 4
  br label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %152

165:                                              ; preds = %152
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %170 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %171 = call i32 @amdgpu_job_submit_direct(%struct.amdgpu_job* %169, %struct.amdgpu_ring* %170, %struct.dma_fence** %13)
  store i32 %171, i32* %15, align 4
  br label %181

172:                                              ; preds = %165
  %173 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %174 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %175 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* @AMDGPU_FENCE_OWNER_UNDEFINED, align 4
  %180 = call i32 @amdgpu_job_submit(%struct.amdgpu_job* %173, i32* %178, i32 %179, %struct.dma_fence** %13)
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %172, %168
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %195

185:                                              ; preds = %181
  %186 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %187 = icmp ne %struct.dma_fence** %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %190 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %189)
  %191 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  store %struct.dma_fence* %190, %struct.dma_fence** %191, align 8
  br label %192

192:                                              ; preds = %188, %185
  %193 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %194 = call i32 @dma_fence_put(%struct.dma_fence* %193)
  store i32 0, i32* %5, align 4
  br label %199

195:                                              ; preds = %184
  %196 = load %struct.amdgpu_job*, %struct.amdgpu_job** %11, align 8
  %197 = call i32 @amdgpu_job_free(%struct.amdgpu_job* %196)
  %198 = load i32, i32* %15, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %195, %192, %22
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @amdgpu_job_alloc_with_ib(%struct.TYPE_4__*, i32, %struct.amdgpu_job**) #1

declare dso_local i32 @amdgpu_job_submit_direct(%struct.amdgpu_job*, %struct.amdgpu_ring*, %struct.dma_fence**) #1

declare dso_local i32 @amdgpu_job_submit(%struct.amdgpu_job*, i32*, i32, %struct.dma_fence**) #1

declare dso_local %struct.dma_fence* @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_job_free(%struct.amdgpu_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
