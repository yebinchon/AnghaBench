; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_dln2-adc.c_dln2_adc_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_dln2-adc.c_dln2_adc_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.dln2_adc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"clamping period to 65535ms\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @dln2_adc_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_adc_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dln2_adc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.dln2_adc* @iio_priv(%struct.iio_dev* %15)
  store %struct.dln2_adc* %16, %struct.dln2_adc** %14, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %69 [
    i64 128, label %18
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = mul nsw i32 1000000, %19
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %24 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %13, align 4
  %30 = udiv i32 1000000000, %29
  br label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @UINT_MAX, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %30, %28 ], [ %32, %31 ]
  %35 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %36 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %38 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 65535
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %43 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %42, i32 0, i32 0
  store i32 65535, i32* %43, align 8
  %44 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %45 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %41, %33
  %50 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %51 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %56 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %57 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %60 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dln2_adc_set_chan_period(%struct.dln2_adc* %55, i32 %58, i32 %61)
  store i32 %62, i32* %12, align 4
  br label %64

63:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.dln2_adc*, %struct.dln2_adc** %14, align 8
  %66 = getelementptr inbounds %struct.dln2_adc, %struct.dln2_adc* %65, i32 0, i32 2
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %6, align 4
  br label %72

69:                                               ; preds = %5
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.dln2_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dln2_adc_set_chan_period(%struct.dln2_adc*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
