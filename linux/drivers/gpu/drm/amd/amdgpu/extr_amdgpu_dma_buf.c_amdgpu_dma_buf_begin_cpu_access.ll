; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_dma_buf_begin_cpu_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_dma_buf_begin_cpu_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.dma_buf = type { i32 }
%struct.amdgpu_bo = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_device = type { i32 }

@__const.amdgpu_dma_buf_begin_cpu_access.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, i32)* @amdgpu_dma_buf_begin_cpu_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dma_buf_begin_cpu_access(%struct.dma_buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.ttm_operation_ctx, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %13 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(i32 %14)
  store %struct.amdgpu_bo* %15, %struct.amdgpu_bo** %6, align 8
  %16 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %19)
  store %struct.amdgpu_device* %20, %struct.amdgpu_device** %7, align 8
  %21 = bitcast %struct.ttm_operation_ctx* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.amdgpu_dma_buf_begin_cpu_access.ctx to i8*), i64 8, i1 false)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %23 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @amdgpu_display_supported_domains(%struct.amdgpu_device* %22, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %2
  %35 = phi i1 [ true, %2 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %34
  store i32 0, i32* %3, align 4
  br label %80

45:                                               ; preds = %39
  %46 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %47 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %46, i32 0)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %80

55:                                               ; preds = %45
  %56 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %57 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %55
  %61 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %62 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %69 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %70 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %68, i32 %69)
  %71 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %72 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %71, i32 0, i32 2
  %73 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %74 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %73, i32 0, i32 1
  %75 = call i32 @ttm_bo_validate(%struct.TYPE_2__* %72, i32* %74, %struct.ttm_operation_ctx* %8)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %67, %60, %55
  %77 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %78 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %53, %44
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(i32) #1

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @amdgpu_display_supported_domains(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_2__*, i32*, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
