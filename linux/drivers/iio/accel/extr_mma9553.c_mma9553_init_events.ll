; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_init_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_init_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma9553_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@MMA9553_EVENTS_INFO_SIZE = common dso_local global i32 0, align 4
@mma9553_events_info = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mma9553_data*)* @mma9553_init_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mma9553_init_events(%struct.mma9553_data* %0) #0 {
  %2 = alloca %struct.mma9553_data*, align 8
  %3 = alloca i32, align 4
  store %struct.mma9553_data* %0, %struct.mma9553_data** %2, align 8
  %4 = load i32, i32* @MMA9553_EVENTS_INFO_SIZE, align 4
  %5 = load %struct.mma9553_data*, %struct.mma9553_data** %2, align 8
  %6 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.mma9553_data*, %struct.mma9553_data** %2, align 8
  %10 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load i32*, i32** @mma9553_events_info, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load %struct.mma9553_data*, %struct.mma9553_data** %2, align 8
  %19 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32* %17, i32** %24, align 8
  %25 = load %struct.mma9553_data*, %struct.mma9553_data** %2, align 8
  %26 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %7

35:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
