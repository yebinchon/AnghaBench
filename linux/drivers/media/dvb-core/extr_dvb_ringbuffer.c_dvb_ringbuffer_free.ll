; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dvb_ringbuffer_free(%struct.dvb_ringbuffer* %0) #0 {
  %2 = alloca %struct.dvb_ringbuffer*, align 8
  %3 = alloca i64, align 8
  store %struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer** %2, align 8
  %4 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @READ_ONCE(i32 %6)
  %8 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %2, align 8
  %16 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add nsw i64 %18, %17
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i64, i64* %3, align 8
  %22 = sub nsw i64 %21, 1
  ret i64 %22
}

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
