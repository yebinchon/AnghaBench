; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ads1015_data = type { i32 }

@IIO_EV_DIR_EITHER = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_MODE_WINDOW = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_MODE_TRAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @ads1015_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ads1015_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ads1015_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.ads1015_data* %16, %struct.ads1015_data** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @ADS1015_CFG_COMP_MODE_WINDOW, align 4
  br label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @ADS1015_CFG_COMP_MODE_TRAD, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %14, align 4
  %26 = load %struct.ads1015_data*, %struct.ads1015_data** %12, align 8
  %27 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %30 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.ads1015_data*, %struct.ads1015_data** %12, align 8
  %35 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %6, align 4
  br label %58

38:                                               ; preds = %24
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.ads1015_data*, %struct.ads1015_data** %12, align 8
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @ads1015_enable_event_config(%struct.ads1015_data* %42, %struct.iio_chan_spec* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  br label %51

46:                                               ; preds = %38
  %47 = load %struct.ads1015_data*, %struct.ads1015_data** %12, align 8
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @ads1015_disable_event_config(%struct.ads1015_data* %47, %struct.iio_chan_spec* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %53 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %52)
  %54 = load %struct.ads1015_data*, %struct.ads1015_data** %12, align 8
  %55 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %51, %33
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.ads1015_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ads1015_enable_event_config(%struct.ads1015_data*, %struct.iio_chan_spec*, i32) #1

declare dso_local i32 @ads1015_disable_event_config(%struct.ads1015_data*, %struct.iio_chan_spec*, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
