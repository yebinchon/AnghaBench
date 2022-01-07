; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_smu_sensors.c_smu_fetch_param_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_smu_sensors.c_smu_fetch_param_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_sdbp_cpuvcp = type { i32 }
%struct.smu_sdbp_cpudiode = type { i32 }
%struct.smu_sdbp_slotspow = type { i32 }
%struct.smu_sdbp_header = type { i32 }

@SMU_SDB_CPUVCP_ID = common dso_local global i32 0, align 4
@cpuvcp = common dso_local global %struct.smu_sdbp_cpuvcp* null, align 8
@cpuvcp_version = common dso_local global i32 0, align 4
@SMU_SDB_CPUDIODE_ID = common dso_local global i32 0, align 4
@cpudiode = common dso_local global %struct.smu_sdbp_cpudiode* null, align 8
@SMU_SDB_SLOTSPOW_ID = common dso_local global i32 0, align 4
@slotspow = common dso_local global %struct.smu_sdbp_slotspow* null, align 8
@SMU_SDB_DEBUG_SWITCHES_ID = common dso_local global i32 0, align 4
@debugswitches = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @smu_fetch_param_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_fetch_param_partitions() #0 {
  %1 = alloca %struct.smu_sdbp_header*, align 8
  %2 = load i32, i32* @SMU_SDB_CPUVCP_ID, align 4
  %3 = call %struct.smu_sdbp_header* @smu_get_sdb_partition(i32 %2, i32* null)
  store %struct.smu_sdbp_header* %3, %struct.smu_sdbp_header** %1, align 8
  %4 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %1, align 8
  %5 = icmp ne %struct.smu_sdbp_header* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %1, align 8
  %8 = getelementptr inbounds %struct.smu_sdbp_header, %struct.smu_sdbp_header* %7, i64 1
  %9 = bitcast %struct.smu_sdbp_header* %8 to %struct.smu_sdbp_cpuvcp*
  store %struct.smu_sdbp_cpuvcp* %9, %struct.smu_sdbp_cpuvcp** @cpuvcp, align 8
  %10 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %1, align 8
  %11 = getelementptr inbounds %struct.smu_sdbp_header, %struct.smu_sdbp_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @cpuvcp_version, align 4
  br label %13

13:                                               ; preds = %6, %0
  %14 = load i32, i32* @SMU_SDB_CPUDIODE_ID, align 4
  %15 = call %struct.smu_sdbp_header* @smu_get_sdb_partition(i32 %14, i32* null)
  store %struct.smu_sdbp_header* %15, %struct.smu_sdbp_header** %1, align 8
  %16 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %1, align 8
  %17 = icmp ne %struct.smu_sdbp_header* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %1, align 8
  %20 = getelementptr inbounds %struct.smu_sdbp_header, %struct.smu_sdbp_header* %19, i64 1
  %21 = bitcast %struct.smu_sdbp_header* %20 to %struct.smu_sdbp_cpudiode*
  store %struct.smu_sdbp_cpudiode* %21, %struct.smu_sdbp_cpudiode** @cpudiode, align 8
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* @SMU_SDB_SLOTSPOW_ID, align 4
  %24 = call %struct.smu_sdbp_header* @smu_get_sdb_partition(i32 %23, i32* null)
  store %struct.smu_sdbp_header* %24, %struct.smu_sdbp_header** %1, align 8
  %25 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %1, align 8
  %26 = icmp ne %struct.smu_sdbp_header* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %1, align 8
  %29 = getelementptr inbounds %struct.smu_sdbp_header, %struct.smu_sdbp_header* %28, i64 1
  %30 = bitcast %struct.smu_sdbp_header* %29 to %struct.smu_sdbp_slotspow*
  store %struct.smu_sdbp_slotspow* %30, %struct.smu_sdbp_slotspow** @slotspow, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* @SMU_SDB_DEBUG_SWITCHES_ID, align 4
  %33 = call %struct.smu_sdbp_header* @smu_get_sdb_partition(i32 %32, i32* null)
  store %struct.smu_sdbp_header* %33, %struct.smu_sdbp_header** %1, align 8
  %34 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %1, align 8
  %35 = icmp ne %struct.smu_sdbp_header* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %1, align 8
  %38 = getelementptr inbounds %struct.smu_sdbp_header, %struct.smu_sdbp_header* %37, i64 1
  %39 = bitcast %struct.smu_sdbp_header* %38 to i32*
  store i32* %39, i32** @debugswitches, align 8
  br label %40

40:                                               ; preds = %36, %31
  ret void
}

declare dso_local %struct.smu_sdbp_header* @smu_get_sdb_partition(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
