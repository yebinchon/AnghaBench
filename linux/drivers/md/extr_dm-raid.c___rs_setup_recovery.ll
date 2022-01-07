; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c___rs_setup_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c___rs_setup_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@MaxSector = common dso_local global i8* null, align 8
@__CTR_FLAG_NOSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*, i8*)* @__rs_setup_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rs_setup_recovery(%struct.raid_set* %0, i8* %1) #0 {
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i8*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %6 = call i64 @rs_is_raid0(%struct.raid_set* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8*, i8** @MaxSector, align 8
  %10 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %11 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i8* %9, i8** %12, align 8
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %15 = call i64 @rs_is_raid6(%struct.raid_set* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %20 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  br label %37

22:                                               ; preds = %13
  %23 = load i32, i32* @__CTR_FLAG_NOSYNC, align 4
  %24 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %25 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i8*, i8** @MaxSector, align 8
  br label %32

30:                                               ; preds = %22
  %31 = load i8*, i8** %4, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i8* [ %29, %28 ], [ %31, %30 ]
  %34 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %35 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  br label %37

37:                                               ; preds = %32, %17
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

declare dso_local i64 @rs_is_raid0(%struct.raid_set*) #1

declare dso_local i64 @rs_is_raid6(%struct.raid_set*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
