; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_demux_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_demux_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dmxdev_filter* }
%struct.dmxdev_filter = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }

@EPOLLERR = common dso_local global i32 0, align 4
@DMXDEV_STATE_GO = common dso_local global i64 0, align 8
@DMXDEV_STATE_DONE = common dso_local global i64 0, align 8
@DMXDEV_STATE_TIMEDOUT = common dso_local global i64 0, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @dvb_demux_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_demux_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dmxdev_filter*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %9, align 8
  store %struct.dmxdev_filter* %10, %struct.dmxdev_filter** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %13 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @poll_wait(%struct.file* %11, i32* %14, i32* %15)
  %17 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %18 = icmp ne %struct.dmxdev_filter* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %21 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19, %2
  %27 = load i32, i32* @EPOLLERR, align 4
  store i32 %27, i32* %3, align 4
  br label %89

28:                                               ; preds = %19
  %29 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %30 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %29, i32 0, i32 2
  %31 = call i64 @dvb_vb2_is_streaming(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %35 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %34, i32 0, i32 2
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @dvb_vb2_poll(i32* %35, %struct.file* %36, i32* %37)
  store i32 %38, i32* %3, align 4
  br label %89

39:                                               ; preds = %28
  %40 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %41 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DMXDEV_STATE_GO, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %47 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DMXDEV_STATE_DONE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %53 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DMXDEV_STATE_TIMEDOUT, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %89

58:                                               ; preds = %51, %45, %39
  %59 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %60 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load i32, i32* @EPOLLIN, align 4
  %66 = load i32, i32* @EPOLLRDNORM, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @EPOLLPRI, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @EPOLLERR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %64, %58
  %75 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %6, align 8
  %76 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %75, i32 0, i32 1
  %77 = call i32 @dvb_ringbuffer_empty(%struct.TYPE_4__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @EPOLLIN, align 4
  %81 = load i32, i32* @EPOLLRDNORM, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @EPOLLPRI, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %79, %74
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %57, %33, %26
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @dvb_vb2_is_streaming(i32*) #1

declare dso_local i32 @dvb_vb2_poll(i32*, %struct.file*, i32*) #1

declare dso_local i32 @dvb_ringbuffer_empty(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
