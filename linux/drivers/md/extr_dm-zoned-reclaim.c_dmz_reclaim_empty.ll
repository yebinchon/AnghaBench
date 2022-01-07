; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_reclaim = type { %struct.dmz_metadata* }
%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmz_reclaim*, %struct.dm_zone*)* @dmz_reclaim_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_reclaim_empty(%struct.dmz_reclaim* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca %struct.dmz_reclaim*, align 8
  %4 = alloca %struct.dm_zone*, align 8
  %5 = alloca %struct.dmz_metadata*, align 8
  store %struct.dmz_reclaim* %0, %struct.dmz_reclaim** %3, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %4, align 8
  %6 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %3, align 8
  %7 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %6, i32 0, i32 0
  %8 = load %struct.dmz_metadata*, %struct.dmz_metadata** %7, align 8
  store %struct.dmz_metadata* %8, %struct.dmz_metadata** %5, align 8
  %9 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %10 = call i32 @dmz_lock_flush(%struct.dmz_metadata* %9)
  %11 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %12 = call i32 @dmz_lock_map(%struct.dmz_metadata* %11)
  %13 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %14 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %15 = call i32 @dmz_unmap_zone(%struct.dmz_metadata* %13, %struct.dm_zone* %14)
  %16 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %17 = call i32 @dmz_unlock_zone_reclaim(%struct.dm_zone* %16)
  %18 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %19 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %20 = call i32 @dmz_free_zone(%struct.dmz_metadata* %18, %struct.dm_zone* %19)
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %22 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %21)
  %23 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %24 = call i32 @dmz_unlock_flush(%struct.dmz_metadata* %23)
  ret void
}

declare dso_local i32 @dmz_lock_flush(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_lock_map(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_unmap_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_unlock_zone_reclaim(%struct.dm_zone*) #1

declare dso_local i32 @dmz_free_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_unlock_map(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_unlock_flush(%struct.dmz_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
