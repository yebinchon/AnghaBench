; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ixp4xx.c_ixp4xx_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ixp4xx.c_ixp4xx_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.ixp4xx_irq = type { i64, i64 }

@IXP4XX_ICMR2 = common dso_local global i64 0, align 8
@IXP4XX_ICMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ixp4xx_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixp4xx_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.ixp4xx_irq*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.ixp4xx_irq* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.ixp4xx_irq* %6, %struct.ixp4xx_irq** %3, align 8
  %7 = load %struct.ixp4xx_irq*, %struct.ixp4xx_irq** %3, align 8
  %8 = getelementptr inbounds %struct.ixp4xx_irq, %struct.ixp4xx_irq* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 32
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load %struct.ixp4xx_irq*, %struct.ixp4xx_irq** %3, align 8
  %18 = getelementptr inbounds %struct.ixp4xx_irq, %struct.ixp4xx_irq* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IXP4XX_ICMR2, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @__raw_readl(i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %24 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 32
  %27 = call i32 @BIT(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.ixp4xx_irq*, %struct.ixp4xx_irq** %3, align 8
  %32 = getelementptr inbounds %struct.ixp4xx_irq, %struct.ixp4xx_irq* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IXP4XX_ICMR2, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @__raw_writel(i32 %30, i64 %35)
  br label %57

37:                                               ; preds = %11, %1
  %38 = load %struct.ixp4xx_irq*, %struct.ixp4xx_irq** %3, align 8
  %39 = getelementptr inbounds %struct.ixp4xx_irq, %struct.ixp4xx_irq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IXP4XX_ICMR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @__raw_readl(i64 %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %45 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.ixp4xx_irq*, %struct.ixp4xx_irq** %3, align 8
  %52 = getelementptr inbounds %struct.ixp4xx_irq, %struct.ixp4xx_irq* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IXP4XX_ICMR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @__raw_writel(i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %37, %16
  ret void
}

declare dso_local %struct.ixp4xx_irq* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
