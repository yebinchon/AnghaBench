; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx25_tcq_priv = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@MX25_ADCQ_SR = common dso_local global i32 0, align 4
@MX25_ADCQ_SR_FRR = common dso_local global i32 0, align 4
@MX25_ADCQ_SR_FUR = common dso_local global i32 0, align 4
@MX25_ADCQ_SR_FOR = common dso_local global i32 0, align 4
@MX25_ADCQ_SR_PD = common dso_local global i32 0, align 4
@MX25_ADCQ_SR_FDRY = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mx25_tcq_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25_tcq_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mx25_tcq_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mx25_tcq_priv*
  store %struct.mx25_tcq_priv* %9, %struct.mx25_tcq_priv** %5, align 8
  %10 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MX25_ADCQ_SR, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %6)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MX25_ADCQ_SR_FRR, align 4
  %18 = load i32, i32* @MX25_ADCQ_SR_FUR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MX25_ADCQ_SR_FOR, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %26 = call i32 @mx25_tcq_re_enable_touch_detection(%struct.mx25_tcq_priv* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MX25_ADCQ_SR_PD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %34 = call i32 @mx25_tcq_disable_touch_irq(%struct.mx25_tcq_priv* %33)
  %35 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %36 = call i32 @mx25_tcq_force_queue_start(%struct.mx25_tcq_priv* %35)
  %37 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %38 = call i32 @mx25_tcq_enable_fifo_irq(%struct.mx25_tcq_priv* %37)
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MX25_ADCQ_SR_FDRY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %46 = call i32 @mx25_tcq_disable_fifo_irq(%struct.mx25_tcq_priv* %45)
  %47 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %50 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MX25_ADCQ_SR, align 4
  %53 = load i32, i32* @MX25_ADCQ_SR_FRR, align 4
  %54 = load i32, i32* @MX25_ADCQ_SR_FUR, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @MX25_ADCQ_SR_FOR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @MX25_ADCQ_SR_PD, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @MX25_ADCQ_SR_FRR, align 4
  %61 = load i32, i32* @MX25_ADCQ_SR_FUR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @MX25_ADCQ_SR_FOR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @MX25_ADCQ_SR_PD, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %59, i32 %66)
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mx25_tcq_re_enable_touch_detection(%struct.mx25_tcq_priv*) #1

declare dso_local i32 @mx25_tcq_disable_touch_irq(%struct.mx25_tcq_priv*) #1

declare dso_local i32 @mx25_tcq_force_queue_start(%struct.mx25_tcq_priv*) #1

declare dso_local i32 @mx25_tcq_enable_fifo_irq(%struct.mx25_tcq_priv*) #1

declare dso_local i32 @mx25_tcq_disable_fifo_irq(%struct.mx25_tcq_priv*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
