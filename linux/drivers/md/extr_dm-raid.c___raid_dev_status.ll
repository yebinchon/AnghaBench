; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c___raid_dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c___raid_dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.md_rdev = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@Faulty = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@Journal = common dso_local global i32 0, align 4
@R5C_JOURNAL_MODE_WRITE_THROUGH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@RT_FLAG_RS_RESYNCING = common dso_local global i32 0, align 4
@RT_FLAG_RS_IN_SYNC = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.raid_set*, %struct.md_rdev*)* @__raid_dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__raid_dev_status(%struct.raid_set* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %6 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %7 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %53

11:                                               ; preds = %2
  %12 = load i32, i32* @Faulty, align 4
  %13 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %53

18:                                               ; preds = %11
  %19 = load i32, i32* @Journal, align 4
  %20 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %21 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %26 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @R5C_JOURNAL_MODE_WRITE_THROUGH, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  store i8* %32, i8** %3, align 8
  br label %53

33:                                               ; preds = %18
  %34 = load i32, i32* @RT_FLAG_RS_RESYNCING, align 4
  %35 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %36 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @RT_FLAG_RS_IN_SYNC, align 4
  %41 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %42 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %41, i32 0, i32 0
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @In_sync, align 4
  %47 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %48 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %47, i32 0, i32 0
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %33
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %53

52:                                               ; preds = %45, %39
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %53

53:                                               ; preds = %52, %51, %24, %17, %10
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
