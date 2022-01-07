; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_pd1_pde.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_pd1_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vmm_pt = type { %struct.nvkm_mmu_pt**, %struct.nvkm_vmm_pt** }
%struct.nvkm_mmu_pt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm*, %struct.nvkm_vmm_pt*, i64)* @gp100_vmm_pd1_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp100_vmm_pd1_pde(%struct.nvkm_vmm* %0, %struct.nvkm_vmm_pt* %1, i64 %2) #0 {
  %4 = alloca %struct.nvkm_vmm*, align 8
  %5 = alloca %struct.nvkm_vmm_pt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_vmm_pt*, align 8
  %8 = alloca %struct.nvkm_mmu_pt*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %4, align 8
  store %struct.nvkm_vmm_pt* %1, %struct.nvkm_vmm_pt** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %10, i32 0, i32 1
  %12 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %12, i64 %13
  %15 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %14, align 8
  store %struct.nvkm_vmm_pt* %15, %struct.nvkm_vmm_pt** %7, align 8
  %16 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %16, i32 0, i32 0
  %18 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %18, i64 0
  %20 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %19, align 8
  store %struct.nvkm_mmu_pt* %20, %struct.nvkm_mmu_pt** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %22 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %21, i32 0, i32 0
  %23 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %23, i64 0
  %25 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %24, align 8
  %26 = call i32 @gp100_vmm_pde(%struct.nvkm_mmu_pt* %25, i32* %9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %44

29:                                               ; preds = %3
  %30 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %31 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nvkm_kmap(i32 %32)
  %34 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %35 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 %36, 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @VMM_WO064(%struct.nvkm_mmu_pt* %34, %struct.nvkm_vmm* %35, i64 %37, i32 %38)
  %40 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %41 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nvkm_done(i32 %42)
  br label %44

44:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @gp100_vmm_pde(%struct.nvkm_mmu_pt*, i32*) #1

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @VMM_WO064(%struct.nvkm_mmu_pt*, %struct.nvkm_vmm*, i64, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
