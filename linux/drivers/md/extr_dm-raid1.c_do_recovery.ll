; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_do_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_do_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dm_region = type { i32 }
%struct.dm_dirty_log = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.dm_dirty_log*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*)* @do_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_recovery(%struct.mirror_set* %0) #0 {
  %2 = alloca %struct.mirror_set*, align 8
  %3 = alloca %struct.dm_region*, align 8
  %4 = alloca %struct.dm_dirty_log*, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %2, align 8
  %5 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %6 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.dm_dirty_log* @dm_rh_dirty_log(i32 %7)
  store %struct.dm_dirty_log* %8, %struct.dm_dirty_log** %4, align 8
  %9 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %10 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dm_rh_recovery_prepare(i32 %11)
  br label %13

13:                                               ; preds = %19, %1
  %14 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %15 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.dm_region* @dm_rh_recovery_start(i32 %16)
  store %struct.dm_region* %17, %struct.dm_region** %3, align 8
  %18 = icmp ne %struct.dm_region* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %21 = load %struct.dm_region*, %struct.dm_region** %3, align 8
  %22 = call i32 @recover(%struct.mirror_set* %20, %struct.dm_region* %21)
  br label %13

23:                                               ; preds = %13
  %24 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %25 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %23
  %29 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %30 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %32, align 8
  %34 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %35 = call i64 %33(%struct.dm_dirty_log* %34)
  %36 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %37 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %28
  %41 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %42 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dm_table_event(i32 %45)
  %47 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %48 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.mirror_set*, %struct.mirror_set** %2, align 8
  %50 = call i32 @reset_ms_flags(%struct.mirror_set* %49)
  br label %51

51:                                               ; preds = %40, %28, %23
  ret void
}

declare dso_local %struct.dm_dirty_log* @dm_rh_dirty_log(i32) #1

declare dso_local i32 @dm_rh_recovery_prepare(i32) #1

declare dso_local %struct.dm_region* @dm_rh_recovery_start(i32) #1

declare dso_local i32 @recover(%struct.mirror_set*, %struct.dm_region*) #1

declare dso_local i32 @dm_table_event(i32) #1

declare dso_local i32 @reset_ms_flags(%struct.mirror_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
