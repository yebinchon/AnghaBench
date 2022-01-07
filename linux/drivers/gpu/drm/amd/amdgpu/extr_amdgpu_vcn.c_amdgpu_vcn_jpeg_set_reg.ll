; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_jpeg_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vcn.c_amdgpu_vcn_jpeg_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_job = type { %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32*, i32 }

@PACKETJ_TYPE0 = common dso_local global i32 0, align 4
@PACKETJ_TYPE6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, i32, %struct.dma_fence**)* @amdgpu_vcn_jpeg_set_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vcn_jpeg_set_reg(%struct.amdgpu_ring* %0, i32 %1, %struct.dma_fence** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_fence**, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_job*, align 8
  %10 = alloca %struct.amdgpu_ib*, align 8
  %11 = alloca %struct.dma_fence*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_fence** %2, %struct.dma_fence*** %7, align 8
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %8, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %11, align 8
  store i32 16, i32* %12, align 4
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 0
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %19, align 8
  %21 = call i32 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device* %20, i32 64, %struct.amdgpu_job** %9)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %4, align 4
  br label %93

26:                                               ; preds = %3
  %27 = load %struct.amdgpu_job*, %struct.amdgpu_job** %9, align 8
  %28 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %27, i32 0, i32 0
  %29 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %28, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %29, i64 0
  store %struct.amdgpu_ib* %30, %struct.amdgpu_ib** %10, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PACKETJ_TYPE0, align 4
  %37 = call i8* @PACKETJ(i32 %35, i32 0, i32 0, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %10, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %10, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 -559038737, i32* %46, align 4
  store i32 2, i32* %13, align 4
  br label %47

47:                                               ; preds = %67, %26
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 16
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load i32, i32* @PACKETJ_TYPE6, align 4
  %52 = call i8* @PACKETJ(i32 0, i32 0, i32 0, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %10, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %10, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %13, align 4
  br label %47

70:                                               ; preds = %47
  %71 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %10, align 8
  %72 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %71, i32 0, i32 1
  store i32 16, i32* %72, align 8
  %73 = load %struct.amdgpu_job*, %struct.amdgpu_job** %9, align 8
  %74 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %75 = call i32 @amdgpu_job_submit_direct(%struct.amdgpu_job* %73, %struct.amdgpu_ring* %74, %struct.dma_fence** %11)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %89

79:                                               ; preds = %70
  %80 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %81 = icmp ne %struct.dma_fence** %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %84 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %83)
  %85 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  store %struct.dma_fence* %84, %struct.dma_fence** %85, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %88 = call i32 @dma_fence_put(%struct.dma_fence* %87)
  store i32 0, i32* %4, align 4
  br label %93

89:                                               ; preds = %78
  %90 = load %struct.amdgpu_job*, %struct.amdgpu_job** %9, align 8
  %91 = call i32 @amdgpu_job_free(%struct.amdgpu_job* %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %86, %24
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device*, i32, %struct.amdgpu_job**) #1

declare dso_local i8* @PACKETJ(i32, i32, i32, i32) #1

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
