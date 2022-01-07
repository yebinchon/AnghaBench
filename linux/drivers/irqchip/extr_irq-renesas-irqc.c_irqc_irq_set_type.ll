; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-irqc.c_irqc_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-irqc.c_irqc_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irqc_priv = type { i64, i32* }

@irqc_sense = common dso_local global i8* null, align 8
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sense\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @irqc_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irqc_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irqc_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call %struct.irqc_priv* @irq_data_to_priv(%struct.irq_data* %10)
  store %struct.irqc_priv* %11, %struct.irqc_priv** %6, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call i32 @irqd_to_hwirq(%struct.irq_data* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** @irqc_sense, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  %21 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %22 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @irqc_dbg(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = load i8, i8* %8, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %2
  %34 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %35 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @IRQC_CONFIG(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @ioread32(i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, -64
  store i32 %42, i32* %9, align 4
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.irqc_priv*, %struct.irqc_priv** %6, align 8
  %49 = getelementptr inbounds %struct.irqc_priv, %struct.irqc_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @IRQC_CONFIG(i32 %51)
  %53 = add nsw i64 %50, %52
  %54 = call i32 @iowrite32(i32 %47, i64 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %33, %30
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.irqc_priv* @irq_data_to_priv(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @irqc_dbg(i32*, i8*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @IRQC_CONFIG(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
