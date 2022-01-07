; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_bounce_map_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_bounce_map_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dmar_domain = type { i32 }
%struct.intel_iommu = type { i32 }

@VTD_PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_PTE_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_PTE_WRITE = common dso_local global i32 0, align 4
@io_tlb_start = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i64 0, align 8
@VTD_PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Device bounce map: %zx@%llx dir %d --- failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i64, i64, i32, i64, i32)* @bounce_map_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bounce_map_single(%struct.device* %0, i64 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.dmar_domain*, align 8
  %16 = alloca %struct.intel_iommu*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* @VTD_PAGE_SIZE, align 4
  %26 = call i64 @ALIGN(i64 %24, i32 %25)
  store i64 %26, i64* %14, align 8
  store i32 0, i32* %20, align 4
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = call %struct.dmar_domain* @find_domain(%struct.device* %27)
  store %struct.dmar_domain* %28, %struct.dmar_domain** %15, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @DMA_NONE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %6
  %33 = load %struct.dmar_domain*, %struct.dmar_domain** %15, align 8
  %34 = icmp ne %struct.dmar_domain* %33, null
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %6
  %37 = phi i1 [ true, %6 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %42, i64* %7, align 8
  br label %199

43:                                               ; preds = %36
  %44 = load %struct.dmar_domain*, %struct.dmar_domain** %15, align 8
  %45 = call %struct.intel_iommu* @domain_get_iommu(%struct.dmar_domain* %44)
  store %struct.intel_iommu* %45, %struct.intel_iommu** %16, align 8
  %46 = load %struct.intel_iommu*, %struct.intel_iommu** %16, align 8
  %47 = icmp ne %struct.intel_iommu* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %53, i64* %7, align 8
  br label %199

54:                                               ; preds = %43
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @aligned_nrpages(i32 0, i64 %55)
  store i64 %56, i64* %18, align 8
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = load %struct.dmar_domain*, %struct.dmar_domain** %15, align 8
  %59 = load i64, i64* %18, align 8
  %60 = call i32 @dma_to_mm_pfn(i64 %59)
  %61 = load i32, i32* %13, align 4
  %62 = call i64 @intel_alloc_iova(%struct.device* %57, %struct.dmar_domain* %58, i32 %60, i32 %61)
  store i64 %62, i64* %17, align 8
  %63 = load i64, i64* %17, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  %66 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %66, i64* %7, align 8
  br label %199

67:                                               ; preds = %54
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = load %struct.intel_iommu*, %struct.intel_iommu** %16, align 8
  %77 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cap_zlr(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75, %71, %67
  %82 = load i32, i32* @DMA_PTE_READ, align 4
  %83 = load i32, i32* %20, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %20, align 4
  br label %85

85:                                               ; preds = %81, %75
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89, %85
  %94 = load i32, i32* @DMA_PTE_WRITE, align 4
  %95 = load i32, i32* %20, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %20, align 4
  br label %97

97:                                               ; preds = %93, %89
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = or i64 %98, %99
  %101 = load i32, i32* @VTD_PAGE_SIZE, align 4
  %102 = call i32 @IS_ALIGNED(i64 %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %147, label %104

104:                                              ; preds = %97
  %105 = load %struct.device*, %struct.device** %8, align 8
  %106 = load %struct.device*, %struct.device** %8, align 8
  %107 = load i32, i32* @io_tlb_start, align 4
  %108 = call i32 @__phys_to_dma(%struct.device* %106, i32 %107)
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i64, i64* %12, align 8
  %114 = call i64 @swiotlb_tbl_map_single(%struct.device* %105, i32 %108, i64 %109, i64 %110, i64 %111, i32 %112, i64 %113)
  store i64 %114, i64* %19, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  br label %186

119:                                              ; preds = %104
  %120 = load i64, i64* %19, align 8
  %121 = call i8* @phys_to_virt(i64 %120)
  store i8* %121, i8** %22, align 8
  %122 = load i64, i64* %14, align 8
  store i64 %122, i64* %23, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @DMA_ATTR_SKIP_CPU_SYNC, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @DMA_TO_DEVICE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %131, %127
  %136 = load i64, i64* %10, align 8
  %137 = load i8*, i8** %22, align 8
  %138 = getelementptr i8, i8* %137, i64 %136
  store i8* %138, i8** %22, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* %23, align 8
  %141 = sub i64 %140, %139
  store i64 %141, i64* %23, align 8
  br label %142

142:                                              ; preds = %135, %131, %119
  %143 = load i8*, i8** %22, align 8
  %144 = load i64, i64* %23, align 8
  %145 = call i32 @memset(i8* %143, i32 0, i64 %144)
  br label %146

146:                                              ; preds = %142
  br label %149

147:                                              ; preds = %97
  %148 = load i64, i64* %9, align 8
  store i64 %148, i64* %19, align 8
  br label %149

149:                                              ; preds = %147, %146
  %150 = load %struct.dmar_domain*, %struct.dmar_domain** %15, align 8
  %151 = load i64, i64* %17, align 8
  %152 = call i32 @mm_to_dma_pfn(i64 %151)
  %153 = load i64, i64* %19, align 8
  %154 = load i64, i64* @VTD_PAGE_SHIFT, align 8
  %155 = lshr i64 %153, %154
  %156 = load i64, i64* %18, align 8
  %157 = load i32, i32* %20, align 4
  %158 = call i32 @domain_pfn_mapping(%struct.dmar_domain* %150, i32 %152, i64 %155, i64 %156, i32 %157)
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  br label %173

162:                                              ; preds = %149
  %163 = load %struct.device*, %struct.device** %8, align 8
  %164 = load i64, i64* %17, align 8
  %165 = load i64, i64* @PAGE_SHIFT, align 8
  %166 = shl i64 %164, %165
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @trace_bounce_map_single(%struct.device* %163, i64 %166, i64 %167, i64 %168)
  %170 = load i64, i64* %17, align 8
  %171 = load i64, i64* @PAGE_SHIFT, align 8
  %172 = shl i64 %170, %171
  store i64 %172, i64* %7, align 8
  br label %199

173:                                              ; preds = %161
  %174 = load i64, i64* %19, align 8
  %175 = call i64 @is_swiotlb_buffer(i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = load %struct.device*, %struct.device** %8, align 8
  %179 = load i64, i64* %19, align 8
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* %14, align 8
  %182 = load i32, i32* %11, align 4
  %183 = load i64, i64* %12, align 8
  %184 = call i32 @swiotlb_tbl_unmap_single(%struct.device* %178, i64 %179, i64 %180, i64 %181, i32 %182, i64 %183)
  br label %185

185:                                              ; preds = %177, %173
  br label %186

186:                                              ; preds = %185, %118
  %187 = load %struct.dmar_domain*, %struct.dmar_domain** %15, align 8
  %188 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %187, i32 0, i32 0
  %189 = load i64, i64* %17, align 8
  %190 = load i64, i64* %18, align 8
  %191 = call i32 @dma_to_mm_pfn(i64 %190)
  %192 = call i32 @free_iova_fast(i32* %188, i64 %189, i32 %191)
  %193 = load %struct.device*, %struct.device** %8, align 8
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @dev_err(%struct.device* %193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %194, i64 %195, i32 %196)
  %198 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %198, i64* %7, align 8
  br label %199

199:                                              ; preds = %186, %162, %65, %52, %41
  %200 = load i64, i64* %7, align 8
  ret i64 %200
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.dmar_domain* @find_domain(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.intel_iommu* @domain_get_iommu(%struct.dmar_domain*) #1

declare dso_local i64 @aligned_nrpages(i32, i64) #1

declare dso_local i64 @intel_alloc_iova(%struct.device*, %struct.dmar_domain*, i32, i32) #1

declare dso_local i32 @dma_to_mm_pfn(i64) #1

declare dso_local i32 @cap_zlr(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i64 @swiotlb_tbl_map_single(%struct.device*, i32, i64, i64, i64, i32, i64) #1

declare dso_local i32 @__phys_to_dma(%struct.device*, i32) #1

declare dso_local i8* @phys_to_virt(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @domain_pfn_mapping(%struct.dmar_domain*, i32, i64, i64, i32) #1

declare dso_local i32 @mm_to_dma_pfn(i64) #1

declare dso_local i32 @trace_bounce_map_single(%struct.device*, i64, i64, i64) #1

declare dso_local i64 @is_swiotlb_buffer(i64) #1

declare dso_local i32 @swiotlb_tbl_unmap_single(%struct.device*, i64, i64, i64, i32, i64) #1

declare dso_local i32 @free_iova_fast(i32*, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
