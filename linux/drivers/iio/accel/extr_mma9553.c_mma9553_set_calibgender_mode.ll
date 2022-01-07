; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_set_calibgender_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_set_calibgender_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mma9553_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MMA9553_REG_CONF_FILTER = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_MALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @mma9553_set_calibgender_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_set_calibgender_mode(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mma9553_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.mma9553_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.mma9553_data* %12, %struct.mma9553_data** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %19, %3
  %26 = load %struct.mma9553_data*, %struct.mma9553_data** %8, align 8
  %27 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.mma9553_data*, %struct.mma9553_data** %8, align 8
  %30 = load i32, i32* @MMA9553_REG_CONF_FILTER, align 4
  %31 = load %struct.mma9553_data*, %struct.mma9553_data** %8, align 8
  %32 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MMA9553_MASK_CONF_MALE, align 4
  %36 = call i32 @mma9553_set_config(%struct.mma9553_data* %29, i32 %30, i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.mma9553_data*, %struct.mma9553_data** %8, align 8
  %38 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %25, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.mma9553_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mma9553_set_config(%struct.mma9553_data*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
