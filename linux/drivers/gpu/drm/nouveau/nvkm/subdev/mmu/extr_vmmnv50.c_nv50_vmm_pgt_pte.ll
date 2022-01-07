; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv50.c_nv50_vmm_pgt_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv50.c_nv50_vmm_pgt_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_mmu_pt = type { i32 }
%struct.nvkm_vmm_map = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i32, i32, %struct.nvkm_vmm_map*, i32)* @nv50_vmm_pgt_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_vmm_pgt_pte(%struct.nvkm_vmm* %0, %struct.nvkm_mmu_pt* %1, i32 %2, i32 %3, %struct.nvkm_vmm_map* %4, i32 %5) #0 {
  %7 = alloca %struct.nvkm_vmm*, align 8
  %8 = alloca %struct.nvkm_mmu_pt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_vmm_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %7, align 8
  store %struct.nvkm_mmu_pt* %1, %struct.nvkm_mmu_pt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_vmm_map* %4, %struct.nvkm_vmm_map** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %19 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %24 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %28 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %81, %6
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %82

34:                                               ; preds = %31
  store i32 7, i32* %16, align 4
  br label %35

35:                                               ; preds = %51, %34
  %36 = load i32, i32* %16, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i32, i32* %16, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i64 @IS_ALIGNED(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %54

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %16, align 4
  br label %35

54:                                               ; preds = %49, %35
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %16, align 4
  %57 = shl i32 %56, 7
  %58 = or i32 %55, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %61 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %73, %54
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %15, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %8, align 8
  %75 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = mul nsw i32 %76, 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @VMM_WO064(%struct.nvkm_mmu_pt* %74, %struct.nvkm_vmm* %75, i32 %78, i32 %79)
  br label %69

81:                                               ; preds = %69
  br label %31

82:                                               ; preds = %31
  ret void
}

declare dso_local i64 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @VMM_WO064(%struct.nvkm_mmu_pt*, %struct.nvkm_vmm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
