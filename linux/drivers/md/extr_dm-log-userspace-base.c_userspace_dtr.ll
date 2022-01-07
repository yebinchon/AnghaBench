; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-userspace-base.c_userspace_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-userspace-base.c_userspace_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { %struct.log_c* }
%struct.log_c = type { %struct.log_c*, i32, i64, i32, i32, i32, i32, i32, i32, i64 }

@DM_ULOG_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_dirty_log*)* @userspace_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @userspace_dtr(%struct.dm_dirty_log* %0) #0 {
  %2 = alloca %struct.dm_dirty_log*, align 8
  %3 = alloca %struct.log_c*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %2, align 8
  %4 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %2, align 8
  %5 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %4, i32 0, i32 0
  %6 = load %struct.log_c*, %struct.log_c** %5, align 8
  store %struct.log_c* %6, %struct.log_c** %3, align 8
  %7 = load %struct.log_c*, %struct.log_c** %3, align 8
  %8 = getelementptr inbounds %struct.log_c, %struct.log_c* %7, i32 0, i32 9
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.log_c*, %struct.log_c** %3, align 8
  %13 = getelementptr inbounds %struct.log_c, %struct.log_c* %12, i32 0, i32 8
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.log_c*, %struct.log_c** %3, align 8
  %18 = getelementptr inbounds %struct.log_c, %struct.log_c* %17, i32 0, i32 7
  %19 = call i32 @flush_delayed_work(i32* %18)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.log_c*, %struct.log_c** %3, align 8
  %22 = getelementptr inbounds %struct.log_c, %struct.log_c* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @destroy_workqueue(i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.log_c*, %struct.log_c** %3, align 8
  %27 = getelementptr inbounds %struct.log_c, %struct.log_c* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.log_c*, %struct.log_c** %3, align 8
  %30 = getelementptr inbounds %struct.log_c, %struct.log_c* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DM_ULOG_DTR, align 4
  %33 = call i32 @dm_consult_userspace(i32 %28, i32 %31, i32 %32, i32* null, i32 0, i32* null, i32* null)
  %34 = load %struct.log_c*, %struct.log_c** %3, align 8
  %35 = getelementptr inbounds %struct.log_c, %struct.log_c* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %25
  %39 = load %struct.log_c*, %struct.log_c** %3, align 8
  %40 = getelementptr inbounds %struct.log_c, %struct.log_c* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.log_c*, %struct.log_c** %3, align 8
  %43 = getelementptr inbounds %struct.log_c, %struct.log_c* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @dm_put_device(i32 %41, i64 %44)
  br label %46

46:                                               ; preds = %38, %25
  %47 = load %struct.log_c*, %struct.log_c** %3, align 8
  %48 = getelementptr inbounds %struct.log_c, %struct.log_c* %47, i32 0, i32 1
  %49 = call i32 @mempool_exit(i32* %48)
  %50 = load %struct.log_c*, %struct.log_c** %3, align 8
  %51 = getelementptr inbounds %struct.log_c, %struct.log_c* %50, i32 0, i32 0
  %52 = load %struct.log_c*, %struct.log_c** %51, align 8
  %53 = call i32 @kfree(%struct.log_c* %52)
  %54 = load %struct.log_c*, %struct.log_c** %3, align 8
  %55 = call i32 @kfree(%struct.log_c* %54)
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @dm_consult_userspace(i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @dm_put_device(i32, i64) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @kfree(%struct.log_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
