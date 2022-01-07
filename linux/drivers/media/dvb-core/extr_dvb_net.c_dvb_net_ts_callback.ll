; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_ts_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_ts_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_ts_feed = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"buffer2 not NULL: %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"length > 32k: %zu.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, %struct.dmx_ts_feed*, i32*)* @dvb_net_ts_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_ts_callback(i32* %0, i64 %1, i32* %2, i64 %3, %struct.dmx_ts_feed* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dmx_ts_feed*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.net_device*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.dmx_ts_feed* %4, %struct.dmx_ts_feed** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.dmx_ts_feed*, %struct.dmx_ts_feed** %11, align 8
  %15 = getelementptr inbounds %struct.dmx_ts_feed, %struct.dmx_ts_feed* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %13, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load i32*, i32** %9, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %19, %6
  %24 = load i64, i64* %8, align 8
  %25 = icmp ugt i64 %24, 32768
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.net_device*, %struct.net_device** %13, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @dvb_net_ule(%struct.net_device* %30, i32* %31, i64 %32)
  ret i32 0
}

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @dvb_net_ule(%struct.net_device*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
