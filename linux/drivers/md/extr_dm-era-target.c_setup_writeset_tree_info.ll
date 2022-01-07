; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_setup_writeset_tree_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_setup_writeset_tree_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.era_metadata = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.dm_btree_value_type }
%struct.dm_btree_value_type = type { i32, i32, i32, i32, %struct.era_metadata* }

@ws_inc = common dso_local global i32 0, align 4
@ws_dec = common dso_local global i32 0, align 4
@ws_eq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.era_metadata*)* @setup_writeset_tree_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_writeset_tree_info(%struct.era_metadata* %0) #0 {
  %2 = alloca %struct.era_metadata*, align 8
  %3 = alloca %struct.dm_btree_value_type*, align 8
  store %struct.era_metadata* %0, %struct.era_metadata** %2, align 8
  %4 = load %struct.era_metadata*, %struct.era_metadata** %2, align 8
  %5 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  store %struct.dm_btree_value_type* %6, %struct.dm_btree_value_type** %3, align 8
  %7 = load %struct.era_metadata*, %struct.era_metadata** %2, align 8
  %8 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.era_metadata*, %struct.era_metadata** %2, align 8
  %11 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  %13 = load %struct.era_metadata*, %struct.era_metadata** %2, align 8
  %14 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.era_metadata*, %struct.era_metadata** %2, align 8
  %17 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %3, align 8
  %18 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %17, i32 0, i32 4
  store %struct.era_metadata* %16, %struct.era_metadata** %18, align 8
  %19 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %3, align 8
  %20 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %19, i32 0, i32 0
  store i32 4, i32* %20, align 8
  %21 = load i32, i32* @ws_inc, align 4
  %22 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %3, align 8
  %23 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ws_dec, align 4
  %25 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %3, align 8
  %26 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @ws_eq, align 4
  %28 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %3, align 8
  %29 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
