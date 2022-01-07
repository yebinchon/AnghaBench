; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_fault_copy_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_fault_copy_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.nouveau_drm*, i32, i32, i32, i32, i32)* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.vm_fault = type { i32, i32 }
%struct.migrate_vma = type { i32*, i32* }
%struct.page = type { i32 }

@MIGRATE_PFN_MIGRATE = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@NOUVEAU_APER_HOST = common dso_local global i32 0, align 4
@NOUVEAU_APER_VRAM = common dso_local global i32 0, align 4
@MIGRATE_PFN_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_drm*, %struct.vm_fault*, %struct.migrate_vma*, i32*)* @nouveau_dmem_fault_copy_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_dmem_fault_copy_one(%struct.nouveau_drm* %0, %struct.vm_fault* %1, %struct.migrate_vma* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.vm_fault*, align 8
  %8 = alloca %struct.migrate_vma*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %6, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %7, align 8
  store %struct.migrate_vma* %2, %struct.migrate_vma** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load %struct.migrate_vma*, %struct.migrate_vma** %8, align 8
  %19 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.page* @migrate_pfn_to_page(i32 %22)
  store %struct.page* %23, %struct.page** %12, align 8
  %24 = load %struct.page*, %struct.page** %12, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.migrate_vma*, %struct.migrate_vma** %8, align 8
  %28 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MIGRATE_PFN_MIGRATE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26, %4
  store i32 0, i32* %5, align 4
  br label %102

36:                                               ; preds = %26
  %37 = load i32, i32* @GFP_HIGHUSER, align 4
  %38 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %39 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %42 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.page* @alloc_page_vma(i32 %37, i32 %40, i32 %43)
  store %struct.page* %44, %struct.page** %11, align 8
  %45 = load %struct.page*, %struct.page** %11, align 8
  %46 = icmp ne %struct.page* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %48, i32* %5, align 4
  br label %102

49:                                               ; preds = %36
  %50 = load %struct.page*, %struct.page** %11, align 8
  %51 = call i32 @lock_page(%struct.page* %50)
  %52 = load %struct.device*, %struct.device** %10, align 8
  %53 = load %struct.page*, %struct.page** %11, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %56 = call i32 @dma_map_page(%struct.device* %52, %struct.page* %53, i32 0, i32 %54, i32 %55)
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.device*, %struct.device** %10, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @dma_mapping_error(%struct.device* %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %98

64:                                               ; preds = %49
  %65 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %66 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64 (%struct.nouveau_drm*, i32, i32, i32, i32, i32)*, i64 (%struct.nouveau_drm*, i32, i32, i32, i32, i32)** %69, align 8
  %71 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %72 = load i32, i32* @NOUVEAU_APER_HOST, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NOUVEAU_APER_VRAM, align 4
  %76 = load %struct.page*, %struct.page** %12, align 8
  %77 = call i32 @nouveau_dmem_page_addr(%struct.page* %76)
  %78 = call i64 %70(%struct.nouveau_drm* %71, i32 1, i32 %72, i32 %74, i32 %75, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %91

81:                                               ; preds = %64
  %82 = load %struct.page*, %struct.page** %11, align 8
  %83 = call i32 @page_to_pfn(%struct.page* %82)
  %84 = call i32 @migrate_pfn(i32 %83)
  %85 = load i32, i32* @MIGRATE_PFN_LOCKED, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.migrate_vma*, %struct.migrate_vma** %8, align 8
  %88 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %86, i32* %90, align 4
  store i32 0, i32* %5, align 4
  br label %102

91:                                               ; preds = %80
  %92 = load %struct.device*, %struct.device** %10, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %97 = call i32 @dma_unmap_page(%struct.device* %92, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %63
  %99 = load %struct.page*, %struct.page** %11, align 8
  %100 = call i32 @__free_page(%struct.page* %99)
  %101 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %81, %47, %35
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.page* @migrate_pfn_to_page(i32) #1

declare dso_local %struct.page* @alloc_page_vma(i32, i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @nouveau_dmem_page_addr(%struct.page*) #1

declare dso_local i32 @migrate_pfn(i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
