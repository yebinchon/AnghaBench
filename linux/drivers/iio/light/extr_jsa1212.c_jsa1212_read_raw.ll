; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_jsa1212.c_jsa1212_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_jsa1212.c_jsa1212_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.jsa1212_data = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@jsa1212_als_range_val = common dso_local global i32* null, align 8
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @jsa1212_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsa1212_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.jsa1212_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.jsa1212_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.jsa1212_data* %15, %struct.jsa1212_data** %13, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %64 [
    i64 131, label %17
    i64 130, label %47
  ]

17:                                               ; preds = %5
  %18 = load %struct.jsa1212_data*, %struct.jsa1212_data** %13, align 8
  %19 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %32 [
    i32 129, label %24
    i32 128, label %28
  ]

24:                                               ; preds = %17
  %25 = load %struct.jsa1212_data*, %struct.jsa1212_data** %13, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @jsa1212_read_als_data(%struct.jsa1212_data* %25, i32* %26)
  store i32 %27, i32* %12, align 4
  br label %35

28:                                               ; preds = %17
  %29 = load %struct.jsa1212_data*, %struct.jsa1212_data** %13, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @jsa1212_read_pxs_data(%struct.jsa1212_data* %29, i32* %30)
  store i32 %31, i32* %12, align 4
  br label %35

32:                                               ; preds = %17
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %32, %28, %24
  %36 = load %struct.jsa1212_data*, %struct.jsa1212_data** %13, align 8
  %37 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @IIO_VAL_INT, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %6, align 4
  br label %68

47:                                               ; preds = %5
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %62 [
    i32 129, label %51
  ]

51:                                               ; preds = %47
  %52 = load i32*, i32** @jsa1212_als_range_val, align 8
  %53 = load %struct.jsa1212_data*, %struct.jsa1212_data** %13, align 8
  %54 = getelementptr inbounds %struct.jsa1212_data, %struct.jsa1212_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = call i32 @BIT(i32 12)
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %61, i32* %6, align 4
  br label %68

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62
  br label %65

64:                                               ; preds = %5
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %51, %45
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.jsa1212_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @jsa1212_read_als_data(%struct.jsa1212_data*, i32*) #1

declare dso_local i32 @jsa1212_read_pxs_data(%struct.jsa1212_data*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
