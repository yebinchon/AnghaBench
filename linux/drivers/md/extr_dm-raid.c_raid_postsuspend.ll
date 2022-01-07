; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_postsuspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_postsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.raid_set* }
%struct.raid_set = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@RT_FLAG_RS_SUSPENDED = common dso_local global i32 0, align 4
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @raid_postsuspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid_postsuspend(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.raid_set*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  store %struct.raid_set* %6, %struct.raid_set** %3, align 8
  %7 = load i32, i32* @RT_FLAG_RS_SUSPENDED, align 4
  %8 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %9 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %8, i32 0, i32 1
  %10 = call i32 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %14 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %15 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @test_bit(i32 %13, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %21 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %20, i32 0, i32 0
  %22 = call i32 @md_stop_writes(%struct.TYPE_5__* %21)
  br label %23

23:                                               ; preds = %19, %12
  %24 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %25 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %24, i32 0, i32 0
  %26 = call i32 @mddev_lock_nointr(%struct.TYPE_5__* %25)
  %27 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %28 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %27, i32 0, i32 0
  %29 = call i32 @mddev_suspend(%struct.TYPE_5__* %28)
  %30 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %31 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %30, i32 0, i32 0
  %32 = call i32 @mddev_unlock(%struct.TYPE_5__* %31)
  br label %33

33:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @md_stop_writes(%struct.TYPE_5__*) #1

declare dso_local i32 @mddev_lock_nointr(%struct.TYPE_5__*) #1

declare dso_local i32 @mddev_suspend(%struct.TYPE_5__*) #1

declare dso_local i32 @mddev_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
