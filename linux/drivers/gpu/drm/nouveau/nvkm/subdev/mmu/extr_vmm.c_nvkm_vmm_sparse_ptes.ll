; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_sparse_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_sparse_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_desc = type { i64 }
%struct.nvkm_vmm_pt = type { i32*, i32* }

@PGD = common dso_local global i64 0, align 8
@NVKM_VMM_PDE_SPARSE = common dso_local global i32 0, align 4
@LPT = common dso_local global i64 0, align 8
@NVKM_VMM_PTE_SPARSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm_desc*, %struct.nvkm_vmm_pt*, i64, i64)* @nvkm_vmm_sparse_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_vmm_sparse_ptes(%struct.nvkm_vmm_desc* %0, %struct.nvkm_vmm_pt* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.nvkm_vmm_desc*, align 8
  %6 = alloca %struct.nvkm_vmm_pt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nvkm_vmm_desc* %0, %struct.nvkm_vmm_desc** %5, align 8
  store %struct.nvkm_vmm_pt* %1, %struct.nvkm_vmm_pt** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %5, align 8
  %10 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PGD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %19, %14
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %8, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* @NVKM_VMM_PDE_SPARSE, align 4
  %21 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %22 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %20, i32* %26, align 4
  br label %15

27:                                               ; preds = %15
  br label %44

28:                                               ; preds = %4
  %29 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LPT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %36 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* @NVKM_VMM_PTE_SPARSE, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @memset(i32* %39, i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %34, %28
  br label %44

44:                                               ; preds = %43, %27
  ret void
}

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
