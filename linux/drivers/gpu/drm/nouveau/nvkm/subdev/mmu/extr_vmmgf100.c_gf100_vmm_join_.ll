; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgf100.c_gf100_vmm_join_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgf100.c_gf100_vmm_join_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_mmu_pt** }
%struct.nvkm_mmu_pt = type { i64, i32 }
%struct.nvkm_memory = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_vmm_join_(%struct.nvkm_vmm* %0, %struct.nvkm_memory* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_vmm*, align 8
  %6 = alloca %struct.nvkm_memory*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvkm_mmu_pt*, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %5, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %10 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %13, i64 0
  %15 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %14, align 8
  store %struct.nvkm_mmu_pt* %15, %struct.nvkm_mmu_pt** %8, align 8
  %16 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %17 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @nvkm_memory_target(i32 %18)
  switch i32 %19, label %31 [
    i32 128, label %20
    i32 130, label %22
    i32 129, label %28
  ]

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %7, align 8
  br label %35

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = or i64 %23, 2
  store i64 %24, i64* %7, align 8
  %25 = call i64 @BIT_ULL(i32 2)
  %26 = load i64, i64* %7, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %35

28:                                               ; preds = %3
  %29 = load i64, i64* %7, align 8
  %30 = or i64 %29, 3
  store i64 %30, i64* %7, align 8
  br label %35

31:                                               ; preds = %3
  %32 = call i32 @WARN_ON(i32 1)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %54

35:                                               ; preds = %28, %22, %20
  %36 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %37 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %7, align 8
  %41 = load %struct.nvkm_memory*, %struct.nvkm_memory** %6, align 8
  %42 = call i32 @nvkm_kmap(%struct.nvkm_memory* %41)
  %43 = load %struct.nvkm_memory*, %struct.nvkm_memory** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @nvkm_wo64(%struct.nvkm_memory* %43, i32 512, i64 %44)
  %46 = load %struct.nvkm_memory*, %struct.nvkm_memory** %6, align 8
  %47 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %48 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, 1
  %51 = call i32 @nvkm_wo64(%struct.nvkm_memory* %46, i32 520, i64 %50)
  %52 = load %struct.nvkm_memory*, %struct.nvkm_memory** %6, align 8
  %53 = call i32 @nvkm_done(%struct.nvkm_memory* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %35, %31
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @nvkm_memory_target(i32) #1

declare dso_local i64 @BIT_ULL(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_wo64(%struct.nvkm_memory*, i32, i64) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
