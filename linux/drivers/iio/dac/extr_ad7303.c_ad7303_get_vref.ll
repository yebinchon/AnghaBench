; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad7303.c_ad7303_get_vref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad7303.c_ad7303_get_vref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7303_state = type { i32, i32, i32 }
%struct.iio_chan_spec = type { i32 }

@AD7303_CFG_EXTERNAL_VREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7303_state*, %struct.iio_chan_spec*)* @ad7303_get_vref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7303_get_vref(%struct.ad7303_state* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7303_state*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  store %struct.ad7303_state* %0, %struct.ad7303_state** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  %7 = load %struct.ad7303_state*, %struct.ad7303_state** %4, align 8
  %8 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AD7303_CFG_EXTERNAL_VREF, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.ad7303_state*, %struct.ad7303_state** %4, align 8
  %15 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regulator_get_voltage(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.ad7303_state*, %struct.ad7303_state** %4, align 8
  %20 = getelementptr inbounds %struct.ad7303_state, %struct.ad7303_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regulator_get_voltage(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %25, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
