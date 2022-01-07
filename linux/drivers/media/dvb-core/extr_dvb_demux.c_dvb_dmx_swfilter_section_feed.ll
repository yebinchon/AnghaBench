; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_section_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_section_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { %struct.TYPE_2__, %struct.dvb_demux_filter*, %struct.dvb_demux* }
%struct.TYPE_2__ = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32*, i64, i64, i64 }
%struct.dvb_demux_filter = type { %struct.dvb_demux_filter* }
%struct.dvb_demux = type { i64 (%struct.dvb_demux_feed*, i32*, i64)* }

@DMX_BUFFER_FLAG_HAD_CRC32_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @dvb_dmx_swfilter_section_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmx_swfilter_section_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca %struct.dvb_demux_filter*, align 8
  %6 = alloca %struct.dmx_section_feed*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %8 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %8, i32 0, i32 2
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %9, align 8
  store %struct.dvb_demux* %10, %struct.dvb_demux** %4, align 8
  %11 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %11, i32 0, i32 1
  %13 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %12, align 8
  store %struct.dvb_demux_filter* %13, %struct.dvb_demux_filter** %5, align 8
  %14 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.dmx_section_feed* %16, %struct.dmx_section_feed** %6, align 8
  %17 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %6, align 8
  %18 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

22:                                               ; preds = %1
  %23 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %5, align 8
  %24 = icmp ne %struct.dvb_demux_filter* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %83

26:                                               ; preds = %22
  %27 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %6, align 8
  %28 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %6, align 8
  %33 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %31
  %43 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %43, i32 0, i32 0
  %45 = load i64 (%struct.dvb_demux_feed*, i32*, i64)*, i64 (%struct.dvb_demux_feed*, i32*, i64)** %44, align 8
  %46 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %47 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %6, align 8
  %48 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %6, align 8
  %51 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 %45(%struct.dvb_demux_feed* %46, i32* %49, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %57 = load i32, i32* @DMX_BUFFER_FLAG_HAD_CRC32_DISCARD, align 4
  %58 = call i32 @set_buf_flags(%struct.dvb_demux_feed* %56, i32 %57)
  store i32 -1, i32* %2, align 4
  br label %83

59:                                               ; preds = %42, %31
  br label %60

60:                                               ; preds = %59, %26
  br label %61

61:                                               ; preds = %78, %60
  %62 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %63 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %5, align 8
  %64 = call i64 @dvb_dmx_swfilter_sectionfilter(%struct.dvb_demux_feed* %62, %struct.dvb_demux_filter* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 -1, i32* %2, align 4
  br label %83

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %5, align 8
  %70 = getelementptr inbounds %struct.dvb_demux_filter, %struct.dvb_demux_filter* %69, i32 0, i32 0
  %71 = load %struct.dvb_demux_filter*, %struct.dvb_demux_filter** %70, align 8
  store %struct.dvb_demux_filter* %71, %struct.dvb_demux_filter** %5, align 8
  %72 = icmp ne %struct.dvb_demux_filter* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %6, align 8
  %75 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ false, %68 ], [ %77, %73 ]
  br i1 %79, label %61, label %80

80:                                               ; preds = %78
  %81 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %6, align 8
  %82 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %66, %55, %25, %21
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @set_buf_flags(%struct.dvb_demux_feed*, i32) #1

declare dso_local i64 @dvb_dmx_swfilter_sectionfilter(%struct.dvb_demux_feed*, %struct.dvb_demux_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
