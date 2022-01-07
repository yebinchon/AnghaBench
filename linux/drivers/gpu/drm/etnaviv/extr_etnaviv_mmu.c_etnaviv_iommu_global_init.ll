; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_global_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device*, %struct.etnaviv_drm_private* }
%struct.device = type { i32 }
%struct.etnaviv_drm_private = type { %struct.etnaviv_iommu_global* }
%struct.etnaviv_iommu_global = type { i32, i32, i32, i8*, i32*, i32, %struct.device*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }

@ETNAVIV_IOMMU_V1 = common dso_local global i32 0, align 4
@chipMinorFeatures1_MMU_VERSION = common dso_local global i32 0, align 4
@ETNAVIV_IOMMU_V2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MMU version doesn't match global version\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@ETNAVIV_PTA_SIZE = common dso_local global i32 0, align 4
@etnaviv_iommuv1_ops = common dso_local global i32 0, align 4
@etnaviv_iommuv2_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_iommu_global_init(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.etnaviv_drm_private*, align 8
  %6 = alloca %struct.etnaviv_iommu_global*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  %8 = load i32, i32* @ETNAVIV_IOMMU_V1, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %10 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %12, align 8
  store %struct.etnaviv_drm_private* %13, %struct.etnaviv_drm_private** %5, align 8
  %14 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %15 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %20 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @chipMinorFeatures1_MMU_VERSION, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @ETNAVIV_IOMMU_V2, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %1
  %29 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %5, align 8
  %30 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %29, i32 0, i32 0
  %31 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %30, align 8
  %32 = icmp ne %struct.etnaviv_iommu_global* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %5, align 8
  %35 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %34, i32 0, i32 0
  %36 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %35, align 8
  %37 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %43 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %147

48:                                               ; preds = %33
  %49 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %5, align 8
  %50 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %49, i32 0, i32 0
  %51 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %50, align 8
  %52 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  store i32 0, i32* %2, align 4
  br label %147

55:                                               ; preds = %28
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.etnaviv_iommu_global* @kzalloc(i32 64, i32 %56)
  store %struct.etnaviv_iommu_global* %57, %struct.etnaviv_iommu_global** %6, align 8
  %58 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %59 = icmp ne %struct.etnaviv_iommu_global* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %147

63:                                               ; preds = %55
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = load i32, i32* @SZ_4K, align 4
  %66 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %67 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %66, i32 0, i32 2
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @dma_alloc_wc(%struct.device* %64, i32 %65, i32* %67, i32 %68)
  %70 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %71 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %73 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %63
  br label %142

77:                                               ; preds = %63
  %78 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %79 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @SZ_4K, align 4
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset32(i8* %80, i32 -559065686, i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @ETNAVIV_IOMMU_V2, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %77
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = load i32, i32* @ETNAVIV_PTA_SIZE, align 4
  %92 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %93 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @dma_alloc_wc(%struct.device* %90, i32 %91, i32* %94, i32 %95)
  %97 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %98 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  %100 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %101 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %89
  br label %132

106:                                              ; preds = %89
  br label %107

107:                                              ; preds = %106, %77
  %108 = load %struct.device*, %struct.device** %7, align 8
  %109 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %110 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %109, i32 0, i32 6
  store %struct.device* %108, %struct.device** %110, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %113 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %115 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %117 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %116, i32 0, i32 5
  %118 = call i32 @mutex_init(i32* %117)
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @ETNAVIV_IOMMU_V1, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %107
  %123 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %124 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %123, i32 0, i32 4
  store i32* @etnaviv_iommuv1_ops, i32** %124, align 8
  br label %128

125:                                              ; preds = %107
  %126 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %127 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %126, i32 0, i32 4
  store i32* @etnaviv_iommuv2_ops, i32** %127, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %130 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %5, align 8
  %131 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %130, i32 0, i32 0
  store %struct.etnaviv_iommu_global* %129, %struct.etnaviv_iommu_global** %131, align 8
  store i32 0, i32* %2, align 4
  br label %147

132:                                              ; preds = %105
  %133 = load %struct.device*, %struct.device** %7, align 8
  %134 = load i32, i32* @SZ_4K, align 4
  %135 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %136 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %139 = getelementptr inbounds %struct.etnaviv_iommu_global, %struct.etnaviv_iommu_global* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dma_free_wc(%struct.device* %133, i32 %134, i8* %137, i32 %140)
  br label %142

142:                                              ; preds = %132, %76
  %143 = load %struct.etnaviv_iommu_global*, %struct.etnaviv_iommu_global** %6, align 8
  %144 = call i32 @kfree(%struct.etnaviv_iommu_global* %143)
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %142, %128, %60, %48, %41
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.etnaviv_iommu_global* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_wc(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @memset32(i8*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dma_free_wc(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.etnaviv_iommu_global*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
