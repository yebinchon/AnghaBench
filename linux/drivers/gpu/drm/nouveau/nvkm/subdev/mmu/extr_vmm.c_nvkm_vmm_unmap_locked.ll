; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_unmap_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_unmap_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_vmm_page* }
%struct.nvkm_vmm_page = type { i32 }
%struct.nvkm_vma = type { i64, i32, i32, i32, i64 }

@NVKM_VMA_PAGE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_vmm_unmap_locked(%struct.nvkm_vmm* %0, %struct.nvkm_vma* %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_vmm*, align 8
  %5 = alloca %struct.nvkm_vma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_vmm_page*, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %4, align 8
  store %struct.nvkm_vma* %1, %struct.nvkm_vma** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %11, align 8
  %13 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %12, i64 %15
  store %struct.nvkm_vmm_page* %16, %struct.nvkm_vmm_page** %7, align 8
  %17 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %23 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %7, align 8
  %24 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %28 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %31 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @nvkm_vmm_ptes_unmap_put(%struct.nvkm_vmm* %22, %struct.nvkm_vmm_page* %23, i32 %26, i32 %29, i32 %32, i32 %33)
  %35 = load i64, i64* @NVKM_VMA_PAGE_NONE, align 8
  %36 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %37 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %52

38:                                               ; preds = %3
  %39 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %40 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %7, align 8
  %41 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %42 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %45 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %48 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @nvkm_vmm_ptes_unmap(%struct.nvkm_vmm* %39, %struct.nvkm_vmm_page* %40, i32 %43, i32 %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %38, %21
  %53 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %54 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %55 = call i32 @nvkm_vmm_unmap_region(%struct.nvkm_vmm* %53, %struct.nvkm_vma* %54)
  ret void
}

declare dso_local i32 @nvkm_vmm_ptes_unmap_put(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_vmm_ptes_unmap(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_vmm_unmap_region(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
