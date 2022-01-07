; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7606B_sw_mode_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7606B_sw_mode_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7606_state = type { i64*, %struct.TYPE_3__*, i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.ad7606_state*, i32, i32)* }
%struct.TYPE_4__ = type { i32, i32 }

@__const.ad7606B_sw_mode_config.os = private unnamed_addr constant [3 x i64] [i64 1, i64 0, i64 0], align 16
@ad7606B_oversampling_avail = common dso_local global i64* null, align 8
@ad7606_write_scale_sw = common dso_local global i32 0, align 4
@ad7606_write_os_sw = common dso_local global i32 0, align 4
@AD7606_CONFIGURATION_REGISTER = common dso_local global i32 0, align 4
@AD7606_SINGLE_DOUT = common dso_local global i32 0, align 4
@ad7606b_sw_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad7606B_sw_mode_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7606B_sw_mode_config(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.ad7606_state*, align 8
  %4 = alloca [3 x i64], align 16
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %6 = call %struct.ad7606_state* @iio_priv(%struct.iio_dev* %5)
  store %struct.ad7606_state* %6, %struct.ad7606_state** %3, align 8
  %7 = bitcast [3 x i64]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([3 x i64]* @__const.ad7606B_sw_mode_config.os to i8*), i64 24, i1 false)
  %8 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %9 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %8, i32 0, i32 5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i64* %13)
  %15 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %16 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %15, i32 0, i32 5
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %21 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %20, i32 0, i32 5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %26 = call i32 @gpiod_set_array_value(i32 %14, i32 %19, i32 %24, i64* %25)
  br label %27

27:                                               ; preds = %12, %1
  %28 = load i64*, i64** @ad7606B_oversampling_avail, align 8
  %29 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %30 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %29, i32 0, i32 0
  store i64* %28, i64** %30, align 8
  %31 = load i64*, i64** @ad7606B_oversampling_avail, align 8
  %32 = call i32 @ARRAY_SIZE(i64* %31)
  %33 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %34 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ad7606_write_scale_sw, align 4
  %36 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %37 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %39 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %38, i32 0, i32 2
  store i32* @ad7606_write_os_sw, i32** %39, align 8
  %40 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %41 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ad7606_state*, i32, i32)*, i32 (%struct.ad7606_state*, i32, i32)** %43, align 8
  %45 = load %struct.ad7606_state*, %struct.ad7606_state** %3, align 8
  %46 = load i32, i32* @AD7606_CONFIGURATION_REGISTER, align 4
  %47 = load i32, i32* @AD7606_SINGLE_DOUT, align 4
  %48 = call i32 %44(%struct.ad7606_state* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @ad7606b_sw_channels, align 4
  %50 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  ret i32 0
}

declare dso_local %struct.ad7606_state* @iio_priv(%struct.iio_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gpiod_set_array_value(i32, i32, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
