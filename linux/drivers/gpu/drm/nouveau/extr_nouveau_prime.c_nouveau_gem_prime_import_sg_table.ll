; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_prime.c_nouveau_gem_prime_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_prime.c_nouveau_gem_prime_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.dma_resv* }
%struct.dma_resv = type { i32 }
%struct.sg_table = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_bo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.drm_gem_object }

@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_GART = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @nouveau_gem_prime_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dma_buf_attachment*, align 8
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.nouveau_bo*, align 8
  %10 = alloca %struct.dma_resv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %5, align 8
  store %struct.sg_table* %2, %struct.sg_table** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %7, align 8
  %17 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %18 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.dma_resv*, %struct.dma_resv** %20, align 8
  store %struct.dma_resv* %21, %struct.dma_resv** %10, align 8
  %22 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %23 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.dma_resv*, %struct.dma_resv** %10, align 8
  %29 = call i32 @dma_resv_lock(%struct.dma_resv* %28, i32* null)
  %30 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %30, i32 0, i32 0
  %32 = load i32, i32* %12, align 4
  %33 = call %struct.nouveau_bo* @nouveau_bo_alloc(i32* %31, i32* %11, i32* %13, i32 %32, i32 0, i32 0)
  store %struct.nouveau_bo* %33, %struct.nouveau_bo** %9, align 8
  %34 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %35 = call i64 @IS_ERR(%struct.nouveau_bo* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %39 = call %struct.drm_gem_object* @ERR_CAST(%struct.nouveau_bo* %38)
  store %struct.drm_gem_object* %39, %struct.drm_gem_object** %8, align 8
  br label %75

40:                                               ; preds = %3
  %41 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  %42 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %43 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %46 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @drm_gem_object_init(%struct.drm_device* %44, %struct.drm_gem_object* %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = call i32 @nouveau_bo_ref(i32* null, %struct.nouveau_bo** %9)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.drm_gem_object* @ERR_PTR(i32 %55)
  store %struct.drm_gem_object* %56, %struct.drm_gem_object** %8, align 8
  br label %75

57:                                               ; preds = %40
  %58 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %63 = load %struct.dma_resv*, %struct.dma_resv** %10, align 8
  %64 = call i32 @nouveau_bo_init(%struct.nouveau_bo* %58, i32 %59, i32 %60, i32 %61, %struct.sg_table* %62, %struct.dma_resv* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = call i32 @nouveau_bo_ref(i32* null, %struct.nouveau_bo** %9)
  %69 = load i32, i32* %14, align 4
  %70 = call %struct.drm_gem_object* @ERR_PTR(i32 %69)
  store %struct.drm_gem_object* %70, %struct.drm_gem_object** %8, align 8
  br label %75

71:                                               ; preds = %57
  %72 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %73 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store %struct.drm_gem_object* %74, %struct.drm_gem_object** %8, align 8
  br label %75

75:                                               ; preds = %71, %67, %52, %37
  %76 = load %struct.dma_resv*, %struct.dma_resv** %10, align 8
  %77 = call i32 @dma_resv_unlock(%struct.dma_resv* %76)
  %78 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  ret %struct.drm_gem_object* %78
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @dma_resv_lock(%struct.dma_resv*, i32*) #1

declare dso_local %struct.nouveau_bo* @nouveau_bo_alloc(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nouveau_bo*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.nouveau_bo*) #1

declare dso_local i32 @drm_gem_object_init(%struct.drm_device*, %struct.drm_gem_object*, i32) #1

declare dso_local i32 @nouveau_bo_ref(i32*, %struct.nouveau_bo**) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @nouveau_bo_init(%struct.nouveau_bo*, i32, i32, i32, %struct.sg_table*, %struct.dma_resv*) #1

declare dso_local i32 @dma_resv_unlock(%struct.dma_resv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
