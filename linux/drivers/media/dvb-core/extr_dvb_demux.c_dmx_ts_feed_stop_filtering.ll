; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dmx_ts_feed_stop_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dmx_ts_feed_stop_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_ts_feed = type { i64 }
%struct.dvb_demux_feed = type { i64, %struct.dvb_demux* }
%struct.dvb_demux = type { i32 (%struct.dvb_demux_feed*)*, i32, i32 }

@DMX_STATE_GO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DMX_STATE_ALLOCATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_ts_feed*)* @dmx_ts_feed_stop_filtering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmx_ts_feed_stop_filtering(%struct.dmx_ts_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmx_ts_feed*, align 8
  %4 = alloca %struct.dvb_demux_feed*, align 8
  %5 = alloca %struct.dvb_demux*, align 8
  %6 = alloca i32, align 4
  store %struct.dmx_ts_feed* %0, %struct.dmx_ts_feed** %3, align 8
  %7 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %3, align 8
  %8 = bitcast %struct.dmx_ts_feed* %7 to %struct.dvb_demux_feed*
  store %struct.dvb_demux_feed* %8, %struct.dvb_demux_feed** %4, align 8
  %9 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %9, i32 0, i32 1
  %11 = load %struct.dvb_demux*, %struct.dvb_demux** %10, align 8
  store %struct.dvb_demux* %11, %struct.dvb_demux** %5, align 8
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMX_STATE_GO, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %22 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %1
  %27 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %28 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %27, i32 0, i32 0
  %29 = load i32 (%struct.dvb_demux_feed*)*, i32 (%struct.dvb_demux_feed*)** %28, align 8
  %30 = icmp ne i32 (%struct.dvb_demux_feed*)* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %33 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %58

37:                                               ; preds = %26
  %38 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %39 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %38, i32 0, i32 0
  %40 = load i32 (%struct.dvb_demux_feed*)*, i32 (%struct.dvb_demux_feed*)** %39, align 8
  %41 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %42 = call i32 %40(%struct.dvb_demux_feed* %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %44 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %43, i32 0, i32 2
  %45 = call i32 @spin_lock_irq(i32* %44)
  %46 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %3, align 8
  %47 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* @DMX_STATE_ALLOCATED, align 8
  %49 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %52 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %55 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %37, %31, %20
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
