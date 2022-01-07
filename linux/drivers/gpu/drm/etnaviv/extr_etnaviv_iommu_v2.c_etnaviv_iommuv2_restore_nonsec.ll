; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_restore_nonsec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_restore_nonsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32 }
%struct.etnaviv_iommu_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.etnaviv_iommuv2_context = type { i64 }

@VIVS_MMUv2_CONTROL = common dso_local global i32 0, align 4
@VIVS_MMUv2_CONTROL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*, %struct.etnaviv_iommu_context*)* @etnaviv_iommuv2_restore_nonsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_iommuv2_restore_nonsec(%struct.etnaviv_gpu* %0, %struct.etnaviv_iommu_context* %1) #0 {
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
  %10 = load i32, i32* @VIVS_MMUv2_CONTROL, align 4
  %11 = call i32 @gpu_read(%struct.etnaviv_gpu* %9, i32 %10)
  %12 = load i32, i32* @VIVS_MMUv2_CONTROL_ENABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %18 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %5, align 8
  %19 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %4, align 8
  %23 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @etnaviv_buffer_config_mmuv2(%struct.etnaviv_gpu* %17, i32 %21, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %30 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %31 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %30, i32 0, i32 0
  %32 = call i64 @etnaviv_cmdbuf_get_pa(i32* %31)
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @etnaviv_gpu_start_fe(%struct.etnaviv_gpu* %29, i32 %33, i32 %34)
  %36 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %37 = call i32 @etnaviv_gpu_wait_idle(%struct.etnaviv_gpu* %36, i32 100)
  %38 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %39 = load i32, i32* @VIVS_MMUv2_CONTROL, align 4
  %40 = load i32, i32* @VIVS_MMUv2_CONTROL_ENABLE, align 4
  %41 = call i32 @gpu_write(%struct.etnaviv_gpu* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context*) #1

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @etnaviv_buffer_config_mmuv2(%struct.etnaviv_gpu*, i32, i32) #1

declare dso_local i32 @etnaviv_gpu_start_fe(%struct.etnaviv_gpu*, i32, i32) #1

declare dso_local i64 @etnaviv_cmdbuf_get_pa(i32*) #1

declare dso_local i32 @etnaviv_gpu_wait_idle(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.etnaviv_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
