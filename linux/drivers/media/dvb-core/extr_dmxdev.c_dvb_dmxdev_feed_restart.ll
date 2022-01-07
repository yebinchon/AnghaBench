; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_feed_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_feed_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev_filter = type { %struct.TYPE_12__, %struct.dmxdev*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.dmxdev = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32)* }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@DMXDEV_STATE_GO = common dso_local global i64 0, align 8
@DMXDEV_TYPE_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmxdev_filter*)* @dvb_dmxdev_feed_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_feed_restart(%struct.dmxdev_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmxdev_filter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmxdev*, align 8
  %6 = alloca i64, align 8
  store %struct.dmxdev_filter* %0, %struct.dmxdev_filter** %3, align 8
  %7 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %3, align 8
  %8 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %7, i32 0, i32 1
  %9 = load %struct.dmxdev*, %struct.dmxdev** %8, align 8
  store %struct.dmxdev* %9, %struct.dmxdev** %5, align 8
  %10 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %3, align 8
  %11 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %65, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %18 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %15
  %22 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %23 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %22, i32 0, i32 2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DMXDEV_STATE_GO, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %21
  %33 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %34 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %33, i32 0, i32 2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DMXDEV_TYPE_SEC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %32
  %44 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %45 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %44, i32 0, i32 2
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %43
  %57 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %58 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %57, i32 0, i32 2
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 %61
  %63 = call i32 @dvb_dmxdev_feed_start(%struct.TYPE_14__* %62)
  store i32 0, i32* %2, align 4
  br label %84

64:                                               ; preds = %43, %32, %21
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %15

68:                                               ; preds = %15
  %69 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %3, align 8
  %70 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %69, i32 0, i32 1
  %71 = load %struct.dmxdev*, %struct.dmxdev** %70, align 8
  %72 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %71, i32 0, i32 1
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %74, align 8
  %76 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %77 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %3, align 8
  %80 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %75(%struct.TYPE_13__* %78, i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %68, %56
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @dvb_dmxdev_feed_start(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
