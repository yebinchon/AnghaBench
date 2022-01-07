; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.vcnl4035_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VCNL4035_ALS_CONF = common dso_local global i32 0, align 4
@VCNL4035_ALS_IT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @vcnl4035_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4035_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vcnl4035_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.vcnl4035_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.vcnl4035_data* %15, %struct.vcnl4035_data** %13, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %53 [
    i64 128, label %17
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 800
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %56

26:                                               ; preds = %20
  %27 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %13, align 8
  %28 = call i32 @vcnl4035_set_pm_runtime_state(%struct.vcnl4035_data* %27, i32 1)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %56

33:                                               ; preds = %26
  %34 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %13, align 8
  %35 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VCNL4035_ALS_CONF, align 4
  %38 = load i32, i32* @VCNL4035_ALS_IT_MASK, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sdiv i32 %39, 100
  %41 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %45, 100
  %47 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %13, align 8
  %48 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %33
  %50 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %13, align 8
  %51 = call i32 @vcnl4035_set_pm_runtime_state(%struct.vcnl4035_data* %50, i32 0)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %6, align 4
  br label %56

53:                                               ; preds = %5
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %49, %31, %23
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.vcnl4035_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @vcnl4035_set_pm_runtime_state(%struct.vcnl4035_data*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
