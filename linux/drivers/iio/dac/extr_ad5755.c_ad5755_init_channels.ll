; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_init_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5755.c_ad5755_init_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.iio_chan_spec* }
%struct.iio_chan_spec = type { i32, i32, i32 }
%struct.ad5755_platform_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ad5755_state = type { %struct.TYPE_3__*, %struct.iio_chan_spec* }
%struct.TYPE_3__ = type { %struct.iio_chan_spec }

@AD5755_NUM_CHANNELS = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@IIO_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.ad5755_platform_data*)* @ad5755_init_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5755_init_channels(%struct.iio_dev* %0, %struct.ad5755_platform_data* %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad5755_platform_data*, align 8
  %5 = alloca %struct.ad5755_state*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store %struct.ad5755_platform_data* %1, %struct.ad5755_platform_data** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.ad5755_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.ad5755_state* %9, %struct.ad5755_state** %5, align 8
  %10 = load %struct.ad5755_state*, %struct.ad5755_state** %5, align 8
  %11 = getelementptr inbounds %struct.ad5755_state, %struct.ad5755_state* %10, i32 0, i32 1
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %11, align 8
  store %struct.iio_chan_spec* %12, %struct.iio_chan_spec** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %68, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @AD5755_NUM_CHANNELS, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %13
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i64 %20
  %22 = load %struct.ad5755_state*, %struct.ad5755_state** %5, align 8
  %23 = getelementptr inbounds %struct.ad5755_state, %struct.ad5755_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = bitcast %struct.iio_chan_spec* %21 to i8*
  %27 = bitcast %struct.iio_chan_spec* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i64 %31
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i64 %37
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 1
  store i32 %34, i32* %39, align 4
  %40 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %4, align 8
  %41 = icmp ne %struct.ad5755_platform_data* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %17
  %43 = load %struct.ad5755_platform_data*, %struct.ad5755_platform_data** %4, align 8
  %44 = getelementptr inbounds %struct.ad5755_platform_data, %struct.ad5755_platform_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ad5755_is_voltage_mode(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %42
  %54 = load i32, i32* @IIO_VOLTAGE, align 4
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %55, i64 %57
  %59 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %58, i32 0, i32 2
  store i32 %54, i32* %59, align 4
  br label %67

60:                                               ; preds = %42, %17
  %61 = load i32, i32* @IIO_CURRENT, align 4
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i64 %64
  %66 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %65, i32 0, i32 2
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %53
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %13

71:                                               ; preds = %13
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %73 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 0
  store %struct.iio_chan_spec* %72, %struct.iio_chan_spec** %74, align 8
  ret i32 0
}

declare dso_local %struct.ad5755_state* @iio_priv(%struct.iio_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ad5755_is_voltage_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
