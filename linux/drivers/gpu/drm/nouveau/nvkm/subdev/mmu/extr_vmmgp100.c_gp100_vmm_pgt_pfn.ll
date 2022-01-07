; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_pgt_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_pgt_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.nvkm_mmu_pt = type { i32 }
%struct.nvkm_vmm_map = type { i32* }

@NVKM_VMM_PFN_W = common dso_local global i32 0, align 4
@NVKM_VMM_PFN_VRAM = common dso_local global i32 0, align 4
@NVKM_VMM_PFN_ADDR_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@NVKM_VMM_PFN_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i32, i32, %struct.nvkm_vmm_map*)* @gp100_vmm_pgt_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp100_vmm_pgt_pfn(%struct.nvkm_vmm* %0, %struct.nvkm_mmu_pt* %1, i32 %2, i32 %3, %struct.nvkm_vmm_map* %4) #0 {
  %6 = alloca %struct.nvkm_vmm*, align 8
  %7 = alloca %struct.nvkm_mmu_pt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_vmm_map*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %6, align 8
  store %struct.nvkm_mmu_pt* %1, %struct.nvkm_mmu_pt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.nvkm_vmm_map* %4, %struct.nvkm_vmm_map** %10, align 8
  %14 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %11, align 8
  %22 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %23 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nvkm_kmap(i32 %24)
  br label %26

26:                                               ; preds = %97, %5
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %109

30:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  %31 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %10, align 8
  %32 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NVKM_VMM_PFN_W, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = call i32 @BIT_ULL(i32 6)
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %38, %30
  %43 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %10, align 8
  %44 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NVKM_VMM_PFN_VRAM, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %84, label %50

50:                                               ; preds = %42
  %51 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %10, align 8
  %52 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NVKM_VMM_PFN_ADDR_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %12, align 4
  %57 = load %struct.device*, %struct.device** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @pfn_to_page(i32 %58)
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %62 = call i32 @dma_map_page(%struct.device* %57, i32 %59, i32 0, i32 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.device*, %struct.device** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @dma_mapping_error(%struct.device* %63, i32 %64)
  %66 = call i32 @WARN_ON(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %50
  %69 = load i32, i32* %12, align 4
  %70 = ashr i32 %69, 4
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = or i64 %74, 4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = call i32 @BIT_ULL(i32 3)
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  %80 = call i32 @BIT_ULL(i32 0)
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %68, %50
  br label %97

84:                                               ; preds = %42
  %85 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %10, align 8
  %86 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NVKM_VMM_PFN_ADDR, align 4
  %90 = and i32 %88, %89
  %91 = ashr i32 %90, 4
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = call i32 @BIT_ULL(i32 0)
  %95 = load i32, i32* %13, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %84, %83
  %98 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %99 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = mul nsw i32 %100, 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @VMM_WO064(%struct.nvkm_mmu_pt* %98, %struct.nvkm_vmm* %99, i32 %102, i32 %103)
  %105 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %10, align 8
  %106 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %106, align 8
  br label %26

109:                                              ; preds = %26
  %110 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %111 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @nvkm_done(i32 %112)
  ret void
}

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @dma_map_page(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i32 @pfn_to_page(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @VMM_WO064(%struct.nvkm_mmu_pt*, %struct.nvkm_vmm*, i32, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
