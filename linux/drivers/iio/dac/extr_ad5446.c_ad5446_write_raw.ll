; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5446.c_ad5446_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5446.c_ad5446_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ad5446_state = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ad5446_state*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad5446_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5446_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5446_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad5446_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad5446_state* %15, %struct.ad5446_state** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %61 [
    i64 128, label %17
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = icmp sge i32 %18, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %17
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %66

31:                                               ; preds = %25
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.ad5446_state*, %struct.ad5446_state** %12, align 8
  %43 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ad5446_state*, %struct.ad5446_state** %12, align 8
  %45 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %31
  %49 = load %struct.ad5446_state*, %struct.ad5446_state** %12, align 8
  %50 = getelementptr inbounds %struct.ad5446_state, %struct.ad5446_state* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.ad5446_state*, i32)*, i32 (%struct.ad5446_state*, i32)** %52, align 8
  %54 = load %struct.ad5446_state*, %struct.ad5446_state** %12, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 %53(%struct.ad5446_state* %54, i32 %55)
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %48, %31
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %64

61:                                               ; preds = %5
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %28
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.ad5446_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
