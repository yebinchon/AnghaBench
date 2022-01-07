; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_kfd_iommu_add_perf_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_kfd_iommu_add_perf_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_topology_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kfd_perf_properties = type { i32, i32, i32 }

@HSA_CAP_ATS_PRESENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"iommu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_iommu_add_perf_counters(%struct.kfd_topology_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_topology_device*, align 8
  %4 = alloca %struct.kfd_perf_properties*, align 8
  store %struct.kfd_topology_device* %0, %struct.kfd_topology_device** %3, align 8
  %5 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %6 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HSA_CAP_ATS_PRESENT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = call i32 (...) @amd_iommu_pc_supported()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %40

17:                                               ; preds = %13
  %18 = load %struct.kfd_perf_properties*, %struct.kfd_perf_properties** %4, align 8
  %19 = call %struct.kfd_perf_properties* @kfd_alloc_struct(%struct.kfd_perf_properties* %18)
  store %struct.kfd_perf_properties* %19, %struct.kfd_perf_properties** %4, align 8
  %20 = load %struct.kfd_perf_properties*, %struct.kfd_perf_properties** %4, align 8
  %21 = icmp ne %struct.kfd_perf_properties* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %40

25:                                               ; preds = %17
  %26 = load %struct.kfd_perf_properties*, %struct.kfd_perf_properties** %4, align 8
  %27 = getelementptr inbounds %struct.kfd_perf_properties, %struct.kfd_perf_properties* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcpy(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @amd_iommu_pc_get_max_banks(i32 0)
  %31 = call i32 @amd_iommu_pc_get_max_counters(i32 0)
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.kfd_perf_properties*, %struct.kfd_perf_properties** %4, align 8
  %34 = getelementptr inbounds %struct.kfd_perf_properties, %struct.kfd_perf_properties* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.kfd_perf_properties*, %struct.kfd_perf_properties** %4, align 8
  %36 = getelementptr inbounds %struct.kfd_perf_properties, %struct.kfd_perf_properties* %35, i32 0, i32 1
  %37 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %38 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %37, i32 0, i32 0
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %25, %22, %16, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @amd_iommu_pc_supported(...) #1

declare dso_local %struct.kfd_perf_properties* @kfd_alloc_struct(%struct.kfd_perf_properties*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @amd_iommu_pc_get_max_banks(i32) #1

declare dso_local i32 @amd_iommu_pc_get_max_counters(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
