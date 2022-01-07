; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_mediabay.c_media_bay_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_mediabay.c_media_bay_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.media_bay_info = type { i32, i32 }

@PM_EVENT_SLEEP = common dso_local global i32 0, align 4
@MB_POLL_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macio_dev*, i32)* @media_bay_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @media_bay_suspend(%struct.macio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca %struct.macio_dev*, align 8
  %5 = alloca %struct.media_bay_info*, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store %struct.macio_dev* %0, %struct.macio_dev** %4, align 8
  %7 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %8 = call %struct.media_bay_info* @macio_get_drvdata(%struct.macio_dev* %7)
  store %struct.media_bay_info* %8, %struct.media_bay_info** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %12 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %10, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PM_EVENT_SLEEP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.media_bay_info*, %struct.media_bay_info** %5, align 8
  %27 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.media_bay_info*, %struct.media_bay_info** %5, align 8
  %30 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.media_bay_info*, %struct.media_bay_info** %5, align 8
  %32 = call i32 @set_mb_power(%struct.media_bay_info* %31, i32 0)
  %33 = load %struct.media_bay_info*, %struct.media_bay_info** %5, align 8
  %34 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* @MB_POLL_DELAY, align 4
  %37 = call i32 @msleep(i32 %36)
  %38 = load %struct.macio_dev*, %struct.macio_dev** %4, align 8
  %39 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = bitcast %struct.TYPE_9__* %42 to i8*
  %44 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  br label %45

45:                                               ; preds = %25, %19, %2
  ret i32 0
}

declare dso_local %struct.media_bay_info* @macio_get_drvdata(%struct.macio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_mb_power(%struct.media_bay_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
