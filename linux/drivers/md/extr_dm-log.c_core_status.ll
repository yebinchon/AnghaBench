; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_core_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_core_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { %struct.TYPE_2__*, %struct.log_c* }
%struct.TYPE_2__ = type { i32 }
%struct.log_c = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"1 %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s %u %u \00", align 1
@DEFAULTSYNC = common dso_local global i32 0, align 4
@DMEMIT_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dirty_log*, i32, i8*, i32)* @core_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_status(%struct.dm_dirty_log* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dm_dirty_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.log_c*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %5, align 8
  %12 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %11, i32 0, i32 1
  %13 = load %struct.log_c*, %struct.log_c** %12, align 8
  store %struct.log_c* %13, %struct.log_c** %10, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %40 [
    i32 129, label %15
    i32 128, label %22
  ]

15:                                               ; preds = %4
  %16 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %5, align 8
  %17 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32, ...) @DMEMIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %40

22:                                               ; preds = %4
  %23 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %5, align 8
  %24 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.log_c*, %struct.log_c** %10, align 8
  %29 = getelementptr inbounds %struct.log_c, %struct.log_c* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DEFAULTSYNC, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 2
  %35 = load %struct.log_c*, %struct.log_c** %10, align 8
  %36 = getelementptr inbounds %struct.log_c, %struct.log_c* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, ...) @DMEMIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %34, i32 %37)
  %39 = load i32, i32* @DMEMIT_SYNC, align 4
  br label %40

40:                                               ; preds = %22, %4, %15
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @DMEMIT(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
