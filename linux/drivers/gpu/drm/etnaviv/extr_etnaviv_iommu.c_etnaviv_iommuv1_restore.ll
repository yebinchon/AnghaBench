; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu.c_etnaviv_iommuv1_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu.c_etnaviv_iommuv1_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32 }
%struct.etnaviv_iommu_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.etnaviv_iommuv1_context = type { i64 }

@VIVS_MC_MEMORY_BASE_ADDR_RA = common dso_local global i32 0, align 4
@VIVS_MC_MEMORY_BASE_ADDR_FE = common dso_local global i32 0, align 4
@VIVS_MC_MEMORY_BASE_ADDR_TX = common dso_local global i32 0, align 4
@VIVS_MC_MEMORY_BASE_ADDR_PEZ = common dso_local global i32 0, align 4
@VIVS_MC_MEMORY_BASE_ADDR_PE = common dso_local global i32 0, align 4
@VIVS_MC_MMU_FE_PAGE_TABLE = common dso_local global i32 0, align 4
@VIVS_MC_MMU_TX_PAGE_TABLE = common dso_local global i32 0, align 4
@VIVS_MC_MMU_PE_PAGE_TABLE = common dso_local global i32 0, align 4
@VIVS_MC_MMU_PEZ_PAGE_TABLE = common dso_local global i32 0, align 4
@VIVS_MC_MMU_RA_PAGE_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*, %struct.etnaviv_iommu_context*)* @etnaviv_iommuv1_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_iommuv1_restore(%struct.etnaviv_gpu* %0, %struct.etnaviv_iommu_context* %1) #0 {
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca %struct.etnaviv_iommu_context*, align 8
  %5 = alloca %struct.etnaviv_iommuv1_context*, align 8
  %6 = alloca i64, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  store %struct.etnaviv_iommu_context* %1, %struct.etnaviv_iommu_context** %4, align 8
  %7 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %8 = call %struct.etnaviv_iommuv1_context* @to_v1_context(%struct.etnaviv_iommu_context* %7)
  store %struct.etnaviv_iommuv1_context* %8, %struct.etnaviv_iommuv1_context** %5, align 8
  %9 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %10 = load i32, i32* @VIVS_MC_MEMORY_BASE_ADDR_RA, align 4
  %11 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %12 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @gpu_write(%struct.etnaviv_gpu* %9, i32 %10, i64 %15)
  %17 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %18 = load i32, i32* @VIVS_MC_MEMORY_BASE_ADDR_FE, align 4
  %19 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %20 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @gpu_write(%struct.etnaviv_gpu* %17, i32 %18, i64 %23)
  %25 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %26 = load i32, i32* @VIVS_MC_MEMORY_BASE_ADDR_TX, align 4
  %27 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %28 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @gpu_write(%struct.etnaviv_gpu* %25, i32 %26, i64 %31)
  %33 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %34 = load i32, i32* @VIVS_MC_MEMORY_BASE_ADDR_PEZ, align 4
  %35 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %36 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @gpu_write(%struct.etnaviv_gpu* %33, i32 %34, i64 %39)
  %41 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %42 = load i32, i32* @VIVS_MC_MEMORY_BASE_ADDR_PE, align 4
  %43 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %44 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @gpu_write(%struct.etnaviv_gpu* %41, i32 %42, i64 %47)
  %49 = load %struct.etnaviv_iommuv1_context*, %struct.etnaviv_iommuv1_context** %5, align 8
  %50 = getelementptr inbounds %struct.etnaviv_iommuv1_context, %struct.etnaviv_iommuv1_context* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %6, align 8
  %52 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %53 = load i32, i32* @VIVS_MC_MMU_FE_PAGE_TABLE, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @gpu_write(%struct.etnaviv_gpu* %52, i32 %53, i64 %54)
  %56 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %57 = load i32, i32* @VIVS_MC_MMU_TX_PAGE_TABLE, align 4
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @gpu_write(%struct.etnaviv_gpu* %56, i32 %57, i64 %58)
  %60 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %61 = load i32, i32* @VIVS_MC_MMU_PE_PAGE_TABLE, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @gpu_write(%struct.etnaviv_gpu* %60, i32 %61, i64 %62)
  %64 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %65 = load i32, i32* @VIVS_MC_MMU_PEZ_PAGE_TABLE, align 4
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @gpu_write(%struct.etnaviv_gpu* %64, i32 %65, i64 %66)
  %68 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %69 = load i32, i32* @VIVS_MC_MMU_RA_PAGE_TABLE, align 4
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @gpu_write(%struct.etnaviv_gpu* %68, i32 %69, i64 %70)
  ret void
}

declare dso_local %struct.etnaviv_iommuv1_context* @to_v1_context(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @gpu_write(%struct.etnaviv_gpu*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
