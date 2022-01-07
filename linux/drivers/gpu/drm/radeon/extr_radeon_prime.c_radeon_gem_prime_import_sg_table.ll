; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_prime.c_radeon_gem_prime_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_prime.c_radeon_gem_prime_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.dma_resv* }
%struct.dma_resv = type { i32 }
%struct.sg_table = type { i32 }
%struct.radeon_bo = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.drm_gem_object }

@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @radeon_gem_prime_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.dma_resv*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca %struct.radeon_bo*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %12 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %13 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.dma_resv*, %struct.dma_resv** %15, align 8
  store %struct.dma_resv* %16, %struct.dma_resv** %8, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %9, align 8
  %20 = load %struct.dma_resv*, %struct.dma_resv** %8, align 8
  %21 = call i32 @dma_resv_lock(%struct.dma_resv* %20, i32* null)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %23 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %24 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %30 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %31 = load %struct.dma_resv*, %struct.dma_resv** %8, align 8
  %32 = call i32 @radeon_bo_create(%struct.radeon_device* %22, i32 %27, i32 %28, i32 0, i32 %29, i32 0, %struct.sg_table* %30, %struct.dma_resv* %31, %struct.radeon_bo** %10)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.dma_resv*, %struct.dma_resv** %8, align 8
  %34 = call i32 @dma_resv_unlock(%struct.dma_resv* %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* %11, align 4
  %39 = call %struct.drm_gem_object* @ERR_PTR(i32 %38)
  store %struct.drm_gem_object* %39, %struct.drm_gem_object** %4, align 8
  br label %60

40:                                               ; preds = %3
  %41 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %46 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %45, i32 0, i32 2
  %47 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %46, i32* %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %56 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %58 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store %struct.drm_gem_object* %59, %struct.drm_gem_object** %4, align 8
  br label %60

60:                                               ; preds = %40, %37
  %61 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %61
}

declare dso_local i32 @dma_resv_lock(%struct.dma_resv*, i32*) #1

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32, %struct.sg_table*, %struct.dma_resv*, %struct.radeon_bo**) #1

declare dso_local i32 @dma_resv_unlock(%struct.dma_resv*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
