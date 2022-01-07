; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_read_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_read_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.apds9960_data = type { i32 }

@IIO_EV_INFO_VALUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_PROXIMITY = common dso_local global i64 0, align 8
@IIO_INTENSITY = common dso_local global i64 0, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @apds9960_read_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_read_event(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.apds9960_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %18, align 4
  %20 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %21 = call %struct.apds9960_data* @iio_priv(%struct.iio_dev* %20)
  store %struct.apds9960_data* %21, %struct.apds9960_data** %19, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @IIO_EV_INFO_VALUE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %81

28:                                               ; preds = %7
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @apds9960_get_thres_reg(%struct.iio_chan_spec* %29, i32 %30, i32* %16)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %8, align 4
  br label %81

36:                                               ; preds = %28
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IIO_PROXIMITY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.apds9960_data*, %struct.apds9960_data** %19, align 8
  %44 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @regmap_read(i32 %45, i32 %46, i32* %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %18, align 4
  store i32 %52, i32* %8, align 4
  br label %81

53:                                               ; preds = %42
  br label %78

54:                                               ; preds = %36
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %56 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IIO_INTENSITY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.apds9960_data*, %struct.apds9960_data** %19, align 8
  %62 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @regmap_bulk_read(i32 %63, i32 %64, i32* %17, i32 2)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %18, align 4
  store i32 %69, i32* %8, align 4
  br label %81

70:                                               ; preds = %60
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @le16_to_cpu(i32 %71)
  %73 = load i32*, i32** %14, align 8
  store i32 %72, i32* %73, align 4
  br label %77

74:                                               ; preds = %54
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %81

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %53
  %79 = load i32*, i32** %15, align 8
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %78, %74, %68, %51, %34, %25
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local %struct.apds9960_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @apds9960_get_thres_reg(%struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
