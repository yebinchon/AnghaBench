; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c__dvb_dmx_swfilter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_demux.c__dvb_dmx_swfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_demux*, i32*, i64, i32)* @_dvb_dmx_swfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dvb_dmx_swfilter(%struct.dvb_demux* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_demux*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.dvb_demux* %0, %struct.dvb_demux** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %14, i32 0, i32 2
  %16 = load i64, i64* %13, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %19 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %4
  %23 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %24 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %22
  %34 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %35 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i32* %39, i32* %40, i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %46 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  br label %168

51:                                               ; preds = %22
  %52 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %53 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @memcpy(i32* %57, i32* %58, i32 %59)
  %61 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %62 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 71
  br i1 %66, label %67, label %73

67:                                               ; preds = %51
  %68 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %69 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %70 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dvb_dmx_swfilter_packet(%struct.dvb_demux* %68, i32* %71)
  br label %73

73:                                               ; preds = %67, %51
  %74 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %75 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %73, %4
  br label %80

80:                                               ; preds = %79, %124
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @find_next_packet(i32* %81, i32 %82, i64 %83, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %7, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %131

91:                                               ; preds = %80
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 %92, %94
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ult i64 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %131

100:                                              ; preds = %91
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32* %104, i32** %12, align 8
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, 204
  br i1 %106, label %107, label %124

107:                                              ; preds = %100
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 184
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %113 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @memcpy(i32* %114, i32* %115, i32 188)
  %117 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %118 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 71, i32* %120, align 4
  %121 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %122 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %12, align 8
  br label %124

124:                                              ; preds = %111, %107, %100
  %125 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @dvb_dmx_swfilter_packet(%struct.dvb_demux* %125, i32* %126)
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %9, align 4
  br label %80

131:                                              ; preds = %99, %90
  %132 = load i64, i64* %7, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = sub i64 %132, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %131
  %140 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %141 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @memcpy(i32* %142, i32* %146, i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %151 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 204
  br i1 %153, label %154, label %166

154:                                              ; preds = %139
  %155 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %156 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 184
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %163 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 71, i32* %165, align 4
  br label %166

166:                                              ; preds = %161, %154, %139
  br label %167

167:                                              ; preds = %166, %131
  br label %168

168:                                              ; preds = %167, %33
  %169 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %170 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %169, i32 0, i32 2
  %171 = load i64, i64* %13, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dvb_dmx_swfilter_packet(%struct.dvb_demux*, i32*) #1

declare dso_local i32 @find_next_packet(i32*, i32, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
