; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgf100.c_gf100_vmm_pgd_pde.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgf100.c_gf100_vmm_pgd_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vmm_pt = type { %struct.nvkm_mmu_pt**, %struct.nvkm_vmm_pt** }
%struct.nvkm_mmu_pt = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_vmm_pgd_pde(%struct.nvkm_vmm* %0, %struct.nvkm_vmm_pt* %1, i64 %2) #0 {
  %4 = alloca %struct.nvkm_vmm*, align 8
  %5 = alloca %struct.nvkm_vmm_pt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_vmm_pt*, align 8
  %8 = alloca %struct.nvkm_mmu_pt*, align 8
  %9 = alloca %struct.nvkm_mmu_pt*, align 8
  %10 = alloca i64, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %4, align 8
  store %struct.nvkm_vmm_pt* %1, %struct.nvkm_vmm_pt** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %11, i32 0, i32 1
  %13 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %13, i64 %14
  %16 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %15, align 8
  store %struct.nvkm_vmm_pt* %16, %struct.nvkm_vmm_pt** %7, align 8
  %17 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %17, i32 0, i32 0
  %19 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %19, i64 0
  %21 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %20, align 8
  store %struct.nvkm_mmu_pt* %21, %struct.nvkm_mmu_pt** %8, align 8
  store i64 0, i64* %10, align 8
  %22 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %23 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %22, i32 0, i32 0
  %24 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %24, i64 0
  %26 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %25, align 8
  store %struct.nvkm_mmu_pt* %26, %struct.nvkm_mmu_pt** %9, align 8
  %27 = icmp ne %struct.nvkm_mmu_pt* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %3
  %29 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %9, align 8
  %30 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nvkm_memory_target(i32 %31)
  switch i32 %32, label %45 [
    i32 128, label %33
    i32 130, label %36
    i32 129, label %42
  ]

33:                                               ; preds = %28
  %34 = load i64, i64* %10, align 8
  %35 = or i64 %34, 1
  store i64 %35, i64* %10, align 8
  br label %47

36:                                               ; preds = %28
  %37 = load i64, i64* %10, align 8
  %38 = or i64 %37, 2
  store i64 %38, i64* %10, align 8
  %39 = call i64 @BIT_ULL(i32 35)
  %40 = load i64, i64* %10, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %10, align 8
  br label %47

42:                                               ; preds = %28
  %43 = load i64, i64* %10, align 8
  %44 = or i64 %43, 3
  store i64 %44, i64* %10, align 8
  br label %47

45:                                               ; preds = %28
  %46 = call i32 @WARN_ON(i32 1)
  br label %104

47:                                               ; preds = %42, %36, %33
  %48 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %9, align 8
  %49 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 8
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %10, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %47, %3
  %56 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %57 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %56, i32 0, i32 0
  %58 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %58, i64 1
  %60 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %59, align 8
  store %struct.nvkm_mmu_pt* %60, %struct.nvkm_mmu_pt** %9, align 8
  %61 = icmp ne %struct.nvkm_mmu_pt* %60, null
  br i1 %61, label %62, label %89

62:                                               ; preds = %55
  %63 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %9, align 8
  %64 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nvkm_memory_target(i32 %65)
  switch i32 %66, label %79 [
    i32 128, label %67
    i32 130, label %70
    i32 129, label %76
  ]

67:                                               ; preds = %62
  %68 = load i64, i64* %10, align 8
  %69 = or i64 %68, 4294967296
  store i64 %69, i64* %10, align 8
  br label %81

70:                                               ; preds = %62
  %71 = load i64, i64* %10, align 8
  %72 = or i64 %71, 8589934592
  store i64 %72, i64* %10, align 8
  %73 = call i64 @BIT_ULL(i32 34)
  %74 = load i64, i64* %10, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %10, align 8
  br label %81

76:                                               ; preds = %62
  %77 = load i64, i64* %10, align 8
  %78 = or i64 %77, 12884901888
  store i64 %78, i64* %10, align 8
  br label %81

79:                                               ; preds = %62
  %80 = call i32 @WARN_ON(i32 1)
  br label %104

81:                                               ; preds = %76, %70, %67
  %82 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %9, align 8
  %83 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 24
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %10, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %81, %55
  %90 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %91 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @nvkm_kmap(i32 %92)
  %94 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %95 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %96 = load i64, i64* %6, align 8
  %97 = mul i64 %96, 8
  %98 = load i64, i64* %10, align 8
  %99 = call i32 @VMM_WO064(%struct.nvkm_mmu_pt* %94, %struct.nvkm_vmm* %95, i64 %97, i64 %98)
  %100 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %101 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @nvkm_done(i32 %102)
  br label %104

104:                                              ; preds = %89, %79, %45
  ret void
}

declare dso_local i32 @nvkm_memory_target(i32) #1

declare dso_local i64 @BIT_ULL(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @VMM_WO064(%struct.nvkm_mmu_pt*, %struct.nvkm_vmm*, i64, i64) #1

declare dso_local i32 @nvkm_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
