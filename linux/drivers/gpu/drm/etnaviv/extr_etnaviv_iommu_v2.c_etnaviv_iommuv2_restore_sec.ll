; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_restore_sec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_restore_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32 }
%struct.etnaviv_iommu_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.etnaviv_iommuv2_context = type { i64, i32 }

@VIVS_MMUv2_SEC_CONTROL = common dso_local global i32 0, align 4
@VIVS_MMUv2_SEC_CONTROL_ENABLE = common dso_local global i32 0, align 4
@VIVS_MMUv2_PTA_ADDRESS_LOW = common dso_local global i32 0, align 4
@VIVS_MMUv2_PTA_ADDRESS_HIGH = common dso_local global i32 0, align 4
@VIVS_MMUv2_PTA_CONTROL = common dso_local global i32 0, align 4
@VIVS_MMUv2_PTA_CONTROL_ENABLE = common dso_local global i32 0, align 4
@VIVS_MMUv2_NONSEC_SAFE_ADDR_LOW = common dso_local global i32 0, align 4
@VIVS_MMUv2_SEC_SAFE_ADDR_LOW = common dso_local global i32 0, align 4
@VIVS_MMUv2_SAFE_ADDRESS_CONFIG = common dso_local global i32 0, align 4
@VIVS_MMUv2_CONFIGURATION_MODE_MODE4_K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*, %struct.etnaviv_iommu_context*)* @etnaviv_iommuv2_restore_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_iommuv2_restore_sec(%struct.etnaviv_gpu* %0, %struct.etnaviv_iommu_context* %1) #0 {
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca %struct.etnaviv_iommu_context*, align 8
  %5 = alloca %struct.etnaviv_iommuv2_context*, align 8
  %6 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  store %struct.etnaviv_iommu_context* %1, %struct.etnaviv_iommu_context** %4, align 8
  %7 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %8 = call %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context* %7)
  store %struct.etnaviv_iommuv2_context* %8, %struct.etnaviv_iommuv2_context** %5, align 8
  %9 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %10 = load i32, i32* @VIVS_MMUv2_SEC_CONTROL, align 4
  %11 = call i32 @gpu_read(%struct.etnaviv_gpu* %9, i32 %10)
  %12 = load i32, i32* @VIVS_MMUv2_SEC_CONTROL_ENABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %110

16:                                               ; preds = %2
  %17 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %18 = load i32, i32* @VIVS_MMUv2_PTA_ADDRESS_LOW, align 4
  %19 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %20 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @lower_32_bits(i32 %24)
  %26 = call i32 @gpu_write(%struct.etnaviv_gpu* %17, i32 %18, i32 %25)
  %27 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %28 = load i32, i32* @VIVS_MMUv2_PTA_ADDRESS_HIGH, align 4
  %29 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %30 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @upper_32_bits(i32 %34)
  %36 = call i32 @gpu_write(%struct.etnaviv_gpu* %27, i32 %28, i32 %35)
  %37 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %38 = load i32, i32* @VIVS_MMUv2_PTA_CONTROL, align 4
  %39 = load i32, i32* @VIVS_MMUv2_PTA_CONTROL_ENABLE, align 4
  %40 = call i32 @gpu_write(%struct.etnaviv_gpu* %37, i32 %38, i32 %39)
  %41 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %42 = load i32, i32* @VIVS_MMUv2_NONSEC_SAFE_ADDR_LOW, align 4
  %43 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %44 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @lower_32_bits(i32 %47)
  %49 = call i32 @gpu_write(%struct.etnaviv_gpu* %41, i32 %42, i32 %48)
  %50 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %51 = load i32, i32* @VIVS_MMUv2_SEC_SAFE_ADDR_LOW, align 4
  %52 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %53 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @lower_32_bits(i32 %56)
  %58 = call i32 @gpu_write(%struct.etnaviv_gpu* %50, i32 %51, i32 %57)
  %59 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %60 = load i32, i32* @VIVS_MMUv2_SAFE_ADDRESS_CONFIG, align 4
  %61 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %62 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @upper_32_bits(i32 %65)
  %67 = call i32 @VIVS_MMUv2_SAFE_ADDRESS_CONFIG_NON_SEC_SAFE_ADDR_HIGH(i32 %66)
  %68 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %69 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @upper_32_bits(i32 %72)
  %74 = call i32 @VIVS_MMUv2_SAFE_ADDRESS_CONFIG_SEC_SAFE_ADDR_HIGH(i32 %73)
  %75 = or i32 %67, %74
  %76 = call i32 @gpu_write(%struct.etnaviv_gpu* %59, i32 %60, i32 %75)
  %77 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %5, align 8
  %78 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @VIVS_MMUv2_CONFIGURATION_MODE_MODE4_K, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %83 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %5, align 8
  %89 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %81, i32* %91, align 4
  %92 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %93 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %5, align 8
  %94 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @etnaviv_buffer_config_pta(%struct.etnaviv_gpu* %92, i64 %95)
  store i32 %96, i32* %6, align 4
  %97 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %98 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %99 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %98, i32 0, i32 0
  %100 = call i64 @etnaviv_cmdbuf_get_pa(i32* %99)
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @etnaviv_gpu_start_fe(%struct.etnaviv_gpu* %97, i32 %101, i32 %102)
  %104 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %105 = call i32 @etnaviv_gpu_wait_idle(%struct.etnaviv_gpu* %104, i32 100)
  %106 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %107 = load i32, i32* @VIVS_MMUv2_SEC_CONTROL, align 4
  %108 = load i32, i32* @VIVS_MMUv2_SEC_CONTROL_ENABLE, align 4
  %109 = call i32 @gpu_write(%struct.etnaviv_gpu* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %16, %15
  ret void
}

declare dso_local %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.etnaviv_gpu*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @VIVS_MMUv2_SAFE_ADDRESS_CONFIG_NON_SEC_SAFE_ADDR_HIGH(i32) #1

declare dso_local i32 @VIVS_MMUv2_SAFE_ADDRESS_CONFIG_SEC_SAFE_ADDR_HIGH(i32) #1

declare dso_local i32 @etnaviv_buffer_config_pta(%struct.etnaviv_gpu*, i64) #1

declare dso_local i32 @etnaviv_gpu_start_fe(%struct.etnaviv_gpu*, i32, i32) #1

declare dso_local i64 @etnaviv_cmdbuf_get_pa(i32*) #1

declare dso_local i32 @etnaviv_gpu_wait_idle(%struct.etnaviv_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
