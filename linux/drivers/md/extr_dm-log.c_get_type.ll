; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"No memory left to attempt log module load for \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dm-log-%s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Module for logging type \22%s\22 not found.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_dirty_log_type* (i8*)* @get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_dirty_log_type* @get_type(i8* %0) #0 {
  %2 = alloca %struct.dm_dirty_log_type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dm_dirty_log_type*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.dm_dirty_log_type* null, %struct.dm_dirty_log_type** %2, align 8
  br label %57

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call %struct.dm_dirty_log_type* @_get_dirty_log_type(i8* %11)
  store %struct.dm_dirty_log_type* %12, %struct.dm_dirty_log_type** %6, align 8
  %13 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %6, align 8
  %14 = icmp ne %struct.dm_dirty_log_type* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %6, align 8
  store %struct.dm_dirty_log_type* %16, %struct.dm_dirty_log_type** %2, align 8
  br label %57

17:                                               ; preds = %10
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kstrdup(i8* %18, i32 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @DMWARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %24)
  store %struct.dm_dirty_log_type* null, %struct.dm_dirty_log_type** %2, align 8
  br label %57

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @request_module(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = call %struct.dm_dirty_log_type* @_get_dirty_log_type(i8* %32)
  store %struct.dm_dirty_log_type* %33, %struct.dm_dirty_log_type** %6, align 8
  %34 = icmp ne %struct.dm_dirty_log_type* %33, null
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i1 [ true, %27 ], [ %35, %31 ]
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @strrchr(i8* %39, i8 signext 45)
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 0, i8* %46, align 1
  br label %27

47:                                               ; preds = %43, %36
  %48 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %6, align 8
  %49 = icmp ne %struct.dm_dirty_log_type* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @DMWARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @kfree(i8* %54)
  %56 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %6, align 8
  store %struct.dm_dirty_log_type* %56, %struct.dm_dirty_log_type** %2, align 8
  br label %57

57:                                               ; preds = %53, %23, %15, %9
  %58 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %2, align 8
  ret %struct.dm_dirty_log_type* %58
}

declare dso_local %struct.dm_dirty_log_type* @_get_dirty_log_type(i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @DMWARN(i8*, i8*) #1

declare dso_local i64 @request_module(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
