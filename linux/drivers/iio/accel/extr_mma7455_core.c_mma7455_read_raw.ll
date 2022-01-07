; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma7455_core.c_mma7455_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma7455_core.c_mma7455_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mma7455_data = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@MMA7455_10BIT_SCALE = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@MMA7455_REG_CTL1 = common dso_local global i32 0, align 4
@MMA7455_CTL1_DFBW_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mma7455_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma7455_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mma7455_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.mma7455_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.mma7455_data* %17, %struct.mma7455_data** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %77 [
    i64 130, label %19
    i64 128, label %51
    i64 129, label %56
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = call i32 @iio_buffer_enabled(%struct.iio_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %80

26:                                               ; preds = %19
  %27 = load %struct.mma7455_data*, %struct.mma7455_data** %12, align 8
  %28 = call i32 @mma7455_drdy(%struct.mma7455_data* %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %6, align 4
  br label %80

33:                                               ; preds = %26
  %34 = load %struct.mma7455_data*, %struct.mma7455_data** %12, align 8
  %35 = getelementptr inbounds %struct.mma7455_data, %struct.mma7455_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regmap_bulk_read(i32 %36, i32 %39, i32* %14, i32 4)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %6, align 4
  br label %80

45:                                               ; preds = %33
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = call i32 @sign_extend32(i32 %47, i32 9)
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %50, i32* %6, align 4
  br label %80

51:                                               ; preds = %5
  %52 = load i32*, i32** %9, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* @MMA7455_10BIT_SCALE, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %55, i32* %6, align 4
  br label %80

56:                                               ; preds = %5
  %57 = load %struct.mma7455_data*, %struct.mma7455_data** %12, align 8
  %58 = getelementptr inbounds %struct.mma7455_data, %struct.mma7455_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MMA7455_REG_CTL1, align 4
  %61 = call i32 @regmap_read(i32 %59, i32 %60, i32* %13)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %6, align 4
  br label %80

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @MMA7455_CTL1_DFBW_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32*, i32** %9, align 8
  store i32 250, i32* %72, align 4
  br label %75

73:                                               ; preds = %66
  %74 = load i32*, i32** %9, align 8
  store i32 125, i32* %74, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %76, i32* %6, align 4
  br label %80

77:                                               ; preds = %5
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %77, %75, %64, %51, %45, %43, %31, %23
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.mma7455_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @mma7455_drdy(%struct.mma7455_data*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
