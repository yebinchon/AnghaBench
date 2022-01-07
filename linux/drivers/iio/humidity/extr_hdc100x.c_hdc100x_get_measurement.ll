; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hdc100x.c_hdc100x_get_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hdc100x.c_hdc100x_get_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdc100x_data = type { i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.iio_chan_spec = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"cannot start measurement\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot read sensor data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdc100x_data*, %struct.iio_chan_spec*)* @hdc100x_get_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdc100x_get_measurement(%struct.hdc100x_data* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdc100x_data*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hdc100x_data* %0, %struct.hdc100x_data** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  %10 = load %struct.hdc100x_data*, %struct.hdc100x_data** %4, align 8
  %11 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %10, i32 0, i32 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.hdc100x_data*, %struct.hdc100x_data** %4, align 8
  %14 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %21, i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1000
  %37 = call i32 @usleep_range(i32 %34, i32 %36)
  %38 = load %struct.hdc100x_data*, %struct.hdc100x_data** %4, align 8
  %39 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %38, i32 0, i32 1
  %40 = load %struct.i2c_client*, %struct.i2c_client** %39, align 8
  %41 = bitcast i32* %9 to i8*
  %42 = call i32 @i2c_master_recv(%struct.i2c_client* %40, i8* %41, i32 4)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %33
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @be16_to_cpu(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %45, %28
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
