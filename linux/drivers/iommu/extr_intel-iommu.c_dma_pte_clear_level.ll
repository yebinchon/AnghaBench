; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pte_clear_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pte_clear_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dma_pte = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.dmar_domain*, i32, %struct.dma_pte*, i64, i64, i64, %struct.page*)* @dma_pte_clear_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @dma_pte_clear_level(%struct.dmar_domain* %0, i32 %1, %struct.dma_pte* %2, i64 %3, i64 %4, i64 %5, %struct.page* %6) #0 {
  %8 = alloca %struct.dmar_domain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_pte*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.dma_pte*, align 8
  %16 = alloca %struct.dma_pte*, align 8
  %17 = alloca i64, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.dma_pte* %2, %struct.dma_pte** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.page* %6, %struct.page** %14, align 8
  store %struct.dma_pte* null, %struct.dma_pte** %15, align 8
  store %struct.dma_pte* null, %struct.dma_pte** %16, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i64 @max(i64 %18, i64 %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.dma_pte*, %struct.dma_pte** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @pfn_level_offset(i64 %22, i32 %23)
  %25 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %21, i64 %24
  store %struct.dma_pte* %25, %struct.dma_pte** %10, align 8
  br label %26

26:                                               ; preds = %101, %7
  %27 = load %struct.dma_pte*, %struct.dma_pte** %10, align 8
  %28 = call i32 @dma_pte_present(%struct.dma_pte* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %87

31:                                               ; preds = %26
  %32 = load i64, i64* %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @level_mask(i32 %33)
  %35 = and i64 %32, %34
  store i64 %35, i64* %17, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %17, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %31
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %17, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @level_size(i32 %42)
  %44 = add i64 %41, %43
  %45 = sub i64 %44, 1
  %46 = icmp uge i64 %40, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.dma_pte*, %struct.dma_pte** %10, align 8
  %52 = call i32 @dma_pte_superpage(%struct.dma_pte* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load %struct.dma_pte*, %struct.dma_pte** %10, align 8
  %59 = load %struct.page*, %struct.page** %14, align 8
  %60 = call %struct.page* @dma_pte_list_pagetables(%struct.dmar_domain* %55, i32 %57, %struct.dma_pte* %58, %struct.page* %59)
  store %struct.page* %60, %struct.page** %14, align 8
  br label %61

61:                                               ; preds = %54, %50, %47
  %62 = load %struct.dma_pte*, %struct.dma_pte** %10, align 8
  %63 = call i32 @dma_clear_pte(%struct.dma_pte* %62)
  %64 = load %struct.dma_pte*, %struct.dma_pte** %15, align 8
  %65 = icmp ne %struct.dma_pte* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load %struct.dma_pte*, %struct.dma_pte** %10, align 8
  store %struct.dma_pte* %67, %struct.dma_pte** %15, align 8
  br label %68

68:                                               ; preds = %66, %61
  %69 = load %struct.dma_pte*, %struct.dma_pte** %10, align 8
  store %struct.dma_pte* %69, %struct.dma_pte** %16, align 8
  br label %86

70:                                               ; preds = %39, %31
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load %struct.dma_pte*, %struct.dma_pte** %10, align 8
  %78 = call i32 @dma_pte_addr(%struct.dma_pte* %77)
  %79 = call %struct.dma_pte* @phys_to_virt(i32 %78)
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.page*, %struct.page** %14, align 8
  %84 = call %struct.page* @dma_pte_clear_level(%struct.dmar_domain* %74, i32 %76, %struct.dma_pte* %79, i64 %80, i64 %81, i64 %82, %struct.page* %83)
  store %struct.page* %84, %struct.page** %14, align 8
  br label %85

85:                                               ; preds = %73, %70
  br label %86

86:                                               ; preds = %85, %68
  br label %87

87:                                               ; preds = %86, %30
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @level_size(i32 %88)
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %87
  %93 = load %struct.dma_pte*, %struct.dma_pte** %10, align 8
  %94 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %93, i32 1
  store %struct.dma_pte* %94, %struct.dma_pte** %10, align 8
  %95 = call i32 @first_pte_in_page(%struct.dma_pte* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %13, align 8
  %100 = icmp ule i64 %98, %99
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i1 [ false, %92 ], [ %100, %97 ]
  br i1 %102, label %26, label %103

103:                                              ; preds = %101
  %104 = load %struct.dma_pte*, %struct.dma_pte** %15, align 8
  %105 = icmp ne %struct.dma_pte* %104, null
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %108 = load %struct.dma_pte*, %struct.dma_pte** %15, align 8
  %109 = load %struct.dma_pte*, %struct.dma_pte** %16, align 8
  %110 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %109, i32 1
  store %struct.dma_pte* %110, %struct.dma_pte** %16, align 8
  %111 = bitcast %struct.dma_pte* %110 to i8*
  %112 = load %struct.dma_pte*, %struct.dma_pte** %15, align 8
  %113 = bitcast %struct.dma_pte* %112 to i8*
  %114 = ptrtoint i8* %111 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @domain_flush_cache(%struct.dmar_domain* %107, %struct.dma_pte* %108, i32 %117)
  br label %119

119:                                              ; preds = %106, %103
  %120 = load %struct.page*, %struct.page** %14, align 8
  ret %struct.page* %120
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @pfn_level_offset(i64, i32) #1

declare dso_local i32 @dma_pte_present(%struct.dma_pte*) #1

declare dso_local i64 @level_mask(i32) #1

declare dso_local i64 @level_size(i32) #1

declare dso_local i32 @dma_pte_superpage(%struct.dma_pte*) #1

declare dso_local %struct.page* @dma_pte_list_pagetables(%struct.dmar_domain*, i32, %struct.dma_pte*, %struct.page*) #1

declare dso_local i32 @dma_clear_pte(%struct.dma_pte*) #1

declare dso_local %struct.dma_pte* @phys_to_virt(i32) #1

declare dso_local i32 @dma_pte_addr(%struct.dma_pte*) #1

declare dso_local i32 @first_pte_in_page(%struct.dma_pte*) #1

declare dso_local i32 @domain_flush_cache(%struct.dmar_domain*, %struct.dma_pte*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
