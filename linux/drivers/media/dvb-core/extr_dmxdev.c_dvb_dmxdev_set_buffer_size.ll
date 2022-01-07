; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_set_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_set_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev_filter = type { i64, %struct.TYPE_2__*, %struct.dvb_ringbuffer }
%struct.TYPE_2__ = type { i32 }
%struct.dvb_ringbuffer = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@DMXDEV_STATE_GO = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmxdev_filter*, i64)* @dvb_dmxdev_set_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_set_buffer_size(%struct.dmxdev_filter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmxdev_filter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dvb_ringbuffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.dmxdev_filter* %0, %struct.dmxdev_filter** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %10 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %9, i32 0, i32 2
  store %struct.dvb_ringbuffer* %10, %struct.dvb_ringbuffer** %6, align 8
  %11 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %12 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %64

23:                                               ; preds = %17
  %24 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %25 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DMXDEV_STATE_GO, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %23
  %33 = load i64, i64* %5, align 8
  %34 = call i8* @vmalloc(i64 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %64

40:                                               ; preds = %32
  %41 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %42 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %8, align 8
  %44 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %45 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @spin_lock_irq(i32* %47)
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %51 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %54 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %56 = call i32 @dvb_ringbuffer_reset(%struct.dvb_ringbuffer* %55)
  %57 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %58 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_irq(i32* %60)
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @vfree(i8* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %40, %37, %29, %20, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i8* @vmalloc(i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dvb_ringbuffer_reset(%struct.dvb_ringbuffer*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
