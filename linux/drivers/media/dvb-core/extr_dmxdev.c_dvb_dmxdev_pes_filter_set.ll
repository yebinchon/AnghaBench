; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_pes_filter_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_pes_filter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev = type { i32 }
%struct.dmxdev_filter = type { %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dmx_pes_filter_params = type { i32, i64 }

@DMX_PES_OTHER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMXDEV_TYPE_PES = common dso_local global i32 0, align 4
@DMXDEV_STATE_SET = common dso_local global i32 0, align 4
@DMX_IMMEDIATE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmxdev*, %struct.dmxdev_filter*, %struct.dmx_pes_filter_params*)* @dvb_dmxdev_pes_filter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_pes_filter_set(%struct.dmxdev* %0, %struct.dmxdev_filter* %1, %struct.dmx_pes_filter_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmxdev*, align 8
  %6 = alloca %struct.dmxdev_filter*, align 8
  %7 = alloca %struct.dmx_pes_filter_params*, align 8
  %8 = alloca i32, align 4
  store %struct.dmxdev* %0, %struct.dmxdev** %5, align 8
  store %struct.dmxdev_filter* %1, %struct.dmxdev_filter** %6, align 8
  store %struct.dmx_pes_filter_params* %2, %struct.dmx_pes_filter_params** %7, align 8
  %9 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %10 = call i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter* %9)
  %11 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %12 = call i32 @dvb_dmxdev_filter_reset(%struct.dmxdev_filter* %11)
  %13 = load %struct.dmx_pes_filter_params*, %struct.dmx_pes_filter_params** %7, align 8
  %14 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @DMX_PES_OTHER, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %60

22:                                               ; preds = %3
  %23 = load i32, i32* @DMXDEV_TYPE_PES, align 4
  %24 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %25 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %27 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %26, i32 0, i32 0
  %28 = load %struct.dmx_pes_filter_params*, %struct.dmx_pes_filter_params** %7, align 8
  %29 = call i32 @memcpy(%struct.TYPE_6__* %27, %struct.dmx_pes_filter_params* %28, i32 16)
  %30 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %31 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %35 = load i32, i32* @DMXDEV_STATE_SET, align 4
  %36 = call i32 @dvb_dmxdev_filter_state_set(%struct.dmxdev_filter* %34, i32 %35)
  %37 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %38 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %39 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %40 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dvb_dmxdev_add_pid(%struct.dmxdev* %37, %struct.dmxdev_filter* %38, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %22
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %60

49:                                               ; preds = %22
  %50 = load %struct.dmx_pes_filter_params*, %struct.dmx_pes_filter_params** %7, align 8
  %51 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DMX_IMMEDIATE_START, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %58 = call i32 @dvb_dmxdev_filter_start(%struct.dmxdev_filter* %57)
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %56, %47, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter*) #1

declare dso_local i32 @dvb_dmxdev_filter_reset(%struct.dmxdev_filter*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.dmx_pes_filter_params*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dvb_dmxdev_filter_state_set(%struct.dmxdev_filter*, i32) #1

declare dso_local i32 @dvb_dmxdev_add_pid(%struct.dmxdev*, %struct.dmxdev_filter*, i32) #1

declare dso_local i32 @dvb_dmxdev_filter_start(%struct.dmxdev_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
