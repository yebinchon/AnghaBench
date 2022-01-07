; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_virtual_to_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_virtual_to_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pd = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.psb_mmu_pt = type { i64* }

@PSB_PTE_VALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psb_mmu_virtual_to_pfn(%struct.psb_mmu_pd* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.psb_mmu_pd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.psb_mmu_pt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  store %struct.psb_mmu_pd* %0, %struct.psb_mmu_pd** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %13 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32* %15, i32** %10, align 8
  %16 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %17 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.psb_mmu_pt* @psb_mmu_pt_map_lock(%struct.psb_mmu_pd* %21, i64 %22)
  store %struct.psb_mmu_pt* %23, %struct.psb_mmu_pt** %8, align 8
  %24 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %8, align 8
  %25 = icmp ne %struct.psb_mmu_pt* %24, null
  br i1 %25, label %69, label %26

26:                                               ; preds = %3
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %30 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64* @kmap_atomic(i32 %31)
  store i64* %32, i64** %11, align 8
  %33 = load i64*, i64** %11, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @psb_mmu_pd_index(i64 %34)
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i64*, i64** %11, align 8
  %39 = call i32 @kunmap_atomic(i64* %38)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %44 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %26
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @PSB_PTE_VALID, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %54 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PSB_PTE_VALID, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52, %47, %26
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %92

62:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  %63 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %64 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PAGE_SHIFT, align 8
  %67 = lshr i64 %65, %66
  %68 = load i64*, i64** %6, align 8
  store i64 %67, i64* %68, align 8
  br label %92

69:                                               ; preds = %3
  %70 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %8, align 8
  %71 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i64 @psb_mmu_pt_index(i64 %73)
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @PSB_PTE_VALID, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %69
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %89

84:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @PAGE_SHIFT, align 8
  %87 = lshr i64 %85, %86
  %88 = load i64*, i64** %6, align 8
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %84, %81
  %90 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %8, align 8
  %91 = call i32 @psb_mmu_pt_unmap_unlock(%struct.psb_mmu_pt* %90)
  br label %92

92:                                               ; preds = %89, %62, %59
  %93 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %94 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = call i32 @up_read(i32* %96)
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.psb_mmu_pt* @psb_mmu_pt_map_lock(%struct.psb_mmu_pd*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64* @kmap_atomic(i32) #1

declare dso_local i64 @psb_mmu_pd_index(i64) #1

declare dso_local i32 @kunmap_atomic(i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @psb_mmu_pt_index(i64) #1

declare dso_local i32 @psb_mmu_pt_unmap_unlock(%struct.psb_mmu_pt*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
