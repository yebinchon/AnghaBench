; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vma_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vma_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vma = type { i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NVKM_VMA_PAGE_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvkm_vma* (i8*, i8*)* @nvkm_vma_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvkm_vma* @nvkm_vma_new(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvkm_vma*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nvkm_vma* @kzalloc(i32 32, i32 %6)
  store %struct.nvkm_vma* %7, %struct.nvkm_vma** %5, align 8
  %8 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %9 = icmp ne %struct.nvkm_vma* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @NVKM_VMA_PAGE_NONE, align 8
  %18 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @NVKM_VMA_PAGE_NONE, align 8
  %21 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  %22 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %10, %2
  %24 = load %struct.nvkm_vma*, %struct.nvkm_vma** %5, align 8
  ret %struct.nvkm_vma* %24
}

declare dso_local %struct.nvkm_vma* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
