; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_set_powerdown_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_set_powerdown_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.dac5571_data = type { i32, i32 (%struct.dac5571_data*, i32, i32)*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @dac5571_set_powerdown_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac5571_set_powerdown_mode(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dac5571_data*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.dac5571_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.dac5571_data* %11, %struct.dac5571_data** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %13 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %20 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %23 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %28 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %27, i32 0, i32 1
  %29 = load i32 (%struct.dac5571_data*, i32, i32)*, i32 (%struct.dac5571_data*, i32, i32)** %28, align 8
  %30 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @DAC5571_POWERDOWN(i32 %34)
  %36 = call i32 %29(%struct.dac5571_data* %30, i32 %33, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %45

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %44 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %39
  %46 = load %struct.dac5571_data*, %struct.dac5571_data** %8, align 8
  %47 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %45, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.dac5571_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DAC5571_POWERDOWN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
