; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_pkt_dispose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_pkt_dispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i64*, i64 }

@PKT_DISPOSED = common dso_local global i64 0, align 8
@DVB_RINGBUFFER_PKTHDRSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_ringbuffer_pkt_dispose(%struct.dvb_ringbuffer* %0, i64 %1) #0 {
  %3 = alloca %struct.dvb_ringbuffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @PKT_DISPOSED, align 8
  %7 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %10, 2
  %12 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = urem i64 %11, %14
  %16 = getelementptr inbounds i64, i64* %9, i64 %15
  store i64 %6, i64* %16, align 8
  br label %17

17:                                               ; preds = %41, %2
  %18 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %3, align 8
  %19 = call i64 @dvb_ringbuffer_avail(%struct.dvb_ringbuffer* %18)
  %20 = load i64, i64* @DVB_RINGBUFFER_PKTHDRSIZE, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %3, align 8
  %24 = call i64 @DVB_RINGBUFFER_PEEK(%struct.dvb_ringbuffer* %23, i32 2)
  %25 = load i64, i64* @PKT_DISPOSED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %3, align 8
  %29 = call i64 @DVB_RINGBUFFER_PEEK(%struct.dvb_ringbuffer* %28, i32 0)
  %30 = shl i64 %29, 8
  store i64 %30, i64* %5, align 8
  %31 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %3, align 8
  %32 = call i64 @DVB_RINGBUFFER_PEEK(%struct.dvb_ringbuffer* %31, i32 1)
  %33 = load i64, i64* %5, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @DVB_RINGBUFFER_PKTHDRSIZE, align 8
  %38 = add i64 %36, %37
  %39 = call i32 @DVB_RINGBUFFER_SKIP(%struct.dvb_ringbuffer* %35, i64 %38)
  br label %41

40:                                               ; preds = %22
  br label %42

41:                                               ; preds = %27
  br label %17

42:                                               ; preds = %40, %17
  ret void
}

declare dso_local i64 @dvb_ringbuffer_avail(%struct.dvb_ringbuffer*) #1

declare dso_local i64 @DVB_RINGBUFFER_PEEK(%struct.dvb_ringbuffer*, i32) #1

declare dso_local i32 @DVB_RINGBUFFER_SKIP(%struct.dvb_ringbuffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
