; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_show_measurement_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_show_measurement_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hmc5843_data = type { i32 }

@HMC5843_CONFIG_REG_A = common dso_local global i32 0, align 4
@HMC5843_MEAS_CONF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*)* @hmc5843_show_measurement_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmc5843_show_measurement_configuration(%struct.iio_dev* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca %struct.hmc5843_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.hmc5843_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.hmc5843_data* %10, %struct.hmc5843_data** %6, align 8
  %11 = load %struct.hmc5843_data*, %struct.hmc5843_data** %6, align 8
  %12 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HMC5843_CONFIG_REG_A, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @HMC5843_MEAS_CONF_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.hmc5843_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
