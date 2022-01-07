; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_buffer_preenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_buffer_preenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ads1015_data = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ads1015_buffer_preenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_buffer_preenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ads1015_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %6 = call %struct.ads1015_data* @iio_priv(%struct.iio_dev* %5)
  store %struct.ads1015_data* %6, %struct.ads1015_data** %4, align 8
  %7 = load %struct.ads1015_data*, %struct.ads1015_data** %4, align 8
  %8 = call i64 @ads1015_event_channel_enabled(%struct.ads1015_data* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %15 = call %struct.ads1015_data* @iio_priv(%struct.iio_dev* %14)
  %16 = call i32 @ads1015_set_power_state(%struct.ads1015_data* %15, i32 1)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local %struct.ads1015_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @ads1015_event_channel_enabled(%struct.ads1015_data*) #1

declare dso_local i32 @ads1015_set_power_state(%struct.ads1015_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
