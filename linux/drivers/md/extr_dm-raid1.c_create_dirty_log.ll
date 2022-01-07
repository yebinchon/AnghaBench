; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_create_dirty_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_create_dirty_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { i32 }
%struct.dm_target = type { i8* }

@.str = private unnamed_addr constant [34 x i8] c"Insufficient mirror log arguments\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid mirror log argument count\00", align 1
@mirror_flush = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Error creating mirror dirty log\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_dirty_log* (%struct.dm_target*, i32, i8**, i32*)* @create_dirty_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_dirty_log* @create_dirty_log(%struct.dm_target* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.dm_dirty_log*, align 8
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_dirty_log*, align 8
  %12 = alloca i8, align 1
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %17 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  store %struct.dm_dirty_log* null, %struct.dm_dirty_log** %5, align 8
  br label %55

18:                                               ; preds = %4
  %19 = load i8**, i8*** %8, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %10, i8* %12)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %26 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %26, align 8
  store %struct.dm_dirty_log* null, %struct.dm_dirty_log** %5, align 8
  br label %55

27:                                               ; preds = %18
  %28 = load i32, i32* %10, align 4
  %29 = add i32 2, %28
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %37 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  store %struct.dm_dirty_log* null, %struct.dm_dirty_log** %5, align 8
  br label %55

38:                                               ; preds = %27
  %39 = load i8**, i8*** %8, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %43 = load i32, i32* @mirror_flush, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i8**, i8*** %8, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 2
  %47 = call %struct.dm_dirty_log* @dm_dirty_log_create(i8* %41, %struct.dm_target* %42, i32 %43, i32 %44, i8** %46)
  store %struct.dm_dirty_log* %47, %struct.dm_dirty_log** %11, align 8
  %48 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %11, align 8
  %49 = icmp ne %struct.dm_dirty_log* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %38
  %51 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %52 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8** %52, align 8
  store %struct.dm_dirty_log* null, %struct.dm_dirty_log** %5, align 8
  br label %55

53:                                               ; preds = %38
  %54 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %11, align 8
  store %struct.dm_dirty_log* %54, %struct.dm_dirty_log** %5, align 8
  br label %55

55:                                               ; preds = %53, %50, %35, %24, %15
  %56 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %5, align 8
  ret %struct.dm_dirty_log* %56
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local %struct.dm_dirty_log* @dm_dirty_log_create(i8*, %struct.dm_target*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
