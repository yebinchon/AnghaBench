; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_add_pid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_add_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev = type { i32 }
%struct.dmxdev_filter = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dmxdev_feed = type { i32, i32 }

@DMXDEV_TYPE_PES = common dso_local global i64 0, align 8
@DMXDEV_STATE_SET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DMX_OUT_TSDEMUX_TAP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMXDEV_STATE_GO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmxdev*, %struct.dmxdev_filter*, i32)* @dvb_dmxdev_add_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_add_pid(%struct.dmxdev* %0, %struct.dmxdev_filter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmxdev*, align 8
  %6 = alloca %struct.dmxdev_filter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmxdev_feed*, align 8
  store %struct.dmxdev* %0, %struct.dmxdev** %5, align 8
  store %struct.dmxdev_filter* %1, %struct.dmxdev_filter** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %10 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DMXDEV_TYPE_PES, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %16 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMXDEV_STATE_SET, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %69

23:                                               ; preds = %14
  %24 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %25 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DMX_OUT_TSDEMUX_TAP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %33 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @list_empty(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %69

40:                                               ; preds = %31, %23
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.dmxdev_feed* @kzalloc(i32 8, i32 %41)
  store %struct.dmxdev_feed* %42, %struct.dmxdev_feed** %8, align 8
  %43 = load %struct.dmxdev_feed*, %struct.dmxdev_feed** %8, align 8
  %44 = icmp eq %struct.dmxdev_feed* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %69

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.dmxdev_feed*, %struct.dmxdev_feed** %8, align 8
  %51 = getelementptr inbounds %struct.dmxdev_feed, %struct.dmxdev_feed* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dmxdev_feed*, %struct.dmxdev_feed** %8, align 8
  %53 = getelementptr inbounds %struct.dmxdev_feed, %struct.dmxdev_feed* %52, i32 0, i32 0
  %54 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %55 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @list_add(i32* %53, i32* %56)
  %58 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %59 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DMXDEV_STATE_GO, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.dmxdev*, %struct.dmxdev** %5, align 8
  %65 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %66 = load %struct.dmxdev_feed*, %struct.dmxdev_feed** %8, align 8
  %67 = call i32 @dvb_dmxdev_start_feed(%struct.dmxdev* %64, %struct.dmxdev_filter* %65, %struct.dmxdev_feed* %66)
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %63, %45, %37, %20
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.dmxdev_feed* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dvb_dmxdev_start_feed(%struct.dmxdev*, %struct.dmxdev_filter*, %struct.dmxdev_feed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
