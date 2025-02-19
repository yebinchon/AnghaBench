; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_populated_cu_info_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_populated_cu_info_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_topology_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crat_subtype_computeunit = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CRAT_CU_FLAGS_HOT_PLUGGABLE = common dso_local global i32 0, align 4
@HSA_CAP_HOT_PLUGGABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CU GPU: id_base=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kfd_topology_device*, %struct.crat_subtype_computeunit*)* @kfd_populated_cu_info_gpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kfd_populated_cu_info_gpu(%struct.kfd_topology_device* %0, %struct.crat_subtype_computeunit* %1) #0 {
  %3 = alloca %struct.kfd_topology_device*, align 8
  %4 = alloca %struct.crat_subtype_computeunit*, align 8
  store %struct.kfd_topology_device* %0, %struct.kfd_topology_device** %3, align 8
  store %struct.crat_subtype_computeunit* %1, %struct.crat_subtype_computeunit** %4, align 8
  %5 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %6 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %9 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 9
  store i32 %7, i32* %10, align 4
  %11 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %12 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %15 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 8
  store i32 %13, i32* %16, align 4
  %17 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %18 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %21 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 7
  store i32 %19, i32* %22, align 4
  %23 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %24 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %27 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  store i32 %25, i32* %28, align 4
  %29 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %30 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %33 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 4
  %35 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %36 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %39 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %42 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %45 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %48 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %51 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %54 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %57 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %60 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CRAT_CU_FLAGS_HOT_PLUGGABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %2
  %66 = load i32, i32* @HSA_CAP_HOT_PLUGGABLE, align 4
  %67 = load %struct.kfd_topology_device*, %struct.kfd_topology_device** %3, align 8
  %68 = getelementptr inbounds %struct.kfd_topology_device, %struct.kfd_topology_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %2
  %73 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %4, align 8
  %74 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %75)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
