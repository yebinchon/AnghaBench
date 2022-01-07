; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dmx_ts_feed_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dmx_ts_feed_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_ts_feed = type { i32 }
%struct.dvb_demux_feed = type { i32, i32, i32, i32, i64, %struct.dvb_demux* }
%struct.dvb_demux = type { i32, i64*, %struct.dvb_demux_feed** }

@DMX_MAX_PID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TS_DECODER = common dso_local global i32 0, align 4
@DMX_PES_OTHER = common dso_local global i32 0, align 4
@DMX_STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_ts_feed*, i64, i32, i32, i32)* @dmx_ts_feed_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmx_ts_feed_set(%struct.dmx_ts_feed* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmx_ts_feed*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dvb_demux_feed*, align 8
  %13 = alloca %struct.dvb_demux*, align 8
  store %struct.dmx_ts_feed* %0, %struct.dmx_ts_feed** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %7, align 8
  %15 = bitcast %struct.dmx_ts_feed* %14 to %struct.dvb_demux_feed*
  store %struct.dvb_demux_feed* %15, %struct.dvb_demux_feed** %12, align 8
  %16 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %12, align 8
  %17 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %16, i32 0, i32 5
  %18 = load %struct.dvb_demux*, %struct.dvb_demux** %17, align 8
  store %struct.dvb_demux* %18, %struct.dvb_demux** %13, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @DMX_MAX_PID, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %109

25:                                               ; preds = %5
  %26 = load %struct.dvb_demux*, %struct.dvb_demux** %13, align 8
  %27 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %26, i32 0, i32 0
  %28 = call i64 @mutex_lock_interruptible(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ERESTARTSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %109

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @TS_DECODER, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @DMX_PES_OTHER, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.dvb_demux*, %struct.dvb_demux** %13, align 8
  %44 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %109

48:                                               ; preds = %38
  %49 = load %struct.dvb_demux*, %struct.dvb_demux** %13, align 8
  %50 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %49, i32 0, i32 2
  %51 = load %struct.dvb_demux_feed**, %struct.dvb_demux_feed*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %51, i64 %53
  %55 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %54, align 8
  %56 = icmp ne %struct.dvb_demux_feed* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %48
  %58 = load %struct.dvb_demux*, %struct.dvb_demux** %13, align 8
  %59 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %58, i32 0, i32 2
  %60 = load %struct.dvb_demux_feed**, %struct.dvb_demux_feed*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %60, i64 %62
  %64 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %63, align 8
  %65 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %12, align 8
  %66 = icmp ne %struct.dvb_demux_feed* %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load %struct.dvb_demux*, %struct.dvb_demux** %13, align 8
  %69 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %109

73:                                               ; preds = %57, %48
  %74 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %12, align 8
  %75 = load %struct.dvb_demux*, %struct.dvb_demux** %13, align 8
  %76 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %75, i32 0, i32 2
  %77 = load %struct.dvb_demux_feed**, %struct.dvb_demux_feed*** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %77, i64 %79
  store %struct.dvb_demux_feed* %74, %struct.dvb_demux_feed** %80, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.dvb_demux*, %struct.dvb_demux** %13, align 8
  %83 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %81, i64* %87, align 8
  br label %88

88:                                               ; preds = %73, %33
  %89 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %12, align 8
  %90 = call i32 @dvb_demux_feed_add(%struct.dvb_demux_feed* %89)
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %12, align 8
  %93 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %92, i32 0, i32 4
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %12, align 8
  %96 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %12, align 8
  %99 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %12, align 8
  %102 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @DMX_STATE_READY, align 4
  %104 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %12, align 8
  %105 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.dvb_demux*, %struct.dvb_demux** %13, align 8
  %107 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %88, %67, %42, %30, %22
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dvb_demux_feed_add(%struct.dvb_demux_feed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
