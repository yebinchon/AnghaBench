; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_section_copy_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_section_copy_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i64, %struct.TYPE_2__, %struct.dvb_demux* }
%struct.TYPE_2__ = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i64, i64, i64, i64, i32, i64 }
%struct.dvb_demux = type { i32 (%struct.dvb_demux_feed*, i64, i64*, i64)* }

@DMX_MAX_SECFEED_SIZE = common dso_local global i64 0, align 8
@DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"section buffer full loss: %d/%d\0A\00", align 1
@DMX_MAX_SECTION_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"pusi not seen, discarding section data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*, i64*, i64)* @dvb_dmx_swfilter_section_copy_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmx_swfilter_section_copy_dump(%struct.dvb_demux_feed* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_demux_feed*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dvb_demux*, align 8
  %9 = alloca %struct.dmx_section_feed*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %13, i32 0, i32 2
  %15 = load %struct.dvb_demux*, %struct.dvb_demux** %14, align 8
  store %struct.dvb_demux* %15, %struct.dvb_demux** %8, align 8
  %16 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.dmx_section_feed* %18, %struct.dmx_section_feed** %9, align 8
  %19 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %20 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DMX_MAX_SECFEED_SIZE, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %152

25:                                               ; preds = %3
  %26 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %27 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @DMX_MAX_SECFEED_SIZE, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  %34 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %35 = load i32, i32* @DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED, align 4
  %36 = call i32 @set_buf_flags(%struct.dvb_demux_feed* %34, i32 %35)
  %37 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %38 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* @DMX_MAX_SECFEED_SIZE, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load i64, i64* @DMX_MAX_SECFEED_SIZE, align 8
  %45 = call i32 (i8*, ...) @dprintk_sect_loss(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i64, i64* @DMX_MAX_SECFEED_SIZE, align 8
  %47 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %48 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %33, %25
  %52 = load i64, i64* %7, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %152

55:                                               ; preds = %51
  %56 = load %struct.dvb_demux*, %struct.dvb_demux** %8, align 8
  %57 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %56, i32 0, i32 0
  %58 = load i32 (%struct.dvb_demux_feed*, i64, i64*, i64)*, i32 (%struct.dvb_demux_feed*, i64, i64*, i64)** %57, align 8
  %59 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %60 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %61 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %64 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 %58(%struct.dvb_demux_feed* %59, i64 %66, i64* %67, i64 %68)
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %72 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %76 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @DMX_MAX_SECFEED_SIZE, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %152

82:                                               ; preds = %55
  %83 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %84 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %87 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %91 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  store i64 0, i64* %12, align 8
  br label %92

92:                                               ; preds = %148, %82
  %93 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %94 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 2
  %97 = load i64, i64* %10, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %151

99:                                               ; preds = %92
  %100 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %101 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @section_length(i64 %102)
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp sle i64 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %99
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @DMX_MAX_SECTION_SIZE, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %113 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load i64, i64* %10, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110, %106, %99
  store i32 0, i32* %4, align 4
  br label %152

119:                                              ; preds = %110
  %120 = load i64, i64* %11, align 8
  %121 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %122 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %121, i32 0, i32 5
  store i64 %120, i64* %122, align 8
  %123 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %124 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %123, i32 0, i32 4
  store i32 -1, i32* %124, align 8
  %125 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %126 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %131 = call i32 @dvb_dmx_swfilter_section_feed(%struct.dvb_demux_feed* %130)
  br label %137

132:                                              ; preds = %119
  %133 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %134 = load i32, i32* @DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED, align 4
  %135 = call i32 @set_buf_flags(%struct.dvb_demux_feed* %133, i32 %134)
  %136 = call i32 (i8*, ...) @dprintk_sect_loss(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i64, i64* %11, align 8
  %139 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %140 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %138
  store i64 %142, i64* %140, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load %struct.dmx_section_feed*, %struct.dmx_section_feed** %9, align 8
  %145 = getelementptr inbounds %struct.dmx_section_feed, %struct.dmx_section_feed* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, %143
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %137
  %149 = load i64, i64* %12, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %12, align 8
  br label %92

151:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %118, %81, %54, %24
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @set_buf_flags(%struct.dvb_demux_feed*, i32) #1

declare dso_local i32 @dprintk_sect_loss(i8*, ...) #1

declare dso_local i64 @section_length(i64) #1

declare dso_local i32 @dvb_dmx_swfilter_section_feed(%struct.dvb_demux_feed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
