; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_reg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_reg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.iproc_adc_priv = type { i32 }

@IPROC_REGCTL1 = common dso_local global i32 0, align 4
@IPROC_REGCTL2 = common dso_local global i32 0, align 4
@IPROC_INTERRUPT_THRES = common dso_local global i32 0, align 4
@IPROC_INTERRUPT_MASK = common dso_local global i32 0, align 4
@IPROC_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@IPROC_CONTROLLER_STATUS = common dso_local global i32 0, align 4
@IPROC_ANALOG_CONTROL = common dso_local global i32 0, align 4
@IPROC_AUX_DATA = common dso_local global i32 0, align 4
@IPROC_SOFT_BYPASS_CONTROL = common dso_local global i32 0, align 4
@IPROC_SOFT_BYPASS_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @iproc_adc_reg_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_adc_reg_dump(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iproc_adc_priv*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %6 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %8 = call %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev* %7)
  store %struct.iproc_adc_priv* %8, %struct.iproc_adc_priv** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %11 = load i32, i32* @IPROC_REGCTL1, align 4
  %12 = call i32 @iproc_adc_dbg_reg(%struct.device* %9, %struct.iproc_adc_priv* %10, i32 %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %15 = load i32, i32* @IPROC_REGCTL2, align 4
  %16 = call i32 @iproc_adc_dbg_reg(%struct.device* %13, %struct.iproc_adc_priv* %14, i32 %15)
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %19 = load i32, i32* @IPROC_INTERRUPT_THRES, align 4
  %20 = call i32 @iproc_adc_dbg_reg(%struct.device* %17, %struct.iproc_adc_priv* %18, i32 %19)
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %23 = load i32, i32* @IPROC_INTERRUPT_MASK, align 4
  %24 = call i32 @iproc_adc_dbg_reg(%struct.device* %21, %struct.iproc_adc_priv* %22, i32 %23)
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %27 = load i32, i32* @IPROC_INTERRUPT_STATUS, align 4
  %28 = call i32 @iproc_adc_dbg_reg(%struct.device* %25, %struct.iproc_adc_priv* %26, i32 %27)
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %31 = load i32, i32* @IPROC_CONTROLLER_STATUS, align 4
  %32 = call i32 @iproc_adc_dbg_reg(%struct.device* %29, %struct.iproc_adc_priv* %30, i32 %31)
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %35 = load i32, i32* @IPROC_ANALOG_CONTROL, align 4
  %36 = call i32 @iproc_adc_dbg_reg(%struct.device* %33, %struct.iproc_adc_priv* %34, i32 %35)
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %39 = load i32, i32* @IPROC_AUX_DATA, align 4
  %40 = call i32 @iproc_adc_dbg_reg(%struct.device* %37, %struct.iproc_adc_priv* %38, i32 %39)
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %43 = load i32, i32* @IPROC_SOFT_BYPASS_CONTROL, align 4
  %44 = call i32 @iproc_adc_dbg_reg(%struct.device* %41, %struct.iproc_adc_priv* %42, i32 %43)
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %47 = load i32, i32* @IPROC_SOFT_BYPASS_DATA, align 4
  %48 = call i32 @iproc_adc_dbg_reg(%struct.device* %45, %struct.iproc_adc_priv* %46, i32 %47)
  ret void
}

declare dso_local %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iproc_adc_dbg_reg(%struct.device*, %struct.iproc_adc_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
