; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_sparse_ref_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_sparse_ref_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_iter = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm_iter*, i32, i32, i32)* @nvkm_vmm_sparse_ref_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_vmm_sparse_ref_ptes(%struct.nvkm_vmm_iter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_vmm_iter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_iter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %10 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @nvkm_vmm_sparse_ptes(i32 %11, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @nvkm_vmm_ref_ptes(%struct.nvkm_vmm_iter* %20, i32 %21, i32 %22, i32 %23)
  ret i32 %24
}

declare dso_local i32 @nvkm_vmm_sparse_ptes(i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_vmm_ref_ptes(%struct.nvkm_vmm_iter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
