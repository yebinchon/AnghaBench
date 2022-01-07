; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_pfn_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_pfn_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.nvkm_mmu_pt = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i32, i32)* @gp100_vmm_pfn_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp100_vmm_pfn_unmap(%struct.nvkm_vmm* %0, %struct.nvkm_mmu_pt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_vmm*, align 8
  %6 = alloca %struct.nvkm_mmu_pt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %5, align 8
  store %struct.nvkm_mmu_pt* %1, %struct.nvkm_mmu_pt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %9, align 8
  %22 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %23 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @nvkm_kmap(i32 %24)
  br label %26

26:                                               ; preds = %72, %4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %26
  %31 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %32 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %35 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %37, 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = add nsw i64 %40, 0
  %42 = call i32 @nvkm_ro32(i32 %33, i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %44 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %47 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 8
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = add nsw i64 %52, 4
  %54 = call i32 @nvkm_ro32(i32 %45, i64 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = shl i32 %55, 32
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = and i64 %60, 6
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %30
  %64 = load i32, i32* %13, align 4
  %65 = ashr i32 %64, 8
  %66 = shl i32 %65, 12
  store i32 %66, i32* %10, align 4
  %67 = load %struct.device*, %struct.device** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %71 = call i32 @dma_unmap_page(%struct.device* %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %30
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %26

75:                                               ; preds = %26
  %76 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %77 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @nvkm_done(i32 %78)
  ret void
}

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @nvkm_ro32(i32, i64) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
