; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store = type { i32, %struct.pstore* }
%struct.pstore = type { i32, i32, i32*, i32, i64, i64, i64, i32*, i32*, i32*, i32, %struct.dm_exception_store* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNAPSHOT_DISK_VERSION = common dso_local global i32 0, align 4
@NUM_SNAPSHOT_HDR_CHUNKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"ksnaphd\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"couldn't start header metadata update thread\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unsupported persistent store option: %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_exception_store*, i8*)* @persistent_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @persistent_ctr(%struct.dm_exception_store* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_exception_store*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pstore*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.dm_exception_store* %0, %struct.dm_exception_store** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pstore* @kzalloc(i32 88, i32 %9)
  store %struct.pstore* %10, %struct.pstore** %6, align 8
  %11 = load %struct.pstore*, %struct.pstore** %6, align 8
  %12 = icmp ne %struct.pstore* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.dm_exception_store*, %struct.dm_exception_store** %4, align 8
  %18 = load %struct.pstore*, %struct.pstore** %6, align 8
  %19 = getelementptr inbounds %struct.pstore, %struct.pstore* %18, i32 0, i32 11
  store %struct.dm_exception_store* %17, %struct.dm_exception_store** %19, align 8
  %20 = load %struct.pstore*, %struct.pstore** %6, align 8
  %21 = getelementptr inbounds %struct.pstore, %struct.pstore* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @SNAPSHOT_DISK_VERSION, align 4
  %23 = load %struct.pstore*, %struct.pstore** %6, align 8
  %24 = getelementptr inbounds %struct.pstore, %struct.pstore* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 8
  %25 = load %struct.pstore*, %struct.pstore** %6, align 8
  %26 = getelementptr inbounds %struct.pstore, %struct.pstore* %25, i32 0, i32 9
  store i32* null, i32** %26, align 8
  %27 = load %struct.pstore*, %struct.pstore** %6, align 8
  %28 = getelementptr inbounds %struct.pstore, %struct.pstore* %27, i32 0, i32 8
  store i32* null, i32** %28, align 8
  %29 = load %struct.pstore*, %struct.pstore** %6, align 8
  %30 = getelementptr inbounds %struct.pstore, %struct.pstore* %29, i32 0, i32 7
  store i32* null, i32** %30, align 8
  %31 = load i64, i64* @NUM_SNAPSHOT_HDR_CHUNKS, align 8
  %32 = add nsw i64 %31, 1
  %33 = load %struct.pstore*, %struct.pstore** %6, align 8
  %34 = getelementptr inbounds %struct.pstore, %struct.pstore* %33, i32 0, i32 6
  store i64 %32, i64* %34, align 8
  %35 = load %struct.pstore*, %struct.pstore** %6, align 8
  %36 = getelementptr inbounds %struct.pstore, %struct.pstore* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.pstore*, %struct.pstore** %6, align 8
  %38 = getelementptr inbounds %struct.pstore, %struct.pstore* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.pstore*, %struct.pstore** %6, align 8
  %40 = getelementptr inbounds %struct.pstore, %struct.pstore* %39, i32 0, i32 3
  %41 = call i32 @atomic_set(i32* %40, i32 0)
  %42 = load %struct.pstore*, %struct.pstore** %6, align 8
  %43 = getelementptr inbounds %struct.pstore, %struct.pstore* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %45 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %44, i32 0)
  %46 = load %struct.pstore*, %struct.pstore** %6, align 8
  %47 = getelementptr inbounds %struct.pstore, %struct.pstore* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pstore*, %struct.pstore** %6, align 8
  %49 = getelementptr inbounds %struct.pstore, %struct.pstore* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %16
  %53 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %85

56:                                               ; preds = %16
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = call signext i8 @toupper(i8 signext %62)
  store i8 %63, i8* %8, align 1
  %64 = load i8, i8* %8, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 79
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.dm_exception_store*, %struct.dm_exception_store** %4, align 8
  %69 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %75

70:                                               ; preds = %59
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %80

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %56
  %77 = load %struct.pstore*, %struct.pstore** %6, align 8
  %78 = load %struct.dm_exception_store*, %struct.dm_exception_store** %4, align 8
  %79 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %78, i32 0, i32 1
  store %struct.pstore* %77, %struct.pstore** %79, align 8
  store i32 0, i32* %3, align 4
  br label %89

80:                                               ; preds = %70
  %81 = load %struct.pstore*, %struct.pstore** %6, align 8
  %82 = getelementptr inbounds %struct.pstore, %struct.pstore* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @destroy_workqueue(i32 %83)
  br label %85

85:                                               ; preds = %80, %52
  %86 = load %struct.pstore*, %struct.pstore** %6, align 8
  %87 = call i32 @kfree(%struct.pstore* %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %76, %13
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.pstore* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.pstore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
