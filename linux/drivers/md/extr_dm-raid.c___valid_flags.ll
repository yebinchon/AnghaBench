; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c___valid_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c___valid_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32 }

@RAID0_VALID_FLAGS = common dso_local global i64 0, align 8
@RAID1_VALID_FLAGS = common dso_local global i64 0, align 8
@RAID10_VALID_FLAGS = common dso_local global i64 0, align 8
@RAID45_VALID_FLAGS = common dso_local global i64 0, align 8
@RAID6_VALID_FLAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.raid_set*)* @__valid_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__valid_flags(%struct.raid_set* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.raid_set*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  %4 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %5 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @rt_is_raid0(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @RAID0_VALID_FLAGS, align 8
  store i64 %10, i64* %2, align 8
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %13 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @rt_is_raid1(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* @RAID1_VALID_FLAGS, align 8
  store i64 %18, i64* %2, align 8
  br label %48

19:                                               ; preds = %11
  %20 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %21 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @rt_is_raid10(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @RAID10_VALID_FLAGS, align 8
  store i64 %26, i64* %2, align 8
  br label %48

27:                                               ; preds = %19
  %28 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %29 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @rt_is_raid45(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @RAID45_VALID_FLAGS, align 8
  store i64 %34, i64* %2, align 8
  br label %48

35:                                               ; preds = %27
  %36 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %37 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @rt_is_raid6(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @RAID6_VALID_FLAGS, align 8
  store i64 %42, i64* %2, align 8
  br label %48

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  store i64 0, i64* %2, align 8
  br label %48

48:                                               ; preds = %47, %41, %33, %25, %17, %9
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i64 @rt_is_raid0(i32) #1

declare dso_local i64 @rt_is_raid1(i32) #1

declare dso_local i64 @rt_is_raid10(i32) #1

declare dso_local i64 @rt_is_raid45(i32) #1

declare dso_local i64 @rt_is_raid6(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
