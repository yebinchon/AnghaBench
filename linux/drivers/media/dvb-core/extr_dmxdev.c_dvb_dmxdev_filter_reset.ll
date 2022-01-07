; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_filter_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_filter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev_filter = type { i64, i64 }

@DMXDEV_STATE_SET = common dso_local global i64 0, align 8
@DMXDEV_TYPE_PES = common dso_local global i64 0, align 8
@DMXDEV_TYPE_NONE = common dso_local global i64 0, align 8
@DMXDEV_STATE_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmxdev_filter*)* @dvb_dmxdev_filter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_filter_reset(%struct.dmxdev_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmxdev_filter*, align 8
  store %struct.dmxdev_filter* %0, %struct.dmxdev_filter** %3, align 8
  %4 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %3, align 8
  %5 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DMXDEV_STATE_SET, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %3, align 8
  %12 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DMXDEV_TYPE_PES, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %3, align 8
  %18 = call i32 @dvb_dmxdev_delete_pids(%struct.dmxdev_filter* %17)
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i64, i64* @DMXDEV_TYPE_NONE, align 8
  %21 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %3, align 8
  %22 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %3, align 8
  %24 = load i32, i32* @DMXDEV_STATE_ALLOCATED, align 4
  %25 = call i32 @dvb_dmxdev_filter_state_set(%struct.dmxdev_filter* %23, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @dvb_dmxdev_delete_pids(%struct.dmxdev_filter*) #1

declare dso_local i32 @dvb_dmxdev_filter_state_set(%struct.dmxdev_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
