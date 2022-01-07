; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_get_event_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_get_event_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mma8452_event_regs = type { i32 }
%struct.mma8452_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iio_chan_spec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MMA8452_INT_TRANS = common dso_local global i32 0, align 4
@trans_ev_regs = common dso_local global %struct.mma8452_event_regs zeroinitializer, align 4
@ff_mt_ev_regs = common dso_local global %struct.mma8452_event_regs zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mma8452_data*, %struct.iio_chan_spec*, i32, %struct.mma8452_event_regs**)* @mma8452_get_event_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_get_event_regs(%struct.mma8452_data* %0, %struct.iio_chan_spec* %1, i32 %2, %struct.mma8452_event_regs** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mma8452_data*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mma8452_event_regs**, align 8
  store %struct.mma8452_data* %0, %struct.mma8452_data** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mma8452_event_regs** %3, %struct.mma8452_event_regs*** %9, align 8
  %10 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %11 = icmp ne %struct.iio_chan_spec* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %52

15:                                               ; preds = %4
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %49 [
    i32 130, label %19
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %46 [
    i32 128, label %21
    i32 129, label %44
  ]

21:                                               ; preds = %19
  %22 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %23 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MMA8452_INT_TRANS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %32 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MMA8452_INT_TRANS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load %struct.mma8452_event_regs**, %struct.mma8452_event_regs*** %9, align 8
  store %struct.mma8452_event_regs* @trans_ev_regs, %struct.mma8452_event_regs** %40, align 8
  br label %43

41:                                               ; preds = %30, %21
  %42 = load %struct.mma8452_event_regs**, %struct.mma8452_event_regs*** %9, align 8
  store %struct.mma8452_event_regs* @ff_mt_ev_regs, %struct.mma8452_event_regs** %42, align 8
  br label %43

43:                                               ; preds = %41, %39
  store i32 0, i32* %5, align 4
  br label %52

44:                                               ; preds = %19
  %45 = load %struct.mma8452_event_regs**, %struct.mma8452_event_regs*** %9, align 8
  store %struct.mma8452_event_regs* @ff_mt_ev_regs, %struct.mma8452_event_regs** %45, align 8
  store i32 0, i32* %5, align 4
  br label %52

46:                                               ; preds = %19
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %15
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %46, %44, %43, %12
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
