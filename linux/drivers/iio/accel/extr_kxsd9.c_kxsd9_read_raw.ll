; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxsd9.c_kxsd9_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxsd9.c_kxsd9_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.kxsd9_state = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@KXSD9_ZERO_G_OFFSET = common dso_local global i32 0, align 4
@KXSD9_REG_CTRL_C = common dso_local global i32 0, align 4
@kxsd9_micro_scales = common dso_local global i32* null, align 8
@KXSD9_CTRL_C_FS_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @kxsd9_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxsd9_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kxsd9_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %19 = call %struct.kxsd9_state* @iio_priv(%struct.iio_dev* %18)
  store %struct.kxsd9_state* %19, %struct.kxsd9_state** %12, align 8
  %20 = load %struct.kxsd9_state*, %struct.kxsd9_state** %12, align 8
  %21 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_get_sync(i32 %22)
  %24 = load i64, i64* %10, align 8
  switch i64 %24, label %68 [
    i64 129, label %25
    i64 130, label %44
    i64 128, label %48
  ]

25:                                               ; preds = %5
  %26 = load %struct.kxsd9_state*, %struct.kxsd9_state** %12, align 8
  %27 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_bulk_read(i32 %28, i32 %31, i32* %14, i32 4)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %69

36:                                               ; preds = %25
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @be16_to_cpu(i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = ashr i32 %39, 4
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %43, i32* %11, align 4
  br label %68

44:                                               ; preds = %5
  %45 = load i32, i32* @KXSD9_ZERO_G_OFFSET, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %47, i32* %11, align 4
  br label %68

48:                                               ; preds = %5
  %49 = load %struct.kxsd9_state*, %struct.kxsd9_state** %12, align 8
  %50 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @KXSD9_REG_CTRL_C, align 4
  %53 = call i32 @regmap_read(i32 %51, i32 %52, i32* %13)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %69

57:                                               ; preds = %48
  %58 = load i32*, i32** %8, align 8
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** @kxsd9_micro_scales, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @KXSD9_CTRL_C_FS_MASK, align 4
  %62 = and i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %5, %57, %44, %36
  br label %69

69:                                               ; preds = %68, %56, %35
  %70 = load %struct.kxsd9_state*, %struct.kxsd9_state** %12, align 8
  %71 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pm_runtime_mark_last_busy(i32 %72)
  %74 = load %struct.kxsd9_state*, %struct.kxsd9_state** %12, align 8
  %75 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pm_runtime_put_autosuspend(i32 %76)
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local %struct.kxsd9_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
