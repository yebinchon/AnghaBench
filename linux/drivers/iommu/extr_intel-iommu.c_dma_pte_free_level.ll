; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pte_free_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pte_free_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dma_pte = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*, i32, i32, %struct.dma_pte*, i64, i64, i64)* @dma_pte_free_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_pte_free_level(%struct.dmar_domain* %0, i32 %1, i32 %2, %struct.dma_pte* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.dmar_domain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_pte*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.dma_pte*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.dma_pte* %3, %struct.dma_pte** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* %12, align 8
  %19 = call i64 @max(i64 %17, i64 %18)
  store i64 %19, i64* %12, align 8
  %20 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @pfn_level_offset(i64 %21, i32 %22)
  %24 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %20, i64 %23
  store %struct.dma_pte* %24, %struct.dma_pte** %11, align 8
  br label %25

25:                                               ; preds = %92, %7
  %26 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %27 = call i32 @dma_pte_present(%struct.dma_pte* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %31 = call i64 @dma_pte_superpage(%struct.dma_pte* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  br label %78

34:                                               ; preds = %29
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @level_mask(i32 %36)
  %38 = and i64 %35, %37
  store i64 %38, i64* %15, align 8
  %39 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %40 = call i32 @dma_pte_addr(%struct.dma_pte* %39)
  %41 = call %struct.dma_pte* @phys_to_virt(i32 %40)
  store %struct.dma_pte* %41, %struct.dma_pte** %16, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 2
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.dma_pte*, %struct.dma_pte** %16, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %14, align 8
  call void @dma_pte_free_level(%struct.dmar_domain* %45, i32 %47, i32 %48, %struct.dma_pte* %49, i64 %50, i64 %51, i64 %52)
  br label %53

53:                                               ; preds = %44, %34
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %77, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @level_size(i32 %64)
  %66 = add i64 %63, %65
  %67 = sub i64 %66, 1
  %68 = icmp ult i64 %62, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %71 = call i32 @dma_clear_pte(%struct.dma_pte* %70)
  %72 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %73 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %74 = call i32 @domain_flush_cache(%struct.dmar_domain* %72, %struct.dma_pte* %73, i32 4)
  %75 = load %struct.dma_pte*, %struct.dma_pte** %16, align 8
  %76 = call i32 @free_pgtable_page(%struct.dma_pte* %75)
  br label %77

77:                                               ; preds = %69, %61, %57, %53
  br label %78

78:                                               ; preds = %77, %33
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @level_size(i32 %79)
  %81 = load i64, i64* %12, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %78
  %84 = load %struct.dma_pte*, %struct.dma_pte** %11, align 8
  %85 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %84, i32 1
  store %struct.dma_pte* %85, %struct.dma_pte** %11, align 8
  %86 = call i32 @first_pte_in_page(%struct.dma_pte* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %14, align 8
  %91 = icmp ule i64 %89, %90
  br label %92

92:                                               ; preds = %88, %83
  %93 = phi i1 [ false, %83 ], [ %91, %88 ]
  br i1 %93, label %25, label %94

94:                                               ; preds = %92
  ret void
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @pfn_level_offset(i64, i32) #1

declare dso_local i32 @dma_pte_present(%struct.dma_pte*) #1

declare dso_local i64 @dma_pte_superpage(%struct.dma_pte*) #1

declare dso_local i64 @level_mask(i32) #1

declare dso_local %struct.dma_pte* @phys_to_virt(i32) #1

declare dso_local i32 @dma_pte_addr(%struct.dma_pte*) #1

declare dso_local i64 @level_size(i32) #1

declare dso_local i32 @dma_clear_pte(%struct.dma_pte*) #1

declare dso_local i32 @domain_flush_cache(%struct.dmar_domain*, %struct.dma_pte*, i32) #1

declare dso_local i32 @free_pgtable_page(%struct.dma_pte*) #1

declare dso_local i32 @first_pte_in_page(%struct.dma_pte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
