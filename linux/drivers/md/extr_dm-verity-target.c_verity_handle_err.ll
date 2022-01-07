; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_handle_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_handle_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32, i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mapped_device = type { i32 }
%struct.TYPE_6__ = type { i32 }

@DM_VERITY_ENV_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DM_VERITY_MAX_CORRUPTED_ERRS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: %s block %llu is corrupted\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: reached maximum errors\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s=%d,%llu\00", align 1
@DM_VERITY_ENV_VAR_NAME = common dso_local global i8* null, align 8
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@DM_VERITY_MODE_LOGGING = common dso_local global i64 0, align 8
@DM_VERITY_MODE_RESTART = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"dm-verity device corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_verity*, i32, i64)* @verity_handle_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verity_handle_err(%struct.dm_verity* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_verity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mapped_device*, align 8
  %13 = alloca i32, align 4
  store %struct.dm_verity* %0, %struct.dm_verity** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @DM_VERITY_ENV_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* null, i8** %19, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %20 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %21 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.mapped_device* @dm_table_get_md(i32 %24)
  store %struct.mapped_device* %25, %struct.mapped_device** %12, align 8
  %26 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %27 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %29 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DM_VERITY_MAX_CORRUPTED_ERRS, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %78

34:                                               ; preds = %3
  %35 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %36 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %42 [
    i32 129, label %40
    i32 128, label %41
  ]

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %44

41:                                               ; preds = %34
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %44

42:                                               ; preds = %34
  %43 = call i32 (...) @BUG()
  br label %44

44:                                               ; preds = %42, %41, %40
  %45 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %46 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %49, i8* %50, i64 %51)
  %53 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %54 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DM_VERITY_MAX_CORRUPTED_ERRS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %44
  %59 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %60 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @DMERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %58, %44
  %66 = load i32, i32* @DM_VERITY_ENV_LENGTH, align 4
  %67 = load i8*, i8** @DM_VERITY_ENV_VAR_NAME, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @snprintf(i8* %17, i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %67, i32 %68, i64 %69)
  %71 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %72 = call i32 @dm_disk(%struct.mapped_device* %71)
  %73 = call %struct.TYPE_6__* @disk_to_dev(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* @KOBJ_CHANGE, align 4
  %76 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %77 = call i32 @kobject_uevent_env(i32* %74, i32 %75, i8** %76)
  br label %78

78:                                               ; preds = %65, %33
  %79 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %80 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DM_VERITY_MODE_LOGGING, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %94

85:                                               ; preds = %78
  %86 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %87 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DM_VERITY_MODE_RESTART, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 @kernel_restart(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %85
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %94

94:                                               ; preds = %93, %84
  %95 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mapped_device* @dm_table_get_md(i32) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @DMERR_LIMIT(i8*, i32, i8*, i64) #2

declare dso_local i32 @DMERR(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i64) #2

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #2

declare dso_local %struct.TYPE_6__* @disk_to_dev(i32) #2

declare dso_local i32 @dm_disk(%struct.mapped_device*) #2

declare dso_local i32 @kernel_restart(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
