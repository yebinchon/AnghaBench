; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_lock_zone_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_lock_zone_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_zone = type { i32 }

@DMZ_RECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmz_lock_zone_reclaim(%struct.dm_zone* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_zone*, align 8
  store %struct.dm_zone* %0, %struct.dm_zone** %3, align 8
  %4 = load %struct.dm_zone*, %struct.dm_zone** %3, align 8
  %5 = call i64 @dmz_is_active(%struct.dm_zone* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

8:                                                ; preds = %1
  %9 = load i32, i32* @DMZ_RECLAIM, align 4
  %10 = load %struct.dm_zone*, %struct.dm_zone** %3, align 8
  %11 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %10, i32 0, i32 0
  %12 = call i32 @test_and_set_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %8, %7
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @dmz_is_active(%struct.dm_zone*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
