; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_feed_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_feed_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32, i32, i32, i64, i32 (%struct.flexcop_device*, i32)*, i64 }
%struct.dvb_demux_feed = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flexcop_pid_feed_control(%struct.flexcop_device* %0, %struct.dvb_demux_feed* %1, i32 %2) #0 {
  %4 = alloca %struct.flexcop_device*, align 8
  %5 = alloca %struct.dvb_demux_feed*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %4, align 8
  store %struct.dvb_demux_feed* %1, %struct.dvb_demux_feed** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 6, i32* %7, align 4
  %8 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %9 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 6, %10
  %12 = load i32, i32* %7, align 4
  %13 = sub nsw i32 %12, %11
  store i32 %13, i32* %7, align 4
  %14 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %15 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 32, %16
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 -1
  %24 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %25 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 -1
  %38 = sext i32 %37 to i64
  %39 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %40 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %33, %3
  %44 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %45 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %50 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @flexcop_toggle_fullts_streaming(%struct.flexcop_device* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48, %43
  %59 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %60 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %58
  %64 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %65 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %66 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %69 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @flexcop_pid_control(%struct.flexcop_device* %64, i32 %67, i32 %70, i32 %71)
  %73 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %74 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %79 = call i32 @flexcop_toggle_fullts_streaming(%struct.flexcop_device* %78, i32 1)
  br label %93

80:                                               ; preds = %63
  %81 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %5, align 8
  %82 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 8192
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @flexcop_toggle_fullts_streaming(%struct.flexcop_device* %86, i32 %87)
  br label %92

89:                                               ; preds = %80
  %90 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %91 = call i32 @flexcop_toggle_fullts_streaming(%struct.flexcop_device* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %85
  br label %93

93:                                               ; preds = %92, %77
  br label %94

94:                                               ; preds = %93, %58
  %95 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %96 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %94
  %101 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @flexcop_rcv_data_ctrl(%struct.flexcop_device* %101, i32 %102)
  %104 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %105 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %104, i32 0, i32 4
  %106 = load i32 (%struct.flexcop_device*, i32)*, i32 (%struct.flexcop_device*, i32)** %105, align 8
  %107 = icmp ne i32 (%struct.flexcop_device*, i32)* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %110 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %109, i32 0, i32 4
  %111 = load i32 (%struct.flexcop_device*, i32)*, i32 (%struct.flexcop_device*, i32)** %110, align 8
  %112 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 %111(%struct.flexcop_device* %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %100
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %120 = call i32 @flexcop_reset_block_300(%struct.flexcop_device* %119)
  %121 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %122 = call i32 @flexcop_hw_filter_init(%struct.flexcop_device* %121)
  br label %123

123:                                              ; preds = %118, %115
  br label %124

124:                                              ; preds = %123, %94
  ret i32 0
}

declare dso_local i32 @flexcop_toggle_fullts_streaming(%struct.flexcop_device*, i32) #1

declare dso_local i32 @flexcop_pid_control(%struct.flexcop_device*, i32, i32, i32) #1

declare dso_local i32 @flexcop_rcv_data_ctrl(%struct.flexcop_device*, i32) #1

declare dso_local i32 @flexcop_reset_block_300(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_hw_filter_init(%struct.flexcop_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
