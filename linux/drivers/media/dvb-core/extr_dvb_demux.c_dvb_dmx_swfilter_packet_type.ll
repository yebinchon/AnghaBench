; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_packet_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_packet_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.dvb_demux_feed*, i32*, i32)* }
%struct.TYPE_6__ = type { i32 (i32*, i32, i32*, i32, %struct.TYPE_10__*, i32*)* }

@TS_PACKET = common dso_local global i32 0, align 4
@TS_PAYLOAD_ONLY = common dso_local global i32 0, align 4
@TS_DECODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_demux_feed*, i32*)* @dvb_dmx_swfilter_packet_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_dmx_swfilter_packet_type(%struct.dvb_demux_feed* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca i32*, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %95 [
    i32 128, label %8
    i32 129, label %72
  ]

8:                                                ; preds = %2
  %9 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %96

16:                                               ; preds = %8
  %17 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TS_PACKET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %16
  %24 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TS_PAYLOAD_ONLY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @dvb_dmx_swfilter_payload(%struct.dvb_demux_feed* %31, i32* %32)
  br label %46

34:                                               ; preds = %23
  %35 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %36 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (i32*, i32, i32*, i32, %struct.TYPE_10__*, i32*)*, i32 (i32*, i32, i32*, i32, %struct.TYPE_10__*, i32*)** %37, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %43, i32 0, i32 4
  %45 = call i32 %38(i32* %39, i32 188, i32* null, i32 0, %struct.TYPE_10__* %42, i32* %44)
  br label %46

46:                                               ; preds = %34, %30
  br label %47

47:                                               ; preds = %46, %16
  %48 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TS_DECODER, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %56 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %55, i32 0, i32 3
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32 (%struct.dvb_demux_feed*, i32*, i32)*, i32 (%struct.dvb_demux_feed*, i32*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.dvb_demux_feed*, i32*, i32)* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %63 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %62, i32 0, i32 3
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32 (%struct.dvb_demux_feed*, i32*, i32)*, i32 (%struct.dvb_demux_feed*, i32*, i32)** %65, align 8
  %67 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 %66(%struct.dvb_demux_feed* %67, i32* %68, i32 188)
  br label %70

70:                                               ; preds = %61, %54
  br label %71

71:                                               ; preds = %70, %47
  br label %96

72:                                               ; preds = %2
  %73 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %74 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %96

80:                                               ; preds = %72
  %81 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @dvb_dmx_swfilter_section_packet(%struct.dvb_demux_feed* %81, i32* %82)
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %87 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %91 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %85, %80
  br label %96

95:                                               ; preds = %2
  br label %96

96:                                               ; preds = %95, %94, %79, %71, %15
  ret void
}

declare dso_local i32 @dvb_dmx_swfilter_payload(%struct.dvb_demux_feed*, i32*) #1

declare dso_local i32 @dvb_dmx_swfilter_section_packet(%struct.dvb_demux_feed*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
