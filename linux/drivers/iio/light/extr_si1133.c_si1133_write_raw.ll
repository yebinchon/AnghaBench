; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.si1133_data = type { i32 }

@SI1133_ADCSENS_SCALE_MASK = common dso_local global i32 0, align 4
@SI1133_ADCSENS_SCALE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SI1133_ADCSENS_HSIG_MASK = common dso_local global i32 0, align 4
@SI1133_ADCSENS_HSIG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @si1133_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.si1133_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.si1133_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.si1133_data* %14, %struct.si1133_data** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %64 [
    i64 130, label %16
    i64 131, label %37
    i64 132, label %42
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %34 [
    i32 129, label %20
    i32 128, label %20
  ]

20:                                               ; preds = %16, %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @si1133_scale_to_swgain(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %6, align 4
  br label %67

28:                                               ; preds = %20
  %29 = load %struct.si1133_data*, %struct.si1133_data** %12, align 8
  %30 = load i32, i32* @SI1133_ADCSENS_SCALE_MASK, align 4
  %31 = load i32, i32* @SI1133_ADCSENS_SCALE_SHIFT, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @si1133_update_adcsens(%struct.si1133_data* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %67

34:                                               ; preds = %16
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %67

37:                                               ; preds = %5
  %38 = load %struct.si1133_data*, %struct.si1133_data** %12, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @si1133_set_integration_time(%struct.si1133_data* %38, i32 0, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %67

42:                                               ; preds = %5
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %61 [
    i32 129, label %46
    i32 128, label %46
  ]

46:                                               ; preds = %42, %42
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %67

55:                                               ; preds = %49, %46
  %56 = load %struct.si1133_data*, %struct.si1133_data** %12, align 8
  %57 = load i32, i32* @SI1133_ADCSENS_HSIG_MASK, align 4
  %58 = load i32, i32* @SI1133_ADCSENS_HSIG_SHIFT, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @si1133_update_adcsens(%struct.si1133_data* %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %67

61:                                               ; preds = %42
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %67

64:                                               ; preds = %5
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %61, %55, %52, %37, %34, %28, %26
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.si1133_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @si1133_scale_to_swgain(i32, i32) #1

declare dso_local i32 @si1133_update_adcsens(%struct.si1133_data*, i32, i32, i32) #1

declare dso_local i32 @si1133_set_integration_time(%struct.si1133_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
