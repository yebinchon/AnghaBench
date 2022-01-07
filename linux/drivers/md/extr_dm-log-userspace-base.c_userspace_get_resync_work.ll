; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-userspace-base.c_userspace_get_resync_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-userspace-base.c_userspace_get_resync_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { %struct.log_c* }
%struct.log_c = type { i64, i64, i32 }
%struct.anon = type { i64, i32 }

@DM_ULOG_GET_RESYNC_WORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dirty_log*, i32*)* @userspace_get_resync_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userspace_get_resync_work(%struct.dm_dirty_log* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_dirty_log*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.log_c*, align 8
  %9 = alloca %struct.anon, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %11 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %10, i32 0, i32 0
  %12 = load %struct.log_c*, %struct.log_c** %11, align 8
  store %struct.log_c* %12, %struct.log_c** %8, align 8
  %13 = load %struct.log_c*, %struct.log_c** %8, align 8
  %14 = getelementptr inbounds %struct.log_c, %struct.log_c* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.log_c*, %struct.log_c** %8, align 8
  %17 = getelementptr inbounds %struct.log_c, %struct.log_c* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  store i64 16, i64* %7, align 8
  %22 = load %struct.log_c*, %struct.log_c** %8, align 8
  %23 = load %struct.log_c*, %struct.log_c** %8, align 8
  %24 = getelementptr inbounds %struct.log_c, %struct.log_c* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DM_ULOG_GET_RESYNC_WORK, align 4
  %27 = bitcast %struct.anon* %9 to i8*
  %28 = call i32 @userspace_do_request(%struct.log_c* %22, i32 %25, i32 %26, i32* null, i32 0, i8* %27, i64* %7)
  store i32 %28, i32* %6, align 4
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  br label %40

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i32 [ %35, %34 ], [ %39, %36 ]
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @userspace_do_request(%struct.log_c*, i32, i32, i32*, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
