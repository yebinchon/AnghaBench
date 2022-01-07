; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_read_s3c64xx_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_read_s3c64xx_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.exynos_adc = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*, i32)* }

@ADC_S3C2410_TSC_PULL_UP_DISABLE = common dso_local global i32 0, align 4
@ADC_TSC_AUTOPST = common dso_local global i32 0, align 4
@ADC_S3C2410_MUX_TS = common dso_local global i32 0, align 4
@EXYNOS_ADC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Conversion timed out! Resetting\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32*, i32*)* @exynos_read_s3c64xx_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_read_s3c64xx_ts(%struct.iio_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.exynos_adc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.exynos_adc* @iio_priv(%struct.iio_dev* %10)
  store %struct.exynos_adc* %11, %struct.exynos_adc** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %13 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %16 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %18 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %17, i32 0, i32 4
  %19 = call i32 @reinit_completion(i32* %18)
  %20 = load i32, i32* @ADC_S3C2410_TSC_PULL_UP_DISABLE, align 4
  %21 = load i32, i32* @ADC_TSC_AUTOPST, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %24 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ADC_V1_TSC(i32 %25)
  %27 = call i32 @writel(i32 %22, i32 %26)
  %28 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %29 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (%struct.exynos_adc*, i32)*, i32 (%struct.exynos_adc*, i32)** %31, align 8
  %33 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %34 = load i32, i32* @ADC_S3C2410_MUX_TS, align 4
  %35 = call i32 %32(%struct.exynos_adc* %33, i32 %34)
  %36 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %37 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %36, i32 0, i32 4
  %38 = load i32, i32* @EXYNOS_ADC_TIMEOUT, align 4
  %39 = call i64 @wait_for_completion_timeout(i32* %37, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %3
  %43 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 1
  %45 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %47 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*)** %49, align 8
  %51 = icmp ne i32 (%struct.exynos_adc*)* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %54 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*)** %56, align 8
  %58 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %59 = call i32 %57(%struct.exynos_adc* %58)
  br label %60

60:                                               ; preds = %52, %42
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %72

63:                                               ; preds = %3
  %64 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %65 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %69 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %63, %60
  %73 = load %struct.exynos_adc*, %struct.exynos_adc** %7, align 8
  %74 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local %struct.exynos_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @ADC_V1_TSC(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
