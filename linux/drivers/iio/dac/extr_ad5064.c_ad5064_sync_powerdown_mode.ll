; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5064.c_ad5064_sync_powerdown_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5064.c_ad5064_sync_powerdown_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5064_state = type { i32*, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iio_chan_spec = type { i32, i64 }

@AD5064_REGMAP_LTC = common dso_local global i64 0, align 8
@AD5064_REGMAP_ADI2 = common dso_local global i64 0, align 8
@AD5064_CMD_POWERDOWN_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5064_state*, %struct.iio_chan_spec*)* @ad5064_sync_powerdown_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5064_sync_powerdown_mode(%struct.ad5064_state* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca %struct.ad5064_state*, align 8
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ad5064_state* %0, %struct.ad5064_state** %3, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %4, align 8
  %9 = load %struct.ad5064_state*, %struct.ad5064_state** %3, align 8
  %10 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AD5064_REGMAP_LTC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  br label %58

20:                                               ; preds = %2
  %21 = load %struct.ad5064_state*, %struct.ad5064_state** %3, align 8
  %22 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AD5064_REGMAP_ADI2, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 4, i32* %7, align 4
  br label %30

29:                                               ; preds = %20
  store i32 8, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %35 = load %struct.ad5064_state*, %struct.ad5064_state** %3, align 8
  %36 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %30
  %45 = load %struct.ad5064_state*, %struct.ad5064_state** %3, align 8
  %46 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %44, %30
  br label %58

58:                                               ; preds = %57, %16
  %59 = load %struct.ad5064_state*, %struct.ad5064_state** %3, align 8
  %60 = load i32, i32* @AD5064_CMD_POWERDOWN_DAC, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @ad5064_write(%struct.ad5064_state* %59, i32 %60, i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @ad5064_write(%struct.ad5064_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
