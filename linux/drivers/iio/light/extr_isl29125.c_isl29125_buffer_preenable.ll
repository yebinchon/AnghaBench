; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29125.c_isl29125_buffer_preenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29125.c_isl29125_buffer_preenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.isl29125_data = type { i32, i32 }

@ISL29125_MODE_RGB = common dso_local global i32 0, align 4
@ISL29125_CONF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @isl29125_buffer_preenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29125_buffer_preenable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.isl29125_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.isl29125_data* @iio_priv(%struct.iio_dev* %4)
  store %struct.isl29125_data* %5, %struct.isl29125_data** %3, align 8
  %6 = load i32, i32* @ISL29125_MODE_RGB, align 4
  %7 = load %struct.isl29125_data*, %struct.isl29125_data** %3, align 8
  %8 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.isl29125_data*, %struct.isl29125_data** %3, align 8
  %12 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ISL29125_CONF1, align 4
  %15 = load %struct.isl29125_data*, %struct.isl29125_data** %3, align 8
  %16 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @i2c_smbus_write_byte_data(i32 %13, i32 %14, i32 %17)
  ret i32 %18
}

declare dso_local %struct.isl29125_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
