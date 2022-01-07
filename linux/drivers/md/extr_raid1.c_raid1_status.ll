; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.mddev = type { i64, %struct.r1conf* }
%struct.r1conf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c" [%d/%d] [\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@In_sync = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.mddev*)* @raid1_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid1_status(%struct.seq_file* %0, %struct.mddev* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.r1conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_rdev*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.mddev* %1, %struct.mddev** %4, align 8
  %8 = load %struct.mddev*, %struct.mddev** %4, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 1
  %10 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  store %struct.r1conf* %10, %struct.r1conf** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %13 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %16 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = load %struct.mddev*, %struct.mddev** %4, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %22)
  %24 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %55, %2
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %28 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %33 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.md_rdev* @rcu_dereference(i32 %39)
  store %struct.md_rdev* %40, %struct.md_rdev** %7, align 8
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %43 = icmp ne %struct.md_rdev* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load i32, i32* @In_sync, align 4
  %46 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %47 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %46, i32 0, i32 0
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %44, %31
  %51 = phi i1 [ false, %31 ], [ %49, %44 ]
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %25

58:                                               ; preds = %25
  %59 = call i32 (...) @rcu_read_unlock()
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
