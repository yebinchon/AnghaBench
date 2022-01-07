; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rockchip_saradc.c_rockchip_saradc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rockchip_saradc.c_rockchip_saradc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.iio_chan_spec = type { i32 }
%struct.rockchip_saradc = type { i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@SARADC_DLY_PU_SOC = common dso_local global i64 0, align 8
@SARADC_CTRL_POWER_CTRL = common dso_local global i32 0, align 4
@SARADC_CTRL_CHN_MASK = common dso_local global i32 0, align 4
@SARADC_CTRL_IRQ_ENABLE = common dso_local global i32 0, align 4
@SARADC_CTRL = common dso_local global i64 0, align 8
@SARADC_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to get voltage\0A\00", align 1
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @rockchip_saradc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_saradc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rockchip_saradc*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.rockchip_saradc* @iio_priv(%struct.iio_dev* %14)
  store %struct.rockchip_saradc* %15, %struct.rockchip_saradc** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %94 [
    i64 129, label %17
    i64 128, label %71
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %12, align 8
  %22 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %21, i32 0, i32 4
  %23 = call i32 @reinit_completion(i32* %22)
  %24 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %12, align 8
  %25 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SARADC_DLY_PU_SOC, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 8, i64 %28)
  %30 = load i32, i32* @SARADC_CTRL_POWER_CTRL, align 4
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SARADC_CTRL_CHN_MASK, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %30, %35
  %37 = load i32, i32* @SARADC_CTRL_IRQ_ENABLE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %12, align 8
  %40 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SARADC_CTRL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %12, align 8
  %46 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %45, i32 0, i32 4
  %47 = load i32, i32* @SARADC_TIMEOUT, align 4
  %48 = call i32 @wait_for_completion_timeout(i32* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %17
  %51 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %12, align 8
  %52 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SARADC_CTRL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel_relaxed(i32 0, i64 %55)
  %57 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %97

62:                                               ; preds = %17
  %63 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %12, align 8
  %64 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %70, i32* %6, align 4
  br label %97

71:                                               ; preds = %5
  %72 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %12, align 8
  %73 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @regulator_get_voltage(i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %6, align 4
  br label %97

83:                                               ; preds = %71
  %84 = load i32, i32* %13, align 4
  %85 = sdiv i32 %84, 1000
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %12, align 8
  %88 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %93, i32* %6, align 4
  br label %97

94:                                               ; preds = %5
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %83, %78, %62, %50
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.rockchip_saradc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
