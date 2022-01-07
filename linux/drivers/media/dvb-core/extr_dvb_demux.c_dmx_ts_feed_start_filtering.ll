; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dmx_ts_feed_start_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dmx_ts_feed_start_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_ts_feed = type { i32 }
%struct.dvb_demux_feed = type { i64, i64, %struct.dvb_demux* }
%struct.dvb_demux = type { i32 (%struct.dvb_demux_feed*)*, i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@DMX_STATE_READY = common dso_local global i64 0, align 8
@DMX_TYPE_TS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DMX_STATE_GO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_ts_feed*)* @dmx_ts_feed_start_filtering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmx_ts_feed_start_filtering(%struct.dmx_ts_feed* %0) #0 {
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
  %10 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %9, i32 0, i32 2
  %11 = load %struct.dvb_demux*, %struct.dvb_demux** %10, align 8
  store %struct.dvb_demux* %11, %struct.dvb_demux** %5, align 8
  %12 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %12, i32 0, i32 1
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ERESTARTSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %75

19:                                               ; preds = %1
  %20 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DMX_STATE_READY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %27 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DMX_TYPE_TS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %19
  %32 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %33 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %75

37:                                               ; preds = %25
  %38 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %39 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %38, i32 0, i32 0
  %40 = load i32 (%struct.dvb_demux_feed*)*, i32 (%struct.dvb_demux_feed*)** %39, align 8
  %41 = icmp ne i32 (%struct.dvb_demux_feed*)* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %44 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %75

48:                                               ; preds = %37
  %49 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %50 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %49, i32 0, i32 0
  %51 = load i32 (%struct.dvb_demux_feed*)*, i32 (%struct.dvb_demux_feed*)** %50, align 8
  %52 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %53 = call i32 %51(%struct.dvb_demux_feed* %52)
  store i32 %53, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %57 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %75

60:                                               ; preds = %48
  %61 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %62 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %61, i32 0, i32 2
  %63 = call i32 @spin_lock_irq(i32* %62)
  %64 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %3, align 8
  %65 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load i64, i64* @DMX_STATE_GO, align 8
  %67 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %68 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %70 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock_irq(i32* %70)
  %72 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %73 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %60, %55, %42, %31, %16
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
