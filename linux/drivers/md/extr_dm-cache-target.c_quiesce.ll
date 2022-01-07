; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_migration = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.work_struct = type opaque
%struct.work_struct.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_cache_migration*, void (%struct.work_struct*)*)* @quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quiesce(%struct.dm_cache_migration* %0, void (%struct.work_struct*)* %1) #0 {
  %3 = alloca %struct.dm_cache_migration*, align 8
  %4 = alloca void (%struct.work_struct*)*, align 8
  store %struct.dm_cache_migration* %0, %struct.dm_cache_migration** %3, align 8
  store void (%struct.work_struct*)* %1, void (%struct.work_struct*)** %4, align 8
  %5 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %6 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %5, i32 0, i32 0
  %7 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %4, align 8
  %8 = bitcast void (%struct.work_struct*)* %7 to void (%struct.work_struct.0*)*
  %9 = call i32 @init_continuation(%struct.TYPE_4__* %6, void (%struct.work_struct.0*)* %8)
  %10 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %11 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %16 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %19 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @dm_cell_quiesce_v2(i32 %14, i32 %17, i32* %20)
  ret void
}

declare dso_local i32 @init_continuation(%struct.TYPE_4__*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @dm_cell_quiesce_v2(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
