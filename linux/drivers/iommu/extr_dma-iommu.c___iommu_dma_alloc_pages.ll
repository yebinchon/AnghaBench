; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c___iommu_dma_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c___iommu_dma_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.device = type { i32 }

@MAX_ORDER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page** (%struct.device*, i32, i64, i32)* @__iommu_dma_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page** @__iommu_dma_alloc_pages(%struct.device* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page**, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @dev_to_node(%struct.device* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @MAX_ORDER, align 4
  %20 = shl i32 2, %19
  %21 = sub i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* %8, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store %struct.page** null, %struct.page*** %5, align 8
  br label %135

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.page** @kvzalloc(i32 %32, i32 %33)
  store %struct.page** %34, %struct.page*** %10, align 8
  %35 = load %struct.page**, %struct.page*** %10, align 8
  %36 = icmp ne %struct.page** %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  store %struct.page** null, %struct.page*** %5, align 8
  br label %135

38:                                               ; preds = %28
  %39 = load i32, i32* @__GFP_NOWARN, align 4
  %40 = load i32, i32* @__GFP_HIGHMEM, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %132, %38
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %133

47:                                               ; preds = %44
  store %struct.page* null, %struct.page** %13, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = call i32 @__fls(i64 %49)
  %51 = shl i32 2, %50
  %52 = sub i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %8, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %103, %47
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %109

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @__fls(i64 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %15, align 4
  %64 = shl i32 1, %63
  store i32 %64, i32* %14, align 4
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %14, align 4
  %67 = zext i32 %66 to i64
  %68 = icmp ugt i64 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* @__GFP_NORETRY, align 4
  %71 = load i32, i32* %16, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %69, %59
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call %struct.page* @alloc_pages_node(i32 %74, i32 %75, i32 %76)
  store %struct.page* %77, %struct.page** %13, align 8
  %78 = load %struct.page*, %struct.page** %13, align 8
  %79 = icmp ne %struct.page* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %103

81:                                               ; preds = %73
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  br label %109

85:                                               ; preds = %81
  %86 = load %struct.page*, %struct.page** %13, align 8
  %87 = call i32 @PageCompound(%struct.page* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load %struct.page*, %struct.page** %13, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @split_page(%struct.page* %90, i32 %91)
  br label %109

93:                                               ; preds = %85
  %94 = load %struct.page*, %struct.page** %13, align 8
  %95 = call i32 @split_huge_page(%struct.page* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %109

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.page*, %struct.page** %13, align 8
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @__free_pages(%struct.page* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %80
  %104 = load i32, i32* %14, align 4
  %105 = xor i32 %104, -1
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %8, align 8
  %108 = and i64 %107, %106
  store i64 %108, i64* %8, align 8
  br label %56

109:                                              ; preds = %97, %89, %84, %56
  %110 = load %struct.page*, %struct.page** %13, align 8
  %111 = icmp ne %struct.page* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load %struct.page**, %struct.page*** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @__iommu_dma_free_pages(%struct.page** %113, i32 %114)
  store %struct.page** null, %struct.page*** %5, align 8
  br label %135

116:                                              ; preds = %109
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %7, align 4
  %119 = sub i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %124, %116
  %121 = load i32, i32* %14, align 4
  %122 = add i32 %121, -1
  store i32 %122, i32* %14, align 4
  %123 = icmp ne i32 %121, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load %struct.page*, %struct.page** %13, align 8
  %126 = getelementptr inbounds %struct.page, %struct.page* %125, i32 1
  store %struct.page* %126, %struct.page** %13, align 8
  %127 = load %struct.page**, %struct.page*** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = zext i32 %128 to i64
  %131 = getelementptr inbounds %struct.page*, %struct.page** %127, i64 %130
  store %struct.page* %125, %struct.page** %131, align 8
  br label %120

132:                                              ; preds = %120
  br label %44

133:                                              ; preds = %44
  %134 = load %struct.page**, %struct.page*** %10, align 8
  store %struct.page** %134, %struct.page*** %5, align 8
  br label %135

135:                                              ; preds = %133, %112, %37, %27
  %136 = load %struct.page**, %struct.page*** %5, align 8
  ret %struct.page** %136
}

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local %struct.page** @kvzalloc(i32, i32) #1

declare dso_local i32 @__fls(i64) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @split_page(%struct.page*, i32) #1

declare dso_local i32 @split_huge_page(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @__iommu_dma_free_pages(%struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
