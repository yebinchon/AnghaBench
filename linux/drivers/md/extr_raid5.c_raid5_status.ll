; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.mddev = type { i64, i32, i32, %struct.r5conf* }
%struct.r5conf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c" level %d, %dk chunk, algorithm %d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" [%d/%d] [\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@In_sync = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.mddev*)* @raid5_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid5_status(%struct.seq_file* %0, %struct.mddev* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_rdev*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.mddev* %1, %struct.mddev** %4, align 8
  %8 = load %struct.mddev*, %struct.mddev** %4, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 3
  %10 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  store %struct.r5conf* %10, %struct.r5conf** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load %struct.mddev*, %struct.mddev** %4, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %16 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 2
  %19 = load %struct.mddev*, %struct.mddev** %4, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %25 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.mddev*, %struct.mddev** %4, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26, i64 %34)
  %36 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %67, %2
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %40 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %37
  %44 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %45 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.md_rdev* @rcu_dereference(i32 %51)
  store %struct.md_rdev* %52, %struct.md_rdev** %7, align 8
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %55 = icmp ne %struct.md_rdev* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load i32, i32* @In_sync, align 4
  %58 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %59 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %58, i32 0, i32 0
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %56, %43
  %63 = phi i1 [ false, %43 ], [ %61, %56 ]
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %66 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %37

70:                                               ; preds = %37
  %71 = call i32 (...) @rcu_read_unlock()
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
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
