; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_migrate_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_migrate_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.migrate_vma = type { i64, i64, i64*, i32* }
%struct.nouveau_fence = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_drm*, %struct.migrate_vma*, i32*)* @nouveau_dmem_migrate_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_dmem_migrate_chunk(%struct.nouveau_drm* %0, %struct.migrate_vma* %1, i32* %2) #0 {
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.migrate_vma*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nouveau_fence*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %4, align 8
  store %struct.migrate_vma* %1, %struct.migrate_vma** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.migrate_vma*, %struct.migrate_vma** %5, align 8
  %12 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %51, %3
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.migrate_vma*, %struct.migrate_vma** %5, align 8
  %17 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %22 = load %struct.migrate_vma*, %struct.migrate_vma** %5, align 8
  %23 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i64 @nouveau_dmem_migrate_copy_one(%struct.nouveau_drm* %21, i32 %27, i32* %30)
  %32 = load %struct.migrate_vma*, %struct.migrate_vma** %5, align 8
  %33 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 %31, i64* %36, align 8
  %37 = load %struct.migrate_vma*, %struct.migrate_vma** %5, align 8
  %38 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %20
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %44, %20
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %14

54:                                               ; preds = %14
  %55 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %56 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nouveau_fence_new(i32 %60, i32 0, %struct.nouveau_fence** %7)
  %62 = load %struct.migrate_vma*, %struct.migrate_vma** %5, align 8
  %63 = call i32 @migrate_vma_pages(%struct.migrate_vma* %62)
  %64 = call i32 @nouveau_dmem_fence_done(%struct.nouveau_fence** %7)
  br label %65

65:                                               ; preds = %69, %54
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %9, align 8
  %68 = icmp ne i64 %66, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %71 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* @PAGE_SIZE, align 8
  %80 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %81 = call i32 @dma_unmap_page(i32 %74, i32 %78, i64 %79, i32 %80)
  br label %65

82:                                               ; preds = %65
  %83 = load %struct.migrate_vma*, %struct.migrate_vma** %5, align 8
  %84 = call i32 @migrate_vma_finalize(%struct.migrate_vma* %83)
  ret void
}

declare dso_local i64 @nouveau_dmem_migrate_copy_one(%struct.nouveau_drm*, i32, i32*) #1

declare dso_local i32 @nouveau_fence_new(i32, i32, %struct.nouveau_fence**) #1

declare dso_local i32 @migrate_vma_pages(%struct.migrate_vma*) #1

declare dso_local i32 @nouveau_dmem_fence_done(%struct.nouveau_fence**) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @migrate_vma_finalize(%struct.migrate_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
