; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.raid_set* }
%struct.raid_set = type { i32, %struct.mddev }
%struct.mddev = type { i64, i64, i64, i32 }

@RT_FLAG_RS_RESUMED = common dso_local global i32 0, align 4
@RT_FLAG_RS_SUSPENDED = common dso_local global i32 0, align 4
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @raid_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid_resume(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca %struct.mddev*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %5 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %6 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %5, i32 0, i32 0
  %7 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  store %struct.raid_set* %7, %struct.raid_set** %3, align 8
  %8 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %9 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %8, i32 0, i32 1
  store %struct.mddev* %9, %struct.mddev** %4, align 8
  %10 = load i32, i32* @RT_FLAG_RS_RESUMED, align 4
  %11 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %12 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %11, i32 0, i32 0
  %13 = call i64 @test_and_set_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %17 = call i32 @attempt_restore_of_faulty_devices(%struct.raid_set* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* @RT_FLAG_RS_SUSPENDED, align 4
  %20 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %21 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %20, i32 0, i32 0
  %22 = call i64 @test_and_clear_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load %struct.mddev*, %struct.mddev** %4, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %31 = call i32 @rs_set_capacity(%struct.raid_set* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.mddev*, %struct.mddev** %4, align 8
  %34 = call i32 @mddev_lock_nointr(%struct.mddev* %33)
  %35 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %36 = load %struct.mddev*, %struct.mddev** %4, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 3
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load %struct.mddev*, %struct.mddev** %4, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.mddev*, %struct.mddev** %4, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.mddev*, %struct.mddev** %4, align 8
  %44 = call i32 @mddev_resume(%struct.mddev* %43)
  %45 = load %struct.mddev*, %struct.mddev** %4, align 8
  %46 = call i32 @mddev_unlock(%struct.mddev* %45)
  br label %47

47:                                               ; preds = %32, %18
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @attempt_restore_of_faulty_devices(%struct.raid_set*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rs_set_capacity(%struct.raid_set*) #1

declare dso_local i32 @mddev_lock_nointr(%struct.mddev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mddev_resume(%struct.mddev*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
