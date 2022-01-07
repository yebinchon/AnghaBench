; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_zone_for_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_zone_for_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_zone = type { i32 }
%struct.dmz_metadata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_zone* @dmz_get_zone_for_reclaim(%struct.dmz_metadata* %0) #0 {
  %2 = alloca %struct.dmz_metadata*, align 8
  %3 = alloca %struct.dm_zone*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %2, align 8
  %4 = load %struct.dmz_metadata*, %struct.dmz_metadata** %2, align 8
  %5 = call i32 @dmz_lock_map(%struct.dmz_metadata* %4)
  %6 = load %struct.dmz_metadata*, %struct.dmz_metadata** %2, align 8
  %7 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %6, i32 0, i32 0
  %8 = call i64 @list_empty(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.dmz_metadata*, %struct.dmz_metadata** %2, align 8
  %12 = call %struct.dm_zone* @dmz_get_seq_zone_for_reclaim(%struct.dmz_metadata* %11)
  store %struct.dm_zone* %12, %struct.dm_zone** %3, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.dmz_metadata*, %struct.dmz_metadata** %2, align 8
  %15 = call %struct.dm_zone* @dmz_get_rnd_zone_for_reclaim(%struct.dmz_metadata* %14)
  store %struct.dm_zone* %15, %struct.dm_zone** %3, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct.dmz_metadata*, %struct.dmz_metadata** %2, align 8
  %18 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %17)
  %19 = load %struct.dm_zone*, %struct.dm_zone** %3, align 8
  ret %struct.dm_zone* %19
}

declare dso_local i32 @dmz_lock_map(%struct.dmz_metadata*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.dm_zone* @dmz_get_seq_zone_for_reclaim(%struct.dmz_metadata*) #1

declare dso_local %struct.dm_zone* @dmz_get_rnd_zone_for_reclaim(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_unlock_map(%struct.dmz_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
