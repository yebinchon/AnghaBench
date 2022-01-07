; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_filter_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_filter_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev = type { i32, i32 }
%struct.dmxdev_filter = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@DMXDEV_STATE_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmxdev*, %struct.dmxdev_filter*)* @dvb_dmxdev_filter_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_filter_free(%struct.dmxdev* %0, %struct.dmxdev_filter* %1) #0 {
  %3 = alloca %struct.dmxdev*, align 8
  %4 = alloca %struct.dmxdev_filter*, align 8
  %5 = alloca i8*, align 8
  store %struct.dmxdev* %0, %struct.dmxdev** %3, align 8
  store %struct.dmxdev_filter* %1, %struct.dmxdev_filter** %4, align 8
  %6 = load %struct.dmxdev*, %struct.dmxdev** %3, align 8
  %7 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %10 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %13 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %12, i32 0, i32 2
  %14 = call i64 @dvb_vb2_is_streaming(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %18 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %17, i32 0, i32 2
  %19 = call i32 @dvb_vb2_stream_off(i32* %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %22 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %21, i32 0, i32 2
  %23 = call i32 @dvb_vb2_release(i32* %22)
  %24 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %25 = call i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter* %24)
  %26 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %27 = call i32 @dvb_dmxdev_filter_reset(%struct.dmxdev_filter* %26)
  %28 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %29 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %20
  %34 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %35 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  store i8* %38, i8** %5, align 8
  %39 = load %struct.dmxdev*, %struct.dmxdev** %3, align 8
  %40 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %39, i32 0, i32 1
  %41 = call i32 @spin_lock_irq(i32* %40)
  %42 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %43 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.dmxdev*, %struct.dmxdev** %3, align 8
  %46 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock_irq(i32* %46)
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @vfree(i8* %48)
  br label %50

50:                                               ; preds = %33, %20
  %51 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %52 = load i32, i32* @DMXDEV_STATE_FREE, align 4
  %53 = call i32 @dvb_dmxdev_filter_state_set(%struct.dmxdev_filter* %51, i32 %52)
  %54 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %55 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @wake_up(i32* %56)
  %58 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %4, align 8
  %59 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.dmxdev*, %struct.dmxdev** %3, align 8
  %62 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dvb_vb2_is_streaming(i32*) #1

declare dso_local i32 @dvb_vb2_stream_off(i32*) #1

declare dso_local i32 @dvb_vb2_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter*) #1

declare dso_local i32 @dvb_dmxdev_filter_reset(%struct.dmxdev_filter*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @dvb_dmxdev_filter_state_set(%struct.dmxdev_filter*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
