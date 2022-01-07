; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_filter_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_filter_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev_filter = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.dmx_sct_filter_params }
%struct.dmx_sct_filter_params = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmxdev_filter*)* @dvb_dmxdev_filter_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_dmxdev_filter_timer(%struct.dmxdev_filter* %0) #0 {
  %2 = alloca %struct.dmxdev_filter*, align 8
  %3 = alloca %struct.dmx_sct_filter_params*, align 8
  store %struct.dmxdev_filter* %0, %struct.dmxdev_filter** %2, align 8
  %4 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %2, align 8
  %5 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.dmx_sct_filter_params* %6, %struct.dmx_sct_filter_params** %3, align 8
  %7 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %2, align 8
  %8 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %7, i32 0, i32 0
  %9 = call i32 @del_timer(%struct.TYPE_5__* %8)
  %10 = load %struct.dmx_sct_filter_params*, %struct.dmx_sct_filter_params** %3, align 8
  %11 = getelementptr inbounds %struct.dmx_sct_filter_params, %struct.dmx_sct_filter_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load i64, i64* @jiffies, align 8
  %16 = add nsw i64 %15, 1
  %17 = load i32, i32* @HZ, align 4
  %18 = sdiv i32 %17, 2
  %19 = load i32, i32* @HZ, align 4
  %20 = load %struct.dmx_sct_filter_params*, %struct.dmx_sct_filter_params** %3, align 8
  %21 = getelementptr inbounds %struct.dmx_sct_filter_params, %struct.dmx_sct_filter_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = add nsw i32 %18, %23
  %25 = sdiv i32 %24, 1000
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %16, %26
  %28 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %2, align 8
  %29 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %2, align 8
  %32 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %31, i32 0, i32 0
  %33 = call i32 @add_timer(%struct.TYPE_5__* %32)
  br label %34

34:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
