; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_notify_of_pool_mode_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_notify_of_pool_mode_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"out-of-data-space\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@PM_OUT_OF_DATA_SPACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c" (queue IO)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" (error IO)\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: switching pool to %s%s mode\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*)* @notify_of_pool_mode_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_of_pool_mode_change(%struct.pool* %0) #0 {
  %2 = alloca %struct.pool*, align 8
  %3 = alloca [5 x i8*], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.pool* %0, %struct.pool** %2, align 8
  %6 = bitcast [5 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false)
  %7 = bitcast i8* %6 to [5 x i8*]*
  %8 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %8, align 16
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8** %9, align 8
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %10, align 16
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i32 0, i32 3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 8
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %12, align 16
  store i8* null, i8** %4, align 8
  %13 = load %struct.pool*, %struct.pool** %2, align 8
  %14 = call i32 @get_pool_mode(%struct.pool* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PM_OUT_OF_DATA_SPACE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.pool*, %struct.pool** %2, align 8
  %20 = getelementptr inbounds %struct.pool, %struct.pool* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %26

25:                                               ; preds = %18
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %26

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.pool*, %struct.pool** %2, align 8
  %29 = getelementptr inbounds %struct.pool, %struct.pool* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dm_table_event(i32 %32)
  %34 = load %struct.pool*, %struct.pool** %2, align 8
  %35 = getelementptr inbounds %struct.pool, %struct.pool* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dm_device_name(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %46

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %44
  %47 = phi i8* [ %42, %44 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %45 ]
  %48 = call i32 @DMINFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %37, i8* %41, i8* %47)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_pool_mode(%struct.pool*) #2

declare dso_local i32 @dm_table_event(i32) #2

declare dso_local i32 @DMINFO(i8*, i32, i8*, i8*) #2

declare dso_local i32 @dm_device_name(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
