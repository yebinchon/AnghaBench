; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma220_spi.c_bma220_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma220_spi.c_bma220_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bma220_data = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bma220_scale_table = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@BMA220_REG_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to set measurement range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @bma220_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma220_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bma220_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 -1, i32* %14, align 4
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.bma220_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.bma220_data* %17, %struct.bma220_data** %15, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %90 [
    i64 128, label %19
  ]

19:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i32, i32* %12, align 4
  %22 = load i32**, i32*** @bma220_scale_table, align 8
  %23 = call i32 @ARRAY_SIZE(i32** %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = load i32**, i32*** @bma220_scale_table, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %26, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = load i32**, i32*** @bma220_scale_table, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %36, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %14, align 4
  br label %51

47:                                               ; preds = %35, %25
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %20

51:                                               ; preds = %45, %20
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %93

57:                                               ; preds = %51
  %58 = load %struct.bma220_data*, %struct.bma220_data** %15, align 8
  %59 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %58, i32 0, i32 1
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load i32, i32* @BMA220_REG_RANGE, align 4
  %62 = load %struct.bma220_data*, %struct.bma220_data** %15, align 8
  %63 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.bma220_data*, %struct.bma220_data** %15, align 8
  %68 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.bma220_data*, %struct.bma220_data** %15, align 8
  %72 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.bma220_data*, %struct.bma220_data** %15, align 8
  %75 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @spi_write(%struct.TYPE_2__* %73, i32* %76, i32 8)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %57
  %81 = load %struct.bma220_data*, %struct.bma220_data** %15, align 8
  %82 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %80, %57
  %87 = load %struct.bma220_data*, %struct.bma220_data** %15, align 8
  %88 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  store i32 0, i32* %6, align 4
  br label %93

90:                                               ; preds = %5
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %86, %54
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.bma220_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_write(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
