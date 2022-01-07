; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_re_enable_touch_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_re_enable_touch_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx25_tcq_priv = type { i32, i32 }

@MX25_TSC_TICR = common dso_local global i32 0, align 4
@MX25_PRECHARGE_VALUE = common dso_local global i32 0, align 4
@MX25_TOUCH_DETECT_VALUE = common dso_local global i32 0, align 4
@MX25_ADCQ_CFG_IGS = common dso_local global i32 0, align 4
@MX25_ADCQ_SR = common dso_local global i32 0, align 4
@MX25_ADCQ_SR_PD = common dso_local global i32 0, align 4
@MX25_ADCQ_MR = common dso_local global i32 0, align 4
@MX25_ADCQ_MR_PD_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mx25_tcq_priv*)* @mx25_tcq_re_enable_touch_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx25_tcq_re_enable_touch_detection(%struct.mx25_tcq_priv* %0) #0 {
  %2 = alloca %struct.mx25_tcq_priv*, align 8
  store %struct.mx25_tcq_priv* %0, %struct.mx25_tcq_priv** %2, align 8
  %3 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %2, align 8
  %4 = call i32 @mx25_tcq_force_queue_stop(%struct.mx25_tcq_priv* %3)
  %5 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MX25_TSC_TICR, align 4
  %9 = load i32, i32* @MX25_PRECHARGE_VALUE, align 4
  %10 = call i32 @regmap_write(i32 %7, i32 %8, i32 %9)
  %11 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %2, align 8
  %12 = call i32 @mx25_tcq_fifo_reset(%struct.mx25_tcq_priv* %11)
  %13 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MX25_TSC_TICR, align 4
  %17 = load i32, i32* @MX25_TOUCH_DETECT_VALUE, align 4
  %18 = load i32, i32* @MX25_ADCQ_CFG_IGS, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @regmap_write(i32 %15, i32 %16, i32 %19)
  %21 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %2, align 8
  %22 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MX25_ADCQ_SR, align 4
  %25 = load i32, i32* @MX25_ADCQ_SR_PD, align 4
  %26 = load i32, i32* @MX25_ADCQ_SR_PD, align 4
  %27 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %2, align 8
  %29 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MX25_ADCQ_MR, align 4
  %32 = load i32, i32* @MX25_ADCQ_MR_PD_IRQ, align 4
  %33 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %2, align 8
  %35 = call i32 @mx25_tcq_enable_touch_irq(%struct.mx25_tcq_priv* %34)
  ret void
}

declare dso_local i32 @mx25_tcq_force_queue_stop(%struct.mx25_tcq_priv*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mx25_tcq_fifo_reset(%struct.mx25_tcq_priv*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mx25_tcq_enable_touch_irq(%struct.mx25_tcq_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
