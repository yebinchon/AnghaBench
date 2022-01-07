; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv50.c_nv50_vmm_pde.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv50.c_nv50_vmm_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vmm_pt = type { i32, %struct.nvkm_mmu_pt** }
%struct.nvkm_mmu_pt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm*, %struct.nvkm_vmm_pt*, i32*)* @nv50_vmm_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_vmm_pde(%struct.nvkm_vmm* %0, %struct.nvkm_vmm_pt* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_vmm*, align 8
  %6 = alloca %struct.nvkm_vmm_pt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nvkm_mmu_pt*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %5, align 8
  store %struct.nvkm_vmm_pt* %1, %struct.nvkm_vmm_pt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %11 = icmp ne %struct.nvkm_vmm_pt* %10, null
  br i1 %11, label %12, label %66

12:                                               ; preds = %3
  %13 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %13, i32 0, i32 1
  %15 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %15, i64 0
  %17 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %16, align 8
  store %struct.nvkm_mmu_pt* %17, %struct.nvkm_mmu_pt** %8, align 8
  %18 = icmp ne %struct.nvkm_mmu_pt* %17, null
  br i1 %18, label %19, label %66

19:                                               ; preds = %12
  %20 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %21 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %43 [
    i32 16, label %23
    i32 12, label %24
  ]

23:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  br label %45

24:                                               ; preds = %19
  store i32 3, i32* %9, align 4
  %25 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %26 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nvkm_memory_size(i32 %27)
  switch i32 %28, label %40 [
    i32 1048576, label %29
    i32 262144, label %31
    i32 131072, label %34
    i32 65536, label %37
  ]

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %9, align 4
  br label %42

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, 32
  store i32 %33, i32* %9, align 4
  br label %42

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, 64
  store i32 %36, i32* %9, align 4
  br label %42

37:                                               ; preds = %24
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, 96
  store i32 %39, i32* %9, align 4
  br label %42

40:                                               ; preds = %24
  %41 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %69

42:                                               ; preds = %37, %34, %31, %29
  br label %45

43:                                               ; preds = %19
  %44 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %69

45:                                               ; preds = %42, %23
  %46 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %47 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nvkm_memory_target(i32 %48)
  switch i32 %49, label %58 [
    i32 128, label %50
    i32 130, label %52
    i32 129, label %55
  ]

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %9, align 4
  br label %60

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, 8
  store i32 %54, i32* %9, align 4
  br label %60

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, 12
  store i32 %57, i32* %9, align 4
  br label %60

58:                                               ; preds = %45
  %59 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %69

60:                                               ; preds = %55, %52, %50
  %61 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %62 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %60, %12, %3
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %58, %43, %40
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @nvkm_memory_size(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nvkm_memory_target(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
