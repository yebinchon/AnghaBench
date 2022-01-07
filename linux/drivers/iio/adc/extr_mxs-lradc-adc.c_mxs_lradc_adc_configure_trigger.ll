; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_configure_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_configure_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.mxs_lradc_adc = type { i64 }

@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@LRADC_DELAY_KICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @mxs_lradc_adc_configure_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_adc_configure_trigger(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.mxs_lradc_adc*, align 8
  %7 = alloca i64, align 8
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %9 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %8)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev* %10)
  store %struct.mxs_lradc_adc* %11, %struct.mxs_lradc_adc** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  br label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* @LRADC_DELAY_KICK, align 4
  %21 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %6, align 8
  %22 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @LRADC_DELAY(i32 0)
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %23, %26
  %28 = call i32 @writel(i32 %20, i64 %27)
  ret i32 0
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @LRADC_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
