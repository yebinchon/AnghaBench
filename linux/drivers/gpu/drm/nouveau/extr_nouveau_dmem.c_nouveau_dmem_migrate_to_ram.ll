; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_migrate_to_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_migrate_to_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, i32 }
%struct.nouveau_dmem = type { %struct.TYPE_3__, %struct.nouveau_drm* }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nouveau_fence = type { i32 }
%struct.migrate_vma = type { i64*, i64*, i32, i64, i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_FAULT_SIGBUS = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_fault*)* @nouveau_dmem_migrate_to_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nouveau_dmem_migrate_to_ram(%struct.vm_fault* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.nouveau_dmem*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_fence*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.migrate_vma, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nouveau_dmem* @page_to_dmem(i32 %14)
  store %struct.nouveau_dmem* %15, %struct.nouveau_dmem** %4, align 8
  %16 = load %struct.nouveau_dmem*, %struct.nouveau_dmem** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_dmem, %struct.nouveau_dmem* %16, i32 0, i32 1
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %17, align 8
  store %struct.nouveau_drm* %18, %struct.nouveau_drm** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %19 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %11, i32 0, i32 0
  store i64* %7, i64** %19, align 8
  %20 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %11, i32 0, i32 1
  store i64* %8, i64** %20, align 8
  %21 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %11, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %11, i32 0, i32 3
  %23 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %24 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = add nsw i64 %25, %26
  store i64 %27, i64* %22, align 8
  %28 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %11, i32 0, i32 4
  %29 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %30 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %28, align 8
  %32 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %11, i32 0, i32 5
  %33 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %34 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %32, align 8
  %36 = call i64 @migrate_vma_setup(%struct.migrate_vma* %11)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i64, i64* @VM_FAULT_SIGBUS, align 8
  store i64 %39, i64* %2, align 8
  br label %75

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.migrate_vma, %struct.migrate_vma* %11, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i64 0, i64* %2, align 8
  br label %75

45:                                               ; preds = %40
  %46 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %47 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %48 = call i64 @nouveau_dmem_fault_copy_one(%struct.nouveau_drm* %46, %struct.vm_fault* %47, %struct.migrate_vma* %11, i32* %9)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %45
  br label %72

55:                                               ; preds = %51
  %56 = load %struct.nouveau_dmem*, %struct.nouveau_dmem** %4, align 8
  %57 = getelementptr inbounds %struct.nouveau_dmem, %struct.nouveau_dmem* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @nouveau_fence_new(i32 %59, i32 0, %struct.nouveau_fence** %6)
  %61 = call i32 @migrate_vma_pages(%struct.migrate_vma* %11)
  %62 = call i32 @nouveau_dmem_fence_done(%struct.nouveau_fence** %6)
  %63 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %64 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %71 = call i32 @dma_unmap_page(i32 %67, i32 %68, i64 %69, i32 %70)
  br label %72

72:                                               ; preds = %55, %54
  %73 = call i32 @migrate_vma_finalize(%struct.migrate_vma* %11)
  %74 = load i64, i64* %10, align 8
  store i64 %74, i64* %2, align 8
  br label %75

75:                                               ; preds = %72, %44, %38
  %76 = load i64, i64* %2, align 8
  ret i64 %76
}

declare dso_local %struct.nouveau_dmem* @page_to_dmem(i32) #1

declare dso_local i64 @migrate_vma_setup(%struct.migrate_vma*) #1

declare dso_local i64 @nouveau_dmem_fault_copy_one(%struct.nouveau_drm*, %struct.vm_fault*, %struct.migrate_vma*, i32*) #1

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
