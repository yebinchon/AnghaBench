; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-exception-store.c_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-exception-store.c_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No memory left to attempt load for \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"dm-exstore-%s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Module for exstore type \22%s\22 not found.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_exception_store_type* (i8*)* @get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_exception_store_type* @get_type(i8* %0) #0 {
  %2 = alloca %struct.dm_exception_store_type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dm_exception_store_type*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.dm_exception_store_type* @_get_exception_store_type(i8* %7)
  store %struct.dm_exception_store_type* %8, %struct.dm_exception_store_type** %6, align 8
  %9 = load %struct.dm_exception_store_type*, %struct.dm_exception_store_type** %6, align 8
  %10 = icmp ne %struct.dm_exception_store_type* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.dm_exception_store_type*, %struct.dm_exception_store_type** %6, align 8
  store %struct.dm_exception_store_type* %12, %struct.dm_exception_store_type** %2, align 8
  br label %53

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kstrdup(i8* %14, i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @DMERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %20)
  store %struct.dm_exception_store_type* null, %struct.dm_exception_store_type** %2, align 8
  br label %53

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @request_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call %struct.dm_exception_store_type* @_get_exception_store_type(i8* %28)
  store %struct.dm_exception_store_type* %29, %struct.dm_exception_store_type** %6, align 8
  %30 = icmp ne %struct.dm_exception_store_type* %29, null
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ true, %23 ], [ %31, %27 ]
  br i1 %33, label %34, label %43

34:                                               ; preds = %32
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @strrchr(i8* %35, i8 signext 45)
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %42, align 1
  br label %23

43:                                               ; preds = %39, %32
  %44 = load %struct.dm_exception_store_type*, %struct.dm_exception_store_type** %6, align 8
  %45 = icmp ne %struct.dm_exception_store_type* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @DMWARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @kfree(i8* %50)
  %52 = load %struct.dm_exception_store_type*, %struct.dm_exception_store_type** %6, align 8
  store %struct.dm_exception_store_type* %52, %struct.dm_exception_store_type** %2, align 8
  br label %53

53:                                               ; preds = %49, %19, %11
  %54 = load %struct.dm_exception_store_type*, %struct.dm_exception_store_type** %2, align 8
  ret %struct.dm_exception_store_type* %54
}

declare dso_local %struct.dm_exception_store_type* @_get_exception_store_type(i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @DMERR(i8*, i8*) #1

declare dso_local i64 @request_module(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @DMWARN(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
