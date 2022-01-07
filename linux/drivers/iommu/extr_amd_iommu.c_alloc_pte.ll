; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_alloc_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_alloc_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32, i64* }

@PAGE_MODE_7_LEVEL = common dso_local global i32 0, align 4
@PAGE_MODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.protection_domain*, i64, i64, i64**, i32, i32*)* @alloc_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @alloc_pte(%struct.protection_domain* %0, i64 %1, i64 %2, i64** %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca %struct.protection_domain*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64** %3, i64*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @is_power_of_2(i64 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  br label %30

30:                                               ; preds = %47, %6
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.protection_domain*, %struct.protection_domain** %8, align 8
  %33 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @PM_LEVEL_SIZE(i32 %34)
  %36 = icmp ugt i64 %31, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.protection_domain*, %struct.protection_domain** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @increase_address_space(%struct.protection_domain* %38, i64 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i1 [ true, %37 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = load i32*, i32** %13, align 8
  store i32 %49, i32* %50, align 4
  br label %30

51:                                               ; preds = %30
  %52 = load %struct.protection_domain*, %struct.protection_domain** %8, align 8
  %53 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  %56 = load %struct.protection_domain*, %struct.protection_domain** %8, align 8
  %57 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i64, i64* %9, align 8
  %61 = call i64 @PM_LEVEL_INDEX(i32 %59, i64 %60)
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  store i64* %62, i64** %16, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @PAGE_SIZE_ALIGN(i64 %63, i64 %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @PAGE_SIZE_LEVEL(i64 %66)
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %159, %139, %100, %51
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %165

72:                                               ; preds = %68
  %73 = load i64*, i64** %16, align 8
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %18, align 8
  %75 = load i64, i64* %18, align 8
  %76 = call i32 @PM_PTE_LEVEL(i64 %75)
  store i32 %76, i32* %20, align 4
  %77 = load i64, i64* %18, align 8
  %78 = call i64 @IOMMU_PTE_PRESENT(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %72
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* @PAGE_MODE_7_LEVEL, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load i64*, i64** %16, align 8
  %86 = call i64* @first_pte_l7(i64* %85, i32* null, i64* %21)
  store i64* %86, i64** %23, align 8
  store i64 0, i64* %22, align 8
  br label %87

87:                                               ; preds = %97, %84
  %88 = load i64, i64* %22, align 8
  %89 = load i64, i64* %21, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i64*, i64** %23, align 8
  %93 = load i64, i64* %22, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %18, align 8
  %96 = call i64 @cmpxchg64(i64* %94, i64 %95, i64 0)
  br label %97

97:                                               ; preds = %91
  %98 = load i64, i64* %22, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %22, align 8
  br label %87

100:                                              ; preds = %87
  %101 = load i32*, i32** %13, align 8
  store i32 1, i32* %101, align 4
  br label %68

102:                                              ; preds = %80, %72
  %103 = load i64, i64* %18, align 8
  %104 = call i64 @IOMMU_PTE_PRESENT(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* @PAGE_MODE_NONE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %106, %102
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @get_zeroed_page(i32 %111)
  %113 = inttoptr i64 %112 to i64*
  store i64* %113, i64** %17, align 8
  %114 = load i64*, i64** %17, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %110
  store i64* null, i64** %7, align 8
  br label %167

117:                                              ; preds = %110
  %118 = load i32, i32* %14, align 4
  %119 = load i64*, i64** %17, align 8
  %120 = call i32 @iommu_virt_to_phys(i64* %119)
  %121 = call i64 @PM_LEVEL_PDE(i32 %118, i32 %120)
  store i64 %121, i64* %19, align 8
  %122 = load i64*, i64** %16, align 8
  %123 = load i64, i64* %18, align 8
  %124 = load i64, i64* %19, align 8
  %125 = call i64 @cmpxchg64(i64* %122, i64 %123, i64 %124)
  %126 = load i64, i64* %18, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = load i64*, i64** %17, align 8
  %130 = ptrtoint i64* %129 to i64
  %131 = call i32 @free_page(i64 %130)
  br label %139

132:                                              ; preds = %117
  %133 = load i64, i64* %18, align 8
  %134 = call i64 @IOMMU_PTE_PRESENT(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32*, i32** %13, align 8
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %136, %132
  br label %139

139:                                              ; preds = %138, %128
  br label %68

140:                                              ; preds = %106
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i64* null, i64** %7, align 8
  br label %167

145:                                              ; preds = %140
  %146 = load i32, i32* %14, align 4
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  %148 = load i64, i64* %18, align 8
  %149 = call i64* @IOMMU_PTE_PAGE(i64 %148)
  store i64* %149, i64** %16, align 8
  %150 = load i64**, i64*** %11, align 8
  %151 = icmp ne i64** %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i64*, i64** %16, align 8
  %158 = load i64**, i64*** %11, align 8
  store i64* %157, i64** %158, align 8
  br label %159

159:                                              ; preds = %156, %152, %145
  %160 = load i64*, i64** %16, align 8
  %161 = load i32, i32* %14, align 4
  %162 = load i64, i64* %9, align 8
  %163 = call i64 @PM_LEVEL_INDEX(i32 %161, i64 %162)
  %164 = getelementptr inbounds i64, i64* %160, i64 %163
  store i64* %164, i64** %16, align 8
  br label %68

165:                                              ; preds = %68
  %166 = load i64*, i64** %16, align 8
  store i64* %166, i64** %7, align 8
  br label %167

167:                                              ; preds = %165, %144, %116
  %168 = load i64*, i64** %7, align 8
  ret i64* %168
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i64 @PM_LEVEL_SIZE(i32) #1

declare dso_local i64 @increase_address_space(%struct.protection_domain*, i64, i32) #1

declare dso_local i64 @PM_LEVEL_INDEX(i32, i64) #1

declare dso_local i64 @PAGE_SIZE_ALIGN(i64, i64) #1

declare dso_local i32 @PAGE_SIZE_LEVEL(i64) #1

declare dso_local i32 @PM_PTE_LEVEL(i64) #1

declare dso_local i64 @IOMMU_PTE_PRESENT(i64) #1

declare dso_local i64* @first_pte_l7(i64*, i32*, i64*) #1

declare dso_local i64 @cmpxchg64(i64*, i64, i64) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @PM_LEVEL_PDE(i32, i32) #1

declare dso_local i32 @iommu_virt_to_phys(i64*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i64* @IOMMU_PTE_PAGE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
