; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_remove_pfn_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_remove_pfn_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.psb_mmu_pt = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_mmu_remove_pfn_sequence(%struct.psb_mmu_pd* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.psb_mmu_pd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.psb_mmu_pt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.psb_mmu_pd* %0, %struct.psb_mmu_pd** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %11, align 8
  %13 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %14 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @down_read(i32* %16)
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = add i64 %19, %22
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %54, %3
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @psb_pd_addr_end(i64 %25, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call %struct.psb_mmu_pt* @psb_mmu_pt_alloc_map_lock(%struct.psb_mmu_pd* %28, i64 %29)
  store %struct.psb_mmu_pt* %30, %struct.psb_mmu_pt** %7, align 8
  %31 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %32 = icmp ne %struct.psb_mmu_pt* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %60

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %43, %34
  %36 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @psb_mmu_invalidate_pte(%struct.psb_mmu_pt* %36, i64 %37)
  %39 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %40 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %35, label %51

51:                                               ; preds = %43
  %52 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %7, align 8
  %53 = call i32 @psb_mmu_pt_unmap_unlock(%struct.psb_mmu_pt* %52)
  br label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %24, label %59

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %33
  %61 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %62 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @psb_mmu_flush_ptes(%struct.psb_mmu_pd* %66, i64 %67, i64 %68, i32 1, i32 1)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %72 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @up_read(i32* %74)
  %76 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %77 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  %82 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = call i32 @psb_mmu_flush(%struct.TYPE_2__* %83)
  br label %85

85:                                               ; preds = %80, %70
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @psb_pd_addr_end(i64, i64) #1

declare dso_local %struct.psb_mmu_pt* @psb_mmu_pt_alloc_map_lock(%struct.psb_mmu_pd*, i64) #1

declare dso_local i32 @psb_mmu_invalidate_pte(%struct.psb_mmu_pt*, i64) #1

declare dso_local i32 @psb_mmu_pt_unmap_unlock(%struct.psb_mmu_pt*) #1

declare dso_local i32 @psb_mmu_flush_ptes(%struct.psb_mmu_pd*, i64, i64, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @psb_mmu_flush(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
