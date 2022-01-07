; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.us5182d_data = type { i32 }

@US5182D_REG_CFG3 = common dso_local global i32 0, align 4
@US5182D_RESET_CHIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @us5182d_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_reset(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.us5182d_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.us5182d_data* @iio_priv(%struct.iio_dev* %4)
  store %struct.us5182d_data* %5, %struct.us5182d_data** %3, align 8
  %6 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %7 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @US5182D_REG_CFG3, align 4
  %10 = load i32, i32* @US5182D_RESET_CHIP, align 4
  %11 = call i32 @i2c_smbus_write_byte_data(i32 %8, i32 %9, i32 %10)
  ret i32 %11
}

declare dso_local %struct.us5182d_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
