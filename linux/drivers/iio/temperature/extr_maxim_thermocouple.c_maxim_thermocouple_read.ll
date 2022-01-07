; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_maxim_thermocouple.c_maxim_thermocouple_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_maxim_thermocouple.c_maxim_thermocouple_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maxim_thermocouple_data = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iio_chan_spec = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.maxim_thermocouple_data*, %struct.iio_chan_spec*, i32*)* @maxim_thermocouple_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maxim_thermocouple_read(%struct.maxim_thermocouple_data* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.maxim_thermocouple_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.maxim_thermocouple_data* %0, %struct.maxim_thermocouple_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.maxim_thermocouple_data*, %struct.maxim_thermocouple_data** %5, align 8
  %14 = getelementptr inbounds %struct.maxim_thermocouple_data, %struct.maxim_thermocouple_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %24, 8
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %48 [
    i32 2, label %28
    i32 4, label %38
  ]

28:                                               ; preds = %3
  %29 = load %struct.maxim_thermocouple_data*, %struct.maxim_thermocouple_data** %5, align 8
  %30 = getelementptr inbounds %struct.maxim_thermocouple_data, %struct.maxim_thermocouple_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = bitcast i32* %10 to i8*
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @spi_read(i32 %31, i8* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @be16_to_cpu(i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %51

38:                                               ; preds = %3
  %39 = load %struct.maxim_thermocouple_data*, %struct.maxim_thermocouple_data** %5, align 8
  %40 = getelementptr inbounds %struct.maxim_thermocouple_data, %struct.maxim_thermocouple_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = bitcast i32* %11 to i8*
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @spi_read(i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @be32_to_cpu(i32 %45)
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %51

48:                                               ; preds = %3
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %38, %28
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %81

56:                                               ; preds = %51
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.maxim_thermocouple_data*, %struct.maxim_thermocouple_data** %5, align 8
  %60 = getelementptr inbounds %struct.maxim_thermocouple_data, %struct.maxim_thermocouple_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %58, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %81

69:                                               ; preds = %56
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = ashr i32 %71, %72
  %74 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %75 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, 1
  %79 = call i32 @sign_extend32(i32 %73, i64 %78)
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %69, %66, %54
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @spi_read(i32, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @sign_extend32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
