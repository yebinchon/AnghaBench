; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_pgt_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_pgt_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_mmu_pt = type { i32 }
%struct.nvkm_vmm_map = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i32, i32, %struct.nvkm_vmm_map*, i32)* @gp100_vmm_pgt_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp100_vmm_pgt_pte(%struct.nvkm_vmm* %0, %struct.nvkm_mmu_pt* %1, i32 %2, i32 %3, %struct.nvkm_vmm_map* %4, i32 %5) #0 {
  %7 = alloca %struct.nvkm_vmm*, align 8
  %8 = alloca %struct.nvkm_mmu_pt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_vmm_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %7, align 8
  store %struct.nvkm_mmu_pt* %1, %struct.nvkm_mmu_pt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_vmm_map* %4, %struct.nvkm_vmm_map** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  %15 = ashr i32 %14, 4
  %16 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %17 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %15, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %22 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %26 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %33, %6
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %10, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %35 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = mul nsw i32 %36, 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @VMM_WO064(%struct.nvkm_mmu_pt* %34, %struct.nvkm_vmm* %35, i32 %38, i32 %39)
  %41 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %42 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %13, align 4
  br label %29

48:                                               ; preds = %29
  ret void
}

declare dso_local i32 @VMM_WO064(%struct.nvkm_mmu_pt*, %struct.nvkm_vmm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
