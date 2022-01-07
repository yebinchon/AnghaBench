; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7266.c_ad7266_init_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7266.c_ad7266_init_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7266_chan_info = type { i64, i32, i32 }
%struct.iio_dev = type { i64, i32, i64, i32 }
%struct.ad7266_state = type { i64, i64, i32 }

@AD7266_MODE_SINGLE_ENDED = common dso_local global i64 0, align 8
@AD7266_RANGE_2VREF = common dso_local global i64 0, align 8
@AD7266_MODE_DIFF = common dso_local global i64 0, align 8
@ad7266_chan_infos = common dso_local global %struct.ad7266_chan_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @ad7266_init_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7266_init_channels(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.ad7266_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad7266_chan_info*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %9 = call %struct.ad7266_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.ad7266_state* %9, %struct.ad7266_state** %3, align 8
  %10 = load %struct.ad7266_state*, %struct.ad7266_state** %3, align 8
  %11 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AD7266_MODE_SINGLE_ENDED, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ad7266_state*, %struct.ad7266_state** %3, align 8
  %17 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AD7266_RANGE_2VREF, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.ad7266_state*, %struct.ad7266_state** %3, align 8
  %23 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AD7266_MODE_DIFF, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = or i32 %21, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ad7266_state*, %struct.ad7266_state** %3, align 8
  %32 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @AD7266_CHAN_INFO_INDEX(i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ad7266_chan_info*, %struct.ad7266_chan_info** @ad7266_chan_infos, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ad7266_chan_info, %struct.ad7266_chan_info* %35, i64 %37
  store %struct.ad7266_chan_info* %38, %struct.ad7266_chan_info** %6, align 8
  %39 = load %struct.ad7266_chan_info*, %struct.ad7266_chan_info** %6, align 8
  %40 = getelementptr inbounds %struct.ad7266_chan_info, %struct.ad7266_chan_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ad7266_chan_info*, %struct.ad7266_chan_info** %6, align 8
  %45 = getelementptr inbounds %struct.ad7266_chan_info, %struct.ad7266_chan_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ad7266_chan_info*, %struct.ad7266_chan_info** %6, align 8
  %50 = getelementptr inbounds %struct.ad7266_chan_info, %struct.ad7266_chan_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ad7266_chan_info*, %struct.ad7266_chan_info** %6, align 8
  %55 = getelementptr inbounds %struct.ad7266_chan_info, %struct.ad7266_chan_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  ret void
}

declare dso_local %struct.ad7266_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @AD7266_CHAN_INFO_INDEX(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
