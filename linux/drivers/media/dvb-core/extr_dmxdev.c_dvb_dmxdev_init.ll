; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.dmxdev* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__*)* }
%struct.dvb_adapter = type { i32 }

@EUSERS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMXDEV_STATE_FREE = common dso_local global i32 0, align 4
@dvbdev_demux = common dso_local global i32 0, align 4
@DVB_DEVICE_DEMUX = common dso_local global i32 0, align 4
@dvbdev_dvr = common dso_local global i32 0, align 4
@DVB_DEVICE_DVR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_dmxdev_init(%struct.dmxdev* %0, %struct.dvb_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmxdev*, align 8
  %5 = alloca %struct.dvb_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.dmxdev* %0, %struct.dmxdev** %4, align 8
  store %struct.dvb_adapter* %1, %struct.dvb_adapter** %5, align 8
  %7 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %8 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %7, i32 0, i32 7
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64 (%struct.TYPE_7__*)*, i64 (%struct.TYPE_7__*)** %10, align 8
  %12 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %13 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %12, i32 0, i32 7
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = call i64 %11(%struct.TYPE_7__* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EUSERS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %98

20:                                               ; preds = %2
  %21 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %22 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @array_size(i32 4, i32 %23)
  %25 = call %struct.TYPE_6__* @vmalloc(i32 %24)
  %26 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %27 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %26, i32 0, i32 4
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %27, align 8
  %28 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %29 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %28, i32 0, i32 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %98

35:                                               ; preds = %20
  %36 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %37 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %36, i32 0, i32 6
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %40 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %39, i32 0, i32 5
  %41 = call i32 @spin_lock_init(i32* %40)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %73, %35
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %45 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %50 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %51 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %50, i32 0, i32 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store %struct.dmxdev* %49, %struct.dmxdev** %56, align 8
  %57 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %58 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %57, i32 0, i32 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %66 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %65, i32 0, i32 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = load i32, i32* @DMXDEV_STATE_FREE, align 4
  %72 = call i32 @dvb_dmxdev_filter_state_set(%struct.TYPE_6__* %70, i32 %71)
  br label %73

73:                                               ; preds = %48
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %42

76:                                               ; preds = %42
  %77 = load %struct.dvb_adapter*, %struct.dvb_adapter** %5, align 8
  %78 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %79 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %78, i32 0, i32 3
  %80 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %81 = load i32, i32* @DVB_DEVICE_DEMUX, align 4
  %82 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %83 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dvb_register_device(%struct.dvb_adapter* %77, i32* %79, i32* @dvbdev_demux, %struct.dmxdev* %80, i32 %81, i32 %84)
  %86 = load %struct.dvb_adapter*, %struct.dvb_adapter** %5, align 8
  %87 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %88 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %87, i32 0, i32 2
  %89 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %90 = load i32, i32* @DVB_DEVICE_DVR, align 4
  %91 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %92 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dvb_register_device(%struct.dvb_adapter* %86, i32* %88, i32* @dvbdev_dvr, %struct.dmxdev* %89, i32 %90, i32 %93)
  %95 = load %struct.dmxdev*, %struct.dmxdev** %4, align 8
  %96 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %95, i32 0, i32 1
  %97 = call i32 @dvb_ringbuffer_init(i32* %96, i32* null, i32 8192)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %76, %32, %17
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_6__* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dvb_dmxdev_filter_state_set(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dvb_register_device(%struct.dvb_adapter*, i32*, i32*, %struct.dmxdev*, i32, i32) #1

declare dso_local i32 @dvb_ringbuffer_init(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
