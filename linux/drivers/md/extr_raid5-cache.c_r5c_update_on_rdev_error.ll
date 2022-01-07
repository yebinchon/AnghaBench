; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_update_on_rdev_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_update_on_rdev_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { %struct.r5l_log* }
%struct.r5l_log = type { i64, i32 }
%struct.md_rdev = type { i32 }

@Journal = common dso_local global i32 0, align 4
@R5C_JOURNAL_MODE_WRITE_BACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r5c_update_on_rdev_error(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca %struct.r5l_log*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %7 = load %struct.mddev*, %struct.mddev** %3, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 0
  %9 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  store %struct.r5conf* %9, %struct.r5conf** %5, align 8
  %10 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %11 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %10, i32 0, i32 0
  %12 = load %struct.r5l_log*, %struct.r5l_log** %11, align 8
  store %struct.r5l_log* %12, %struct.r5l_log** %6, align 8
  %13 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %14 = icmp ne %struct.r5l_log* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %18 = call i64 @raid5_calc_degraded(%struct.r5conf* %17)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @Journal, align 4
  %22 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %20, %16
  %27 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 0
  %29 = load %struct.r5l_log*, %struct.r5l_log** %28, align 8
  %30 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @R5C_JOURNAL_MODE_WRITE_BACK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %36 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %35, i32 0, i32 1
  %37 = call i32 @schedule_work(i32* %36)
  br label %38

38:                                               ; preds = %15, %34, %26, %20
  ret void
}

declare dso_local i64 @raid5_calc_degraded(%struct.r5conf*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
