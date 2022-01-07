; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_insert_pfn_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_insert_pfn_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.psb_mmu_pt = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psb_mmu_insert_pfn_sequence(%struct.psb_mmu_pd* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.psb_mmu_pd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.psb_mmu_pt*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.psb_mmu_pd* %0, %struct.psb_mmu_pd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %16, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %17, align 4
  %21 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %22 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @down_read(i32* %24)
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = shl i64 %28, %29
  %31 = add i64 %27, %30
  store i64 %31, i64* %14, align 8
  br label %32

32:                                               ; preds = %70, %5
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @psb_pd_addr_end(i64 %33, i64 %34)
  store i64 %35, i64* %15, align 8
  %36 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call %struct.psb_mmu_pt* @psb_mmu_pt_alloc_map_lock(%struct.psb_mmu_pd* %36, i64 %37)
  store %struct.psb_mmu_pt* %38, %struct.psb_mmu_pt** %11, align 8
  %39 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %11, align 8
  %40 = icmp ne %struct.psb_mmu_pt* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %17, align 4
  br label %76

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %59, %44
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  %48 = trunc i64 %46 to i32
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @psb_mmu_mask_pte(i32 %48, i32 %49)
  store i64 %50, i64* %12, align 8
  %51 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %11, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @psb_mmu_set_pte(%struct.psb_mmu_pt* %51, i64 %52, i64 %53)
  %55 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %11, align 8
  %56 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %15, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %45, label %67

67:                                               ; preds = %59
  %68 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %11, align 8
  %69 = call i32 @psb_mmu_pt_unmap_unlock(%struct.psb_mmu_pt* %68)
  br label %70

70:                                               ; preds = %67
  %71 = load i64, i64* %15, align 8
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %14, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %32, label %75

75:                                               ; preds = %70
  store i32 0, i32* %17, align 4
  br label %76

76:                                               ; preds = %75, %41
  %77 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %78 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @psb_mmu_flush_ptes(%struct.psb_mmu_pd* %82, i64 %83, i64 %84, i32 1, i32 1)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %88 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @up_read(i32* %90)
  %92 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %93 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %101

96:                                               ; preds = %86
  %97 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %98 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = call i32 @psb_mmu_flush(%struct.TYPE_2__* %99)
  br label %101

101:                                              ; preds = %96, %86
  ret i32 0
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @psb_pd_addr_end(i64, i64) #1

declare dso_local %struct.psb_mmu_pt* @psb_mmu_pt_alloc_map_lock(%struct.psb_mmu_pd*, i64) #1

declare dso_local i64 @psb_mmu_mask_pte(i32, i32) #1

declare dso_local i32 @psb_mmu_set_pte(%struct.psb_mmu_pt*, i64, i64) #1

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
