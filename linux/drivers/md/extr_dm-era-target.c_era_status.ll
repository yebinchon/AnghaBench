; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_era_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_era_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.era* }
%struct.era = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.metadata_stats = type { i32, i32, i64, i64 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@metadata_get_stats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%u %llu/%llu %u\00", align 1
@DM_ERA_METADATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" %llu\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %u\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, i32, i32, i8*, i32)* @era_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @era_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.era*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.metadata_stats, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %19 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %18, i32 0, i32 0
  %20 = load %struct.era*, %struct.era** %19, align 8
  store %struct.era* %20, %struct.era** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* @BDEVNAME_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %77 [
    i32 129, label %26
    i32 128, label %55
  ]

26:                                               ; preds = %5
  %27 = load %struct.era*, %struct.era** %12, align 8
  %28 = load i32, i32* @metadata_get_stats, align 4
  %29 = call i32 @in_worker1(%struct.era* %27, i32 %28, %struct.metadata_stats* %14)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %78

33:                                               ; preds = %26
  %34 = load i32, i32* @DM_ERA_METADATA_BLOCK_SIZE, align 4
  %35 = load i32, i32* @SECTOR_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = getelementptr inbounds %struct.metadata_stats, %struct.metadata_stats* %14, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.metadata_stats, %struct.metadata_stats* %14, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.metadata_stats, %struct.metadata_stats* %14, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %38, i64 %40, i32 %42)
  %44 = getelementptr inbounds %struct.metadata_stats, %struct.metadata_stats* %14, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SUPERBLOCK_LOCATION, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.metadata_stats, %struct.metadata_stats* %14, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %54

52:                                               ; preds = %33
  %53 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  br label %77

55:                                               ; preds = %5
  %56 = load %struct.era*, %struct.era** %12, align 8
  %57 = getelementptr inbounds %struct.era, %struct.era* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @format_dev_t(i8* %24, i32 %62)
  %64 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %65 = load %struct.era*, %struct.era** %12, align 8
  %66 = getelementptr inbounds %struct.era, %struct.era* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @format_dev_t(i8* %24, i32 %71)
  %73 = load %struct.era*, %struct.era** %12, align 8
  %74 = getelementptr inbounds %struct.era, %struct.era* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %24, i32 %75)
  br label %77

77:                                               ; preds = %5, %55, %54
  store i32 1, i32* %17, align 4
  br label %80

78:                                               ; preds = %32
  %79 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %17, align 4
  switch i32 %82, label %84 [
    i32 0, label %83
    i32 1, label %83
  ]

83:                                               ; preds = %80, %80
  ret void

84:                                               ; preds = %80
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @in_worker1(%struct.era*, i32, %struct.metadata_stats*) #2

declare dso_local i32 @DMEMIT(i8*, ...) #2

declare dso_local i32 @format_dev_t(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
