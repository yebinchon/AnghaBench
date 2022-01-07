; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32*, i32, i32*, i32, i32*, i32*)* }

@DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"missed packet: %d instead of %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*, i32*)* @dvb_dmx_swfilter_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmx_swfilter_payload(%struct.dvb_demux_feed* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_demux_feed*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @payload(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %76

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 188, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %9, align 4
  %22 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = and i32 %25, 15
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %32 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %15
  %36 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %37 = load i32, i32* @DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED, align 4
  %38 = call i32 @set_buf_flags(%struct.dvb_demux_feed* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  %44 = and i32 %43, 15
  %45 = call i32 @dprintk_sect_loss(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %35, %15
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 64
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %54 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %53, i32 0, i32 1
  store i32 65530, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %58 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %62 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (i32*, i32, i32*, i32, i32*, i32*)*, i32 (i32*, i32, i32*, i32, i32*, i32*)** %63, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %71 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %74 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %73, i32 0, i32 2
  %75 = call i32 %64(i32* %68, i32 %69, i32* null, i32 0, i32* %72, i32* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %55, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @payload(i32*) #1

declare dso_local i32 @set_buf_flags(%struct.dvb_demux_feed*, i32) #1

declare dso_local i32 @dprintk_sect_loss(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
