; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3414.c_tcs3414_buffer_predisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3414.c_tcs3414_buffer_predisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tcs3414_data = type { i32, i32 }

@TCS3414_CONTROL_ADC_EN = common dso_local global i32 0, align 4
@TCS3414_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @tcs3414_buffer_predisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs3414_buffer_predisable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.tcs3414_data*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.tcs3414_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.tcs3414_data* %7, %struct.tcs3414_data** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call i32 @iio_triggered_buffer_predisable(%struct.iio_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load i32, i32* @TCS3414_CONTROL_ADC_EN, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.tcs3414_data*, %struct.tcs3414_data** %4, align 8
  %18 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.tcs3414_data*, %struct.tcs3414_data** %4, align 8
  %22 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TCS3414_CONTROL, align 4
  %25 = load %struct.tcs3414_data*, %struct.tcs3414_data** %4, align 8
  %26 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @i2c_smbus_write_byte_data(i32 %23, i32 %24, i32 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %14, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.tcs3414_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_predisable(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
