; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max5821.c_max5821_sync_powerdown_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max5821.c_max5821_sync_powerdown_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max5821_data = type { i32*, i32, i64* }
%struct.iio_chan_spec = type { i64 }

@MAX5821_EXTENDED_COMMAND_MODE = common dso_local global i32 0, align 4
@MAX5821_EXTENDED_DAC_A = common dso_local global i32 0, align 4
@MAX5821_EXTENDED_DAC_B = common dso_local global i32 0, align 4
@MAX5821_EXTENDED_POWER_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max5821_data*, %struct.iio_chan_spec*)* @max5821_sync_powerdown_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max5821_sync_powerdown_mode(%struct.max5821_data* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca %struct.max5821_data*, align 8
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca [2 x i32], align 4
  store %struct.max5821_data* %0, %struct.max5821_data** %3, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %4, align 8
  %6 = load i32, i32* @MAX5821_EXTENDED_COMMAND_MODE, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %6, i32* %7, align 4
  %8 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %9 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @MAX5821_EXTENDED_DAC_A, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %13, i32* %14, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @MAX5821_EXTENDED_DAC_B, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.max5821_data*, %struct.max5821_data** %3, align 8
  %20 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %18
  %29 = load %struct.max5821_data*, %struct.max5821_data** %3, align 8
  %30 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %46

41:                                               ; preds = %18
  %42 = load i32, i32* @MAX5821_EXTENDED_POWER_UP, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %28
  %47 = load %struct.max5821_data*, %struct.max5821_data** %3, align 8
  %48 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %51 = call i32 @i2c_master_send(i32 %49, i32* %50, i32 2)
  ret i32 %51
}

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
