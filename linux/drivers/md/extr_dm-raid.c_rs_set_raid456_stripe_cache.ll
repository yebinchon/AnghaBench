; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_set_raid456_stripe_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_set_raid456_stripe_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i64, %struct.TYPE_2__*, i32, %struct.mddev }
%struct.TYPE_2__ = type { i8* }
%struct.mddev = type { %struct.r5conf*, i32, i32 }
%struct.r5conf = type { i64 }

@.str = private unnamed_addr constant [58 x i8] c"Inappropriate raid level; cannot change stripe_cache size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Adjusting requested %u stripe cache entries to %u to suit stripe size\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Cannot change stripe_cache size on inactive RAID set\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to set raid4/5/6 stripe cache size\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%u stripe cache entries\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @rs_set_raid456_stripe_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_set_raid456_stripe_cache(%struct.raid_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  %9 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %10 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %9, i32 0, i32 3
  store %struct.mddev* %10, %struct.mddev** %6, align 8
  %11 = load %struct.mddev*, %struct.mddev** %6, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mddev*, %struct.mddev** %6, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @max(i32 %13, i32 %16)
  %18 = sdiv i32 %17, 2
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %7, align 8
  %20 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %21 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %24 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @rt_is_raid456(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %30 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %79

35:                                               ; preds = %1
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 (i8*, i64, ...) @DMINFO(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.mddev*, %struct.mddev** %6, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 0
  %47 = load %struct.r5conf*, %struct.r5conf** %46, align 8
  store %struct.r5conf* %47, %struct.r5conf** %5, align 8
  %48 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %49 = icmp ne %struct.r5conf* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %52 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8** %54, align 8
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %79

57:                                               ; preds = %44
  %58 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %59 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %57
  %64 = load %struct.mddev*, %struct.mddev** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @raid5_set_cache_size(%struct.mddev* %64, i64 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %71 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8** %73, align 8
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %79

75:                                               ; preds = %63
  %76 = load i64, i64* %8, align 8
  %77 = call i32 (i8*, i64, ...) @DMINFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %75, %57
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %69, %50, %28
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @rt_is_raid456(i32) #1

declare dso_local i32 @DMINFO(i8*, i64, ...) #1

declare dso_local i32 @raid5_set_cache_size(%struct.mddev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
