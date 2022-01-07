; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_populated_cu_info_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_populated_cu_info_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_topology_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.crat_subtype_computeunit = type { i32, i32, i32 }

@CRAT_CU_FLAGS_IOMMU_PRESENT = common dso_local global i32 0, align 4
@HSA_CAP_ATS_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CU CPU: cores=%d id_base=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kfd_topology_device*, %struct.crat_subtype_computeunit*)* @kfd_populated_cu_info_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kfd_populated_cu_info_cpu(%struct.kfd_topology_device* %0, %struct.crat_subtype_computeunit* %1) #0 {
  %3 = alloca %struct.kfd_topology_device*, align 8
  %4 = alloca %struct.crat_subtype_computeunit*, align 8
  store %struct.kfd_topology_device* %0, %struct.kfd_topology_device** %3, align 8
  store %struct.crat_subtype_computeunit* %1, %struct.crat_subtype_computeunit** %4, align 8
  %5 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %6 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %9 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %12 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %15 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %18 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CRAT_CU_FLAGS_IOMMU_PRESENT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @HSA_CAP_ATS_PRESENT, align 4
  %25 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %26 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %2
  %31 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %32 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %35 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
