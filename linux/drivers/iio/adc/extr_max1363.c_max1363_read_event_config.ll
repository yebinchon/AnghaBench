; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_read_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_read_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.max1363_state = type { i32, i32 }

@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32)* @max1363_read_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_read_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.max1363_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.max1363_state* @iio_priv(%struct.iio_dev* %12)
  store %struct.max1363_state* %13, %struct.max1363_state** %9, align 8
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %15 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.max1363_state*, %struct.max1363_state** %9, align 8
  %27 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  store i32 %29, i32* %10, align 4
  br label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  %32 = shl i32 1, %31
  %33 = load %struct.max1363_state*, %struct.max1363_state** %9, align 8
  %34 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %10, align 4
  ret i32 %41
}

declare dso_local %struct.max1363_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
