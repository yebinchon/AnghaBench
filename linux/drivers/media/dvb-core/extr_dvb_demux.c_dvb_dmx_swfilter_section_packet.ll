; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_section_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_section_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32 }

@DMX_BUFFER_FLAG_DISCONTINUITY_INDICATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%d frame with disconnect indicator\0A\00", align 1
@DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"discontinuity: %d instead of %d. %d bytes lost\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"PUSI=1 but %d bytes lost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*, i32*)* @dvb_dmx_swfilter_section_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmx_swfilter_section_packet(%struct.dvb_demux_feed* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_demux_feed*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @payload(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %157

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 188, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  store i32 %26, i32* %10, align 4
  %27 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = and i32 %30, 15
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %37 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %20
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 128
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %48, %43
  br label %56

56:                                               ; preds = %55, %20
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %67 = load i32, i32* @DMX_BUFFER_FLAG_DISCONTINUITY_INDICATOR, align 4
  %68 = call i32 @set_buf_flags(%struct.dvb_demux_feed* %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i8*, i32, ...) @dprintk_sect_loss(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %84

71:                                               ; preds = %62
  %72 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %73 = load i32, i32* @DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED, align 4
  %74 = call i32 @set_buf_flags(%struct.dvb_demux_feed* %72, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %77 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = and i32 %79, 15
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 4
  %83 = call i32 (i8*, i32, ...) @dprintk_sect_loss(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %80, i32 %82)
  br label %84

84:                                               ; preds = %71, %65
  %85 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %86 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %88 = call i32 @dvb_dmx_swfilter_section_new(%struct.dvb_demux_feed* %87)
  br label %89

89:                                               ; preds = %84, %59
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 64
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %148

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %137

98:                                               ; preds = %95
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %137

106:                                              ; preds = %98
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32* %111, i32** %11, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %12, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32* %120, i32** %13, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* %12, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %14, align 4
  %125 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @dvb_dmx_swfilter_section_copy_dump(%struct.dvb_demux_feed* %125, i32* %126, i32 %127)
  %129 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %130 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %132 = call i32 @dvb_dmx_swfilter_section_new(%struct.dvb_demux_feed* %131)
  %133 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @dvb_dmx_swfilter_section_copy_dump(%struct.dvb_demux_feed* %133, i32* %134, i32 %135)
  br label %147

137:                                              ; preds = %98, %95
  %138 = load i32, i32* %7, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %142 = load i32, i32* @DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED, align 4
  %143 = call i32 @set_buf_flags(%struct.dvb_demux_feed* %141, i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = call i32 (i8*, i32, ...) @dprintk_sect_loss(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %140, %137
  br label %147

147:                                              ; preds = %146, %106
  br label %156

148:                                              ; preds = %89
  %149 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @dvb_dmx_swfilter_section_copy_dump(%struct.dvb_demux_feed* %149, i32* %153, i32 %154)
  br label %156

156:                                              ; preds = %148, %147
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %19
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @payload(i32*) #1

declare dso_local i32 @set_buf_flags(%struct.dvb_demux_feed*, i32) #1

declare dso_local i32 @dprintk_sect_loss(i8*, i32, ...) #1

declare dso_local i32 @dvb_dmx_swfilter_section_new(%struct.dvb_demux_feed*) #1

declare dso_local i32 @dvb_dmx_swfilter_section_copy_dump(%struct.dvb_demux_feed*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
