; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_map_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32 }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IOMMU_PROT_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOMMU_PTE_PR = common dso_local global i32 0, align 4
@IOMMU_PTE_FC = common dso_local global i32 0, align 4
@IOMMU_PROT_IR = common dso_local global i32 0, align 4
@IOMMU_PTE_IR = common dso_local global i32 0, align 4
@IOMMU_PROT_IW = common dso_local global i32 0, align 4
@IOMMU_PTE_IW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.protection_domain*, i64, i64, i64, i32, i32)* @iommu_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_map_page(%struct.protection_domain* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.protection_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.page* null, %struct.page** %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @IS_ALIGNED(i64 %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @IS_ALIGNED(i64 %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @IOMMU_PROT_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %6
  br label %134

42:                                               ; preds = %6
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @PAGE_SIZE_PTE_COUNT(i64 %43)
  store i32 %44, i32* %19, align 4
  %45 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32* @alloc_pte(%struct.protection_domain* %45, i64 %46, i64 %47, i32* null, i32 %48, i32* %14)
  store i32* %49, i32** %16, align 8
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %17, align 4
  %52 = load i32*, i32** %16, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  br label %134

55:                                               ; preds = %42
  store i32 0, i32* %18, align 4
  br label %56

56:                                               ; preds = %72, %55
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.page*, %struct.page** %13, align 8
  %71 = call %struct.page* @free_clear_pte(i32* %64, i32 %69, %struct.page* %70)
  store %struct.page* %71, %struct.page** %13, align 8
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %18, align 4
  br label %56

75:                                               ; preds = %56
  %76 = load %struct.page*, %struct.page** %13, align 8
  %77 = icmp ne %struct.page* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 1, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %19, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @__sme_set(i64 %83)
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @PAGE_SIZE_PTE(i32 %84, i64 %85)
  store i32 %86, i32* %15, align 4
  %87 = call i32 @PM_LEVEL_ENC(i32 7)
  %88 = load i32, i32* @IOMMU_PTE_PR, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @IOMMU_PTE_FC, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %15, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %15, align 4
  br label %101

94:                                               ; preds = %79
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @__sme_set(i64 %95)
  %97 = load i32, i32* @IOMMU_PTE_PR, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @IOMMU_PTE_FC, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %94, %82
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @IOMMU_PROT_IR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @IOMMU_PTE_IR, align 4
  %108 = load i32, i32* %15, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @IOMMU_PROT_IW, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @IOMMU_PTE_IW, align 4
  %117 = load i32, i32* %15, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %115, %110
  store i32 0, i32* %18, align 4
  br label %120

120:                                              ; preds = %130, %119
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %19, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load i32, i32* %15, align 4
  %126 = load i32*, i32** %16, align 8
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  br label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %120

133:                                              ; preds = %120
  store i32 0, i32* %17, align 4
  br label %134

134:                                              ; preds = %133, %54, %41
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  %138 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %139 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %138, i32 0, i32 0
  %140 = load i64, i64* %20, align 8
  %141 = call i32 @spin_lock_irqsave(i32* %139, i64 %140)
  %142 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %143 = call i32 @update_domain(%struct.protection_domain* %142)
  %144 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %145 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %144, i32 0, i32 0
  %146 = load i64, i64* %20, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  br label %148

148:                                              ; preds = %137, %134
  %149 = load %struct.page*, %struct.page** %13, align 8
  %150 = call i32 @free_page_list(%struct.page* %149)
  %151 = load i32, i32* %17, align 4
  ret i32 %151
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i32 @PAGE_SIZE_PTE_COUNT(i64) #1

declare dso_local i32* @alloc_pte(%struct.protection_domain*, i64, i64, i32*, i32, i32*) #1

declare dso_local %struct.page* @free_clear_pte(i32*, i32, %struct.page*) #1

declare dso_local i32 @PAGE_SIZE_PTE(i32, i64) #1

declare dso_local i32 @__sme_set(i64) #1

declare dso_local i32 @PM_LEVEL_ENC(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_domain(%struct.protection_domain*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_page_list(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
