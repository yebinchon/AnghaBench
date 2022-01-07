; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_write_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_write_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.apds9960_data = type { i32 }

@IIO_EV_INFO_VALUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_PROXIMITY = common dso_local global i64 0, align 8
@APDS9960_MAX_PXS_THRES_VAL = common dso_local global i32 0, align 4
@IIO_INTENSITY = common dso_local global i64 0, align 8
@APDS9960_MAX_ALS_THRES_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @apds9960_write_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_write_event(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.apds9960_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
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
  br label %98

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
  br label %98

36:                                               ; preds = %28
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IIO_PROXIMITY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @APDS9960_MAX_PXS_THRES_VAL, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %98

52:                                               ; preds = %45
  %53 = load %struct.apds9960_data*, %struct.apds9960_data** %19, align 8
  %54 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @regmap_write(i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %8, align 4
  br label %98

63:                                               ; preds = %52
  br label %97

64:                                               ; preds = %36
  %65 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %66 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IIO_INTENSITY, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %64
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @APDS9960_MAX_ALS_THRES_VAL, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %70
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %98

80:                                               ; preds = %73
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @cpu_to_le16(i32 %81)
  store i32 %82, i32* %17, align 4
  %83 = load %struct.apds9960_data*, %struct.apds9960_data** %19, align 8
  %84 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @regmap_bulk_write(i32 %85, i32 %86, i32* %17, i32 2)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %18, align 4
  store i32 %91, i32* %8, align 4
  br label %98

92:                                               ; preds = %80
  br label %96

93:                                               ; preds = %64
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %98

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96, %63
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %93, %90, %77, %61, %49, %34, %25
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local %struct.apds9960_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @apds9960_get_thres_reg(%struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
