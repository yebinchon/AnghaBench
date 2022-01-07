; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pte_clear_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pte_clear_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dma_pte = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*, i64, i64)* @dma_pte_clear_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_pte_clear_range(%struct.dmar_domain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_pte*, align 8
  %9 = alloca %struct.dma_pte*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @domain_pfn_supported(%struct.dmar_domain* %10, i64 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @domain_pfn_supported(%struct.dmar_domain* %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  br label %29

29:                                               ; preds = %81, %3
  store i32 1, i32* %7, align 4
  %30 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call %struct.dma_pte* @dma_pfn_level_pte(%struct.dmar_domain* %30, i64 %31, i32 1, i32* %7)
  store %struct.dma_pte* %32, %struct.dma_pte** %9, align 8
  store %struct.dma_pte* %32, %struct.dma_pte** %8, align 8
  %33 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %34 = icmp ne %struct.dma_pte* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  %40 = call i64 @align_to_level(i64 %37, i32 %39)
  store i64 %40, i64* %5, align 8
  br label %74

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %60, %41
  %43 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %44 = call i32 @dma_clear_pte(%struct.dma_pte* %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @lvl_to_nr_pages(i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %5, align 8
  %49 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %50 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %49, i32 1
  store %struct.dma_pte* %50, %struct.dma_pte** %9, align 8
  br label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ule i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %57 = call i32 @first_pte_in_page(%struct.dma_pte* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i1 [ false, %51 ], [ %59, %55 ]
  br i1 %61, label %42, label %62

62:                                               ; preds = %60
  %63 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %64 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %65 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %66 = bitcast %struct.dma_pte* %65 to i8*
  %67 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %68 = bitcast %struct.dma_pte* %67 to i8*
  %69 = ptrtoint i8* %66 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @domain_flush_cache(%struct.dmar_domain* %63, %struct.dma_pte* %64, i32 %72)
  br label %74

74:                                               ; preds = %62, %35
  %75 = load i64, i64* %5, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp ule i64 %78, %79
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi i1 [ false, %74 ], [ %80, %77 ]
  br i1 %82, label %29, label %83

83:                                               ; preds = %81
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @domain_pfn_supported(%struct.dmar_domain*, i64) #1

declare dso_local %struct.dma_pte* @dma_pfn_level_pte(%struct.dmar_domain*, i64, i32, i32*) #1

declare dso_local i64 @align_to_level(i64, i32) #1

declare dso_local i32 @dma_clear_pte(%struct.dma_pte*) #1

declare dso_local i64 @lvl_to_nr_pages(i32) #1

declare dso_local i32 @first_pte_in_page(%struct.dma_pte*) #1

declare dso_local i32 @domain_flush_cache(%struct.dmar_domain*, %struct.dma_pte*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
