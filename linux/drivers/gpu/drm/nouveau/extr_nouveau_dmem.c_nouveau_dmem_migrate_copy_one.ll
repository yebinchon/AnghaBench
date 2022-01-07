; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_migrate_copy_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_migrate_copy_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.nouveau_drm*, i32, i32, i32, i32, i32)* }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.page = type { i32 }

@MIGRATE_PFN_MIGRATE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@NOUVEAU_APER_VRAM = common dso_local global i32 0, align 4
@NOUVEAU_APER_HOST = common dso_local global i32 0, align 4
@MIGRATE_PFN_LOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nouveau_drm*, i64, i32*)* @nouveau_dmem_migrate_copy_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nouveau_dmem_migrate_copy_one(%struct.nouveau_drm* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.page* @migrate_pfn_to_page(i64 %16)
  store %struct.page* %17, %struct.page** %10, align 8
  %18 = load %struct.page*, %struct.page** %10, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @MIGRATE_PFN_MIGRATE, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %3
  br label %79

26:                                               ; preds = %20
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %28 = call %struct.page* @nouveau_dmem_page_alloc_locked(%struct.nouveau_drm* %27)
  store %struct.page* %28, %struct.page** %9, align 8
  %29 = load %struct.page*, %struct.page** %9, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i64 0, i64* %4, align 8
  br label %80

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = load %struct.page*, %struct.page** %10, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %37 = call i32 @dma_map_page(%struct.device* %33, %struct.page* %34, i32 0, i32 %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @dma_mapping_error(%struct.device* %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %75

45:                                               ; preds = %32
  %46 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %47 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64 (%struct.nouveau_drm*, i32, i32, i32, i32, i32)*, i64 (%struct.nouveau_drm*, i32, i32, i32, i32, i32)** %50, align 8
  %52 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %53 = load i32, i32* @NOUVEAU_APER_VRAM, align 4
  %54 = load %struct.page*, %struct.page** %9, align 8
  %55 = call i32 @nouveau_dmem_page_addr(%struct.page* %54)
  %56 = load i32, i32* @NOUVEAU_APER_HOST, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 %51(%struct.nouveau_drm* %52, i32 1, i32 %53, i32 %55, i32 %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %68

62:                                               ; preds = %45
  %63 = load %struct.page*, %struct.page** %9, align 8
  %64 = call i32 @page_to_pfn(%struct.page* %63)
  %65 = call i64 @migrate_pfn(i32 %64)
  %66 = load i64, i64* @MIGRATE_PFN_LOCKED, align 8
  %67 = or i64 %65, %66
  store i64 %67, i64* %4, align 8
  br label %80

68:                                               ; preds = %61
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %74 = call i32 @dma_unmap_page(%struct.device* %69, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %44
  %76 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %77 = load %struct.page*, %struct.page** %9, align 8
  %78 = call i32 @nouveau_dmem_page_free_locked(%struct.nouveau_drm* %76, %struct.page* %77)
  br label %79

79:                                               ; preds = %75, %25
  store i64 0, i64* %4, align 8
  br label %80

80:                                               ; preds = %79, %62, %31
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local %struct.page* @migrate_pfn_to_page(i64) #1

declare dso_local %struct.page* @nouveau_dmem_page_alloc_locked(%struct.nouveau_drm*) #1

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @nouveau_dmem_page_addr(%struct.page*) #1

declare dso_local i64 @migrate_pfn(i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @nouveau_dmem_page_free_locked(%struct.nouveau_drm*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
