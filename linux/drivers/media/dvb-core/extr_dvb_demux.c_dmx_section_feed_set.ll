; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dmx_section_feed_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dmx_section_feed_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_section_feed = type { i32 }
%struct.dvb_demux_feed = type { i32, i32, %struct.TYPE_3__, %struct.dvb_demux* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dvb_demux = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@DMX_STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmx_section_feed*, i32, i32)* @dmx_section_feed_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmx_section_feed_set(%struct.dmx_section_feed* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmx_section_feed*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_demux_feed*, align 8
  %9 = alloca %struct.dvb_demux*, align 8
  store %struct.dmx_section_feed* %0, %struct.dmx_section_feed** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %5, align 8
  %11 = bitcast %struct.dmx_section_feed* %10 to %struct.dvb_demux_feed*
  store %struct.dvb_demux_feed* %11, %struct.dvb_demux_feed** %8, align 8
  %12 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %13 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %12, i32 0, i32 3
  %14 = load %struct.dvb_demux*, %struct.dvb_demux** %13, align 8
  store %struct.dvb_demux* %14, %struct.dvb_demux** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 8191
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %45

20:                                               ; preds = %3
  %21 = load %struct.dvb_demux*, %struct.dvb_demux** %9, align 8
  %22 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %21, i32 0, i32 0
  %23 = call i64 @mutex_lock_interruptible(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ERESTARTSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %20
  %29 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %30 = call i32 @dvb_demux_feed_add(%struct.dvb_demux_feed* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %33 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %36 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  %39 = load i32, i32* @DMX_STATE_READY, align 4
  %40 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %8, align 8
  %41 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dvb_demux*, %struct.dvb_demux** %9, align 8
  %43 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %28, %25, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dvb_demux_feed_add(%struct.dvb_demux_feed*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
