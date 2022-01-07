; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx25_tcq_priv = type { i32, i32 }

@TSC_MAX_SAMPLES = common dso_local global i32 0, align 4
@MX25_ADCQ_SR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MX25_ADCQ_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mx25_tcq_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25_tcq_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mx25_tcq_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.mx25_tcq_priv*
  store %struct.mx25_tcq_priv* %14, %struct.mx25_tcq_priv** %6, align 8
  %15 = load i32, i32* @TSC_MAX_SAMPLES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MX25_ADCQ_SR, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %10)
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @MX25_ADCQ_SR_FDN(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %6, align 8
  %28 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = urem i32 %26, %29
  %31 = load i32, i32* %9, align 4
  %32 = sub i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %59

37:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %6, align 8
  %44 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MX25_ADCQ_FIFO, align 4
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %18, i64 %48
  %50 = call i32 @regmap_read(i32 %45, i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %38

54:                                               ; preds = %38
  %55 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @mx25_tcq_create_event_for_4wire(%struct.mx25_tcq_priv* %55, i32* %18, i32 %56)
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %54, %35
  %60 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

declare dso_local i32 @MX25_ADCQ_SR_FDN(i32) #2

declare dso_local i32 @mx25_tcq_create_event_for_4wire(%struct.mx25_tcq_priv*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
