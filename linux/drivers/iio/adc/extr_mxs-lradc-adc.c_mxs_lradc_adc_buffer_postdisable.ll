; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_buffer_postdisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_buffer_postdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.mxs_lradc_adc = type { i64, %struct.mxs_lradc* }
%struct.mxs_lradc = type { i32, i64 }

@LRADC_DELAY_TRIGGER_LRADCS_MASK = common dso_local global i32 0, align 4
@LRADC_DELAY_KICK = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@LRADC_CTRL0 = common dso_local global i64 0, align 8
@IMX28_LRADC = common dso_local global i64 0, align 8
@LRADC_CTRL1_LRADC_IRQ_EN_OFFSET = common dso_local global i32 0, align 4
@LRADC_CTRL1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @mxs_lradc_adc_buffer_postdisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_adc_buffer_postdisable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.mxs_lradc_adc*, align 8
  %4 = alloca %struct.mxs_lradc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %6 = call %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev* %5)
  store %struct.mxs_lradc_adc* %6, %struct.mxs_lradc_adc** %3, align 8
  %7 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %3, align 8
  %8 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %7, i32 0, i32 1
  %9 = load %struct.mxs_lradc*, %struct.mxs_lradc** %8, align 8
  store %struct.mxs_lradc* %9, %struct.mxs_lradc** %4, align 8
  %10 = load i32, i32* @LRADC_DELAY_TRIGGER_LRADCS_MASK, align 4
  %11 = load i32, i32* @LRADC_DELAY_KICK, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %3, align 8
  %14 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @LRADC_DELAY(i32 0)
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %12, i64 %19)
  %21 = load %struct.mxs_lradc*, %struct.mxs_lradc** %4, align 8
  %22 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %3, align 8
  %25 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LRADC_CTRL0, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %23, i64 %30)
  %32 = load %struct.mxs_lradc*, %struct.mxs_lradc** %4, align 8
  %33 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IMX28_LRADC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %1
  %38 = load %struct.mxs_lradc*, %struct.mxs_lradc** %4, align 8
  %39 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @LRADC_CTRL1_LRADC_IRQ_EN_OFFSET, align 4
  %42 = shl i32 %40, %41
  %43 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %3, align 8
  %44 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LRADC_CTRL1, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %42, i64 %49)
  br label %51

51:                                               ; preds = %37, %1
  ret i32 0
}

declare dso_local %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @LRADC_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
