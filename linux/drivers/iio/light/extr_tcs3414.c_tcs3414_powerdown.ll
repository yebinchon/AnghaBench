; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3414.c_tcs3414_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3414.c_tcs3414_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcs3414_data = type { i32, i32 }

@TCS3414_CONTROL = common dso_local global i32 0, align 4
@TCS3414_CONTROL_POWER = common dso_local global i32 0, align 4
@TCS3414_CONTROL_ADC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcs3414_data*)* @tcs3414_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs3414_powerdown(%struct.tcs3414_data* %0) #0 {
  %2 = alloca %struct.tcs3414_data*, align 8
  store %struct.tcs3414_data* %0, %struct.tcs3414_data** %2, align 8
  %3 = load %struct.tcs3414_data*, %struct.tcs3414_data** %2, align 8
  %4 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TCS3414_CONTROL, align 4
  %7 = load %struct.tcs3414_data*, %struct.tcs3414_data** %2, align 8
  %8 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TCS3414_CONTROL_POWER, align 4
  %11 = load i32, i32* @TCS3414_CONTROL_ADC_EN, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = call i32 @i2c_smbus_write_byte_data(i32 %5, i32 %6, i32 %14)
  ret i32 %15
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
