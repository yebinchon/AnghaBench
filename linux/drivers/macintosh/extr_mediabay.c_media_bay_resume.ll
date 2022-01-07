; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_mediabay.c_media_bay_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_mediabay.c_media_bay_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.macio_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.media_bay_info = type { i64, i64, i64, i32, i64, i32, i8*, i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (%struct.media_bay_info*)* }

@PM_EVENT_ON = common dso_local global i64 0, align 8
@PMSG_ON = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MB_POWER_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mediabay%d: Content changed during sleep...\0A\00", align 1
@MB_STABLE_DELAY = common dso_local global i32 0, align 4
@MB_POLL_DELAY = common dso_local global i32 0, align 4
@mb_empty = common dso_local global i64 0, align 8
@mb_up = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macio_dev*)* @media_bay_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @media_bay_resume(%struct.macio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.macio_dev*, align 8
  %4 = alloca %struct.media_bay_info*, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %3, align 8
  %5 = load %struct.macio_dev*, %struct.macio_dev** %3, align 8
  %6 = call %struct.media_bay_info* @macio_get_drvdata(%struct.macio_dev* %5)
  store %struct.media_bay_info* %6, %struct.media_bay_info** %4, align 8
  %7 = load %struct.macio_dev*, %struct.macio_dev** %3, align 8
  %8 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PM_EVENT_ON, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %92

16:                                               ; preds = %1
  %17 = load %struct.macio_dev*, %struct.macio_dev** %3, align 8
  %18 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = bitcast %struct.TYPE_10__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_10__* @PMSG_ON to i8*), i64 8, i1 false)
  %23 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %24 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %23, i32 0, i32 3
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %27 = call i32 @set_mb_power(%struct.media_bay_info* %26, i32 0)
  %28 = load i32, i32* @MB_POWER_DELAY, align 4
  %29 = call i32 @msleep(i32 %28)
  %30 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %31 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %30, i32 0, i32 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64 (%struct.media_bay_info*)*, i64 (%struct.media_bay_info*)** %33, align 8
  %35 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %36 = call i64 %34(%struct.media_bay_info* %35)
  %37 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %38 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %16
  %42 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %43 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %47 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %46, i32 0, i32 3
  %48 = call i32 @mutex_unlock(i32* %47)
  store i32 0, i32* %2, align 4
  br label %93

49:                                               ; preds = %16
  %50 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %51 = call i32 @set_mb_power(%struct.media_bay_info* %50, i32 1)
  %52 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %53 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %56 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @MB_STABLE_DELAY, align 4
  %58 = call i8* @msecs_to_jiffies(i32 %57)
  %59 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %60 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @MB_POWER_DELAY, align 4
  %62 = call i8* @msecs_to_jiffies(i32 %61)
  %63 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %64 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %84, %49
  %66 = load i32, i32* @MB_POLL_DELAY, align 4
  %67 = call i32 @msleep(i32 %66)
  %68 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %69 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @media_bay_step(i32 %70)
  br label %72

72:                                               ; preds = %65
  %73 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %74 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @mb_empty, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %80 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @mb_up, align 8
  %83 = icmp ne i64 %81, %82
  br label %84

84:                                               ; preds = %78, %72
  %85 = phi i1 [ false, %72 ], [ %83, %78 ]
  br i1 %85, label %65, label %86

86:                                               ; preds = %84
  %87 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %88 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.media_bay_info*, %struct.media_bay_info** %4, align 8
  %90 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %89, i32 0, i32 3
  %91 = call i32 @mutex_unlock(i32* %90)
  br label %92

92:                                               ; preds = %86, %1
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %41
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.media_bay_info* @macio_get_drvdata(%struct.macio_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_mb_power(%struct.media_bay_info*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i32 @media_bay_step(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
