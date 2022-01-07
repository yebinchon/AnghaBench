; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c___rdev_sectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c___rdev_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.md_rdev }
%struct.md_rdev = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@Journal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.raid_set*)* @__rdev_sectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__rdev_sectors(%struct.raid_set* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %9 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %6
  %14 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %15 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.md_rdev* %20, %struct.md_rdev** %5, align 8
  %21 = load i32, i32* @Journal, align 4
  %22 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 2
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %13
  %27 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %28 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %33 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %38 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %2, align 8
  br label %45

40:                                               ; preds = %31, %26, %13
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %6

44:                                               ; preds = %6
  store i64 0, i64* %2, align 8
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
