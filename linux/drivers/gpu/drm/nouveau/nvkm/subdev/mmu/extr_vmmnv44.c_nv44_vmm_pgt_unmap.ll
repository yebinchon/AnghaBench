; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv44.c_nv44_vmm_pgt_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv44.c_nv44_vmm_pgt_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_mmu_pt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i32, i32)* @nv44_vmm_pgt_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv44_vmm_pgt_unmap(%struct.nvkm_vmm* %0, %struct.nvkm_mmu_pt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_vmm*, align 8
  %6 = alloca %struct.nvkm_mmu_pt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %5, align 8
  store %struct.nvkm_mmu_pt* %1, %struct.nvkm_mmu_pt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %11 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @nvkm_kmap(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 3
  %21 = sub nsw i32 4, %20
  %22 = call i32 @min(i32 %18, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %24 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @nv44_vmm_pgt_fill(%struct.nvkm_vmm* %23, %struct.nvkm_mmu_pt* %24, i32* null, i32 %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %17, %4
  br label %35

35:                                               ; preds = %38, %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %40 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = mul nsw i32 %41, 4
  %44 = call i32 @VMM_WO032(%struct.nvkm_mmu_pt* %39, %struct.nvkm_vmm* %40, i32 %43, i32 0)
  %45 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %46 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = mul nsw i32 %47, 4
  %50 = call i32 @VMM_WO032(%struct.nvkm_mmu_pt* %45, %struct.nvkm_vmm* %46, i32 %49, i32 0)
  %51 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %52 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = mul nsw i32 %53, 4
  %56 = call i32 @VMM_WO032(%struct.nvkm_mmu_pt* %51, %struct.nvkm_vmm* %52, i32 %55, i32 0)
  %57 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %58 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = mul nsw i32 %59, 4
  %62 = call i32 @VMM_WO032(%struct.nvkm_mmu_pt* %57, %struct.nvkm_vmm* %58, i32 %61, i32 0)
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 4
  store i32 %64, i32* %8, align 4
  br label %35

65:                                               ; preds = %35
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %70 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @nv44_vmm_pgt_fill(%struct.nvkm_vmm* %69, %struct.nvkm_mmu_pt* %70, i32* null, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %65
  %75 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %76 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @nvkm_done(i32 %77)
  ret void
}

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nv44_vmm_pgt_fill(%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i32*, i32, i32) #1

declare dso_local i32 @VMM_WO032(%struct.nvkm_mmu_pt*, %struct.nvkm_vmm*, i32, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
