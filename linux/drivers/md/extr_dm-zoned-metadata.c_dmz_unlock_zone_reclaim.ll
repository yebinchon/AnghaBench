; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_unlock_zone_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_unlock_zone_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_zone = type { i32 }

@DMZ_RECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmz_unlock_zone_reclaim(%struct.dm_zone* %0) #0 {
  %2 = alloca %struct.dm_zone*, align 8
  store %struct.dm_zone* %0, %struct.dm_zone** %2, align 8
  %3 = load %struct.dm_zone*, %struct.dm_zone** %2, align 8
  %4 = call i32 @dmz_is_active(%struct.dm_zone* %3)
  %5 = call i32 @WARN_ON(i32 %4)
  %6 = load %struct.dm_zone*, %struct.dm_zone** %2, align 8
  %7 = call i32 @dmz_in_reclaim(%struct.dm_zone* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load i32, i32* @DMZ_RECLAIM, align 4
  %13 = load %struct.dm_zone*, %struct.dm_zone** %2, align 8
  %14 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %13, i32 0, i32 0
  %15 = call i32 @clear_bit_unlock(i32 %12, i32* %14)
  %16 = call i32 (...) @smp_mb__after_atomic()
  %17 = load %struct.dm_zone*, %struct.dm_zone** %2, align 8
  %18 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %17, i32 0, i32 0
  %19 = load i32, i32* @DMZ_RECLAIM, align 4
  %20 = call i32 @wake_up_bit(i32* %18, i32 %19)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dmz_is_active(%struct.dm_zone*) #1

declare dso_local i32 @dmz_in_reclaim(%struct.dm_zone*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
