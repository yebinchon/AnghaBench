; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.mirror_set* }
%struct.mirror_set = type { i32, i32 }
%struct.dm_dirty_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dm_dirty_log*)* }

@.str = private unnamed_addr constant [18 x i8] c"log resume failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @mirror_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mirror_resume(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.mirror_set*, align 8
  %4 = alloca %struct.dm_dirty_log*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %5 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %6 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %5, i32 0, i32 0
  %7 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  store %struct.mirror_set* %7, %struct.mirror_set** %3, align 8
  %8 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %9 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dm_dirty_log* @dm_rh_dirty_log(i32 %10)
  store %struct.dm_dirty_log* %11, %struct.dm_dirty_log** %4, align 8
  %12 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %13 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %12, i32 0, i32 1
  %14 = call i32 @atomic_set(i32* %13, i32 0)
  %15 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %16 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %18, align 8
  %20 = icmp ne i64 (%struct.dm_dirty_log*)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %23 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %25, align 8
  %27 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %28 = call i64 %26(%struct.dm_dirty_log* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 @DMWARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %21, %1
  %33 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %34 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dm_rh_start_recovery(i32 %35)
  ret void
}

declare dso_local %struct.dm_dirty_log* @dm_rh_dirty_log(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @dm_rh_start_recovery(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
