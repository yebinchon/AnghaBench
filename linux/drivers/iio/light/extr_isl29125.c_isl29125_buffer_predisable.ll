; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29125.c_isl29125_buffer_predisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29125.c_isl29125_buffer_predisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.isl29125_data = type { i32, i32 }

@ISL29125_MODE_MASK = common dso_local global i32 0, align 4
@ISL29125_MODE_PD = common dso_local global i32 0, align 4
@ISL29125_CONF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @isl29125_buffer_predisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29125_buffer_predisable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.isl29125_data*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.isl29125_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.isl29125_data* %7, %struct.isl29125_data** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call i32 @iio_triggered_buffer_predisable(%struct.iio_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @ISL29125_MODE_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.isl29125_data*, %struct.isl29125_data** %4, align 8
  %18 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @ISL29125_MODE_PD, align 4
  %22 = load %struct.isl29125_data*, %struct.isl29125_data** %4, align 8
  %23 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.isl29125_data*, %struct.isl29125_data** %4, align 8
  %27 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ISL29125_CONF1, align 4
  %30 = load %struct.isl29125_data*, %struct.isl29125_data** %4, align 8
  %31 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @i2c_smbus_write_byte_data(i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %14, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.isl29125_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_predisable(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
