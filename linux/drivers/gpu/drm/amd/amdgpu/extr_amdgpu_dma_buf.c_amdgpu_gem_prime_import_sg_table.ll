; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_gem_prime_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dma_buf.c_amdgpu_gem_prime_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32, %struct.dma_resv* }
%struct.dma_resv = type { i32 }
%struct.sg_table = type { i32 }
%struct.amdgpu_bo = type { i32, %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { %struct.drm_gem_object, %struct.TYPE_4__*, %struct.sg_table* }
%struct.TYPE_4__ = type { %struct.sg_table* }
%struct.amdgpu_bo_param = type { %struct.dma_resv*, i32, i64, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@ttm_bo_type_sg = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i8* null, align 8
@amdgpu_dmabuf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @amdgpu_gem_prime_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.dma_resv*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca %struct.amdgpu_bo*, align 8
  %11 = alloca %struct.amdgpu_bo_param, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %13 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %14 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.dma_resv*, %struct.dma_resv** %16, align 8
  store %struct.dma_resv* %17, %struct.dma_resv** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %19, align 8
  store %struct.amdgpu_device* %20, %struct.amdgpu_device** %9, align 8
  %21 = call i32 @memset(%struct.amdgpu_bo_param* %11, i32 0, i32 40)
  %22 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %23 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @AMDGPU_GEM_DOMAIN_CPU, align 4
  %31 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @ttm_bo_type_sg, align 4
  %34 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.dma_resv*, %struct.dma_resv** %8, align 8
  %36 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 0
  store %struct.dma_resv* %35, %struct.dma_resv** %36, align 8
  %37 = load %struct.dma_resv*, %struct.dma_resv** %8, align 8
  %38 = call i32 @dma_resv_lock(%struct.dma_resv* %37, i32* null)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %40 = call i32 @amdgpu_bo_create(%struct.amdgpu_device* %39, %struct.amdgpu_bo_param* %11, %struct.amdgpu_bo** %10)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  br label %76

44:                                               ; preds = %3
  %45 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %46 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %47 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store %struct.sg_table* %45, %struct.sg_table** %48, align 8
  %49 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %50 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %51 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.sg_table* %49, %struct.sg_table** %54, align 8
  %55 = load i8*, i8** @AMDGPU_GEM_DOMAIN_GTT, align 8
  %56 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %57 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @AMDGPU_GEM_DOMAIN_GTT, align 8
  %59 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %60 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %62 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, @amdgpu_dmabuf_ops
  br i1 %66, label %67, label %70

67:                                               ; preds = %44
  %68 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %69 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %44
  %71 = load %struct.dma_resv*, %struct.dma_resv** %8, align 8
  %72 = call i32 @dma_resv_unlock(%struct.dma_resv* %71)
  %73 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %74 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store %struct.drm_gem_object* %75, %struct.drm_gem_object** %4, align 8
  br label %81

76:                                               ; preds = %43
  %77 = load %struct.dma_resv*, %struct.dma_resv** %8, align 8
  %78 = call i32 @dma_resv_unlock(%struct.dma_resv* %77)
  %79 = load i32, i32* %12, align 4
  %80 = call %struct.drm_gem_object* @ERR_PTR(i32 %79)
  store %struct.drm_gem_object* %80, %struct.drm_gem_object** %4, align 8
  br label %81

81:                                               ; preds = %76, %70
  %82 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %82
}

declare dso_local i32 @memset(%struct.amdgpu_bo_param*, i32, i32) #1

declare dso_local i32 @dma_resv_lock(%struct.dma_resv*, i32*) #1

declare dso_local i32 @amdgpu_bo_create(%struct.amdgpu_device*, %struct.amdgpu_bo_param*, %struct.amdgpu_bo**) #1

declare dso_local i32 @dma_resv_unlock(%struct.dma_resv*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
