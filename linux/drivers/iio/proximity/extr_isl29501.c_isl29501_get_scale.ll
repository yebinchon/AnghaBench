; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_get_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_get_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29501_private = type { i32 }
%struct.iio_chan_spec = type { i32 }

@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@REG_DRIVER_RANGE = common dso_local global i32 0, align 4
@isl29501_current_scale_table = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29501_private*, %struct.iio_chan_spec*, i32*, i32*)* @isl29501_get_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_get_scale(%struct.isl29501_private* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.isl29501_private*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.isl29501_private* %0, %struct.isl29501_private** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %74 [
    i32 129, label %15
    i32 130, label %19
    i32 131, label %23
    i32 132, label %27
    i32 128, label %70
  ]

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  store i32 3331, i32* %16, align 4
  %17 = load i32*, i32** %9, align 8
  store i32 6553600, i32* %17, align 4
  %18 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %18, i32* %5, align 4
  br label %77

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %9, align 8
  store i32 95874, i32* %21, align 4
  %22 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %22, i32* %5, align 4
  br label %77

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  store i32 35, i32* %24, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 10000, i32* %25, align 4
  %26 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %26, i32* %5, align 4
  br label %77

27:                                               ; preds = %4
  %28 = load %struct.isl29501_private*, %struct.isl29501_private** %6, align 8
  %29 = load i32, i32* @REG_DRIVER_RANGE, align 4
  %30 = call i32 @isl29501_register_read(%struct.isl29501_private* %28, i32 %29, i32* %11)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %77

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = load i32**, i32*** @isl29501_current_scale_table, align 8
  %38 = call i32 @ARRAY_SIZE(i32** %37)
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %77

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %8, align 8
  store i32 0, i32* %47, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %49, i32* %5, align 4
  br label %77

50:                                               ; preds = %43
  %51 = load i32**, i32*** @isl29501_current_scale_table, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32**, i32*** @isl29501_current_scale_table, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %60, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %69, i32* %5, align 4
  br label %77

70:                                               ; preds = %4
  %71 = load i32*, i32** %8, align 8
  store i32 125, i32* %71, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 100000, i32* %72, align 4
  %73 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %73, i32* %5, align 4
  br label %77

74:                                               ; preds = %4
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %70, %50, %46, %40, %33, %23, %19, %15
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @isl29501_register_read(%struct.isl29501_private*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
