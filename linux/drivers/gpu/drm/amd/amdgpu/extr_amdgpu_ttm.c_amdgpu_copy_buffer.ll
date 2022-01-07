; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_copy_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_copy_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_7__, %struct.amdgpu_device* }
%struct.TYPE_7__ = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.dma_resv = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_job = type { i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Trying to move memory with ring turned off.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_FENCE_OWNER_UNDEFINED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"sync failed (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Error scheduling IBs (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_copy_buffer(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i64 %3, %struct.dma_resv* %4, %struct.dma_fence** %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.dma_resv*, align 8
  %15 = alloca %struct.dma_fence**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.amdgpu_device*, align 8
  %19 = alloca %struct.amdgpu_job*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store %struct.dma_resv* %4, %struct.dma_resv** %14, align 8
  store %struct.dma_fence** %5, %struct.dma_fence*** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 1
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %27, align 8
  store %struct.amdgpu_device* %28, %struct.amdgpu_device** %18, align 8
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %8
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %182

41:                                               ; preds = %31, %8
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %20, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %20, align 8
  %50 = call i32 @DIV_ROUND_UP(i64 %48, i64 %49)
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %21, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul i32 %51, %57
  store i32 %58, i32* %22, align 4
  br label %59

59:                                               ; preds = %63, %41
  %60 = load i32, i32* %22, align 4
  %61 = and i32 %60, 7
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %22, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %22, align 4
  br label %59

66:                                               ; preds = %59
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  %68 = load i32, i32* %22, align 4
  %69 = mul i32 %68, 4
  %70 = call i32 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device* %67, i32 %69, %struct.amdgpu_job** %19)
  store i32 %70, i32* %24, align 4
  %71 = load i32, i32* %24, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %24, align 4
  store i32 %74, i32* %9, align 4
  br label %182

75:                                               ; preds = %66
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @amdgpu_gmc_pd_addr(i32 %82)
  %84 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %85 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %87 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %78, %75
  %89 = load %struct.dma_resv*, %struct.dma_resv** %14, align 8
  %90 = icmp ne %struct.dma_resv* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  %93 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %94 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %93, i32 0, i32 2
  %95 = load %struct.dma_resv*, %struct.dma_resv** %14, align 8
  %96 = load i32, i32* @AMDGPU_FENCE_OWNER_UNDEFINED, align 4
  %97 = call i32 @amdgpu_sync_resv(%struct.amdgpu_device* %92, i32* %94, %struct.dma_resv* %95, i32 %96, i32 0)
  store i32 %97, i32* %24, align 4
  %98 = load i32, i32* %24, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* %24, align 4
  %102 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %176

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %88
  store i32 0, i32* %23, align 4
  br label %105

105:                                              ; preds = %135, %104
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* %21, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %105
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* %20, align 8
  %112 = call i64 @min(i64 %110, i64 %111)
  store i64 %112, i64* %25, align 8
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  %114 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %115 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 0
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i64, i64* %25, align 8
  %121 = call i32 @amdgpu_emit_copy_buffer(%struct.amdgpu_device* %113, %struct.TYPE_11__* %117, i32 %118, i32 %119, i64 %120)
  %122 = load i64, i64* %25, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %11, align 4
  %127 = load i64, i64* %25, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %12, align 4
  %132 = load i64, i64* %25, align 8
  %133 = load i64, i64* %13, align 8
  %134 = sub nsw i64 %133, %132
  store i64 %134, i64* %13, align 8
  br label %135

135:                                              ; preds = %109
  %136 = load i32, i32* %23, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %23, align 4
  br label %105

138:                                              ; preds = %105
  %139 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %140 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %141 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i64 0
  %144 = call i32 @amdgpu_ring_pad_ib(%struct.amdgpu_ring* %139, %struct.TYPE_11__* %143)
  %145 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %146 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %145, i32 0, i32 1
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %22, align 4
  %152 = icmp ugt i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @WARN_ON(i32 %153)
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %138
  %158 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %159 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %160 = load %struct.dma_fence**, %struct.dma_fence*** %15, align 8
  %161 = call i32 @amdgpu_job_submit_direct(%struct.amdgpu_job* %158, %struct.amdgpu_ring* %159, %struct.dma_fence** %160)
  store i32 %161, i32* %24, align 4
  br label %170

162:                                              ; preds = %138
  %163 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  %165 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* @AMDGPU_FENCE_OWNER_UNDEFINED, align 4
  %168 = load %struct.dma_fence**, %struct.dma_fence*** %15, align 8
  %169 = call i32 @amdgpu_job_submit(%struct.amdgpu_job* %163, i32* %166, i32 %167, %struct.dma_fence** %168)
  store i32 %169, i32* %24, align 4
  br label %170

170:                                              ; preds = %162, %157
  %171 = load i32, i32* %24, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %176

174:                                              ; preds = %170
  %175 = load i32, i32* %24, align 4
  store i32 %175, i32* %9, align 4
  br label %182

176:                                              ; preds = %173, %100
  %177 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %178 = call i32 @amdgpu_job_free(%struct.amdgpu_job* %177)
  %179 = load i32, i32* %24, align 4
  %180 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* %24, align 4
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %176, %174, %73, %37
  %183 = load i32, i32* %9, align 4
  ret i32 %183
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device*, i32, %struct.amdgpu_job**) #1

declare dso_local i32 @amdgpu_gmc_pd_addr(i32) #1

declare dso_local i32 @amdgpu_sync_resv(%struct.amdgpu_device*, i32*, %struct.dma_resv*, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @amdgpu_emit_copy_buffer(%struct.amdgpu_device*, %struct.TYPE_11__*, i32, i32, i64) #1

declare dso_local i32 @amdgpu_ring_pad_ib(%struct.amdgpu_ring*, %struct.TYPE_11__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @amdgpu_job_submit_direct(%struct.amdgpu_job*, %struct.amdgpu_ring*, %struct.dma_fence**) #1

declare dso_local i32 @amdgpu_job_submit(%struct.amdgpu_job*, i32*, i32, %struct.dma_fence**) #1

declare dso_local i32 @amdgpu_job_free(%struct.amdgpu_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
