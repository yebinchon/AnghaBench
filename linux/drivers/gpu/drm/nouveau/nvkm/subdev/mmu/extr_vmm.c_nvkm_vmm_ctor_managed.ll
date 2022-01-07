; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ctor_managed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ctor_managed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vma = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm*, i32, i32)* @nvkm_vmm_ctor_managed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_vmm_ctor_managed(%struct.nvkm_vmm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_vmm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_vma*, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.nvkm_vma* @nvkm_vma_new(i32 %9, i32 %10)
  store %struct.nvkm_vma* %11, %struct.nvkm_vma** %8, align 8
  %12 = icmp ne %struct.nvkm_vma* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %18 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %22 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %21, i32 0, i32 2
  store i32 1, i32* %22, align 4
  %23 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %23, i32 0, i32 3
  store i32 1, i32* %24, align 4
  %25 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %26 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %27 = call i32 @nvkm_vmm_node_insert(%struct.nvkm_vmm* %25, %struct.nvkm_vma* %26)
  %28 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %29 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %28, i32 0, i32 4
  %30 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %31 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %30, i32 0, i32 0
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %16, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.nvkm_vma* @nvkm_vma_new(i32, i32) #1

declare dso_local i32 @nvkm_vmm_node_insert(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
