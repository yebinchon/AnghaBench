; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_wait_for_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_wait_for_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i32 }

@DMZ_RECLAIM = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmz_metadata*, %struct.dm_zone*)* @dmz_wait_for_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_wait_for_reclaim(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dm_zone*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %4, align 8
  %5 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %6 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %5)
  %7 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %8 = call i32 @dmz_unlock_metadata(%struct.dmz_metadata* %7)
  %9 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %10 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %9, i32 0, i32 0
  %11 = load i32, i32* @DMZ_RECLAIM, align 4
  %12 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %13 = load i32, i32* @HZ, align 4
  %14 = call i32 @wait_on_bit_timeout(i32* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %16 = call i32 @dmz_lock_metadata(%struct.dmz_metadata* %15)
  %17 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %18 = call i32 @dmz_lock_map(%struct.dmz_metadata* %17)
  ret void
}

declare dso_local i32 @dmz_unlock_map(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_unlock_metadata(%struct.dmz_metadata*) #1

declare dso_local i32 @wait_on_bit_timeout(i32*, i32, i32, i32) #1

declare dso_local i32 @dmz_lock_metadata(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_lock_map(%struct.dmz_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
