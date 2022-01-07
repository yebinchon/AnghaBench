; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imx-irqsteer.c_imx_irqsteer_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imx-irqsteer.c_imx_irqsteer_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, %struct.irqsteer_data* }
%struct.irqsteer_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @imx_irqsteer_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_irqsteer_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irqsteer_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 1
  %9 = load %struct.irqsteer_data*, %struct.irqsteer_data** %8, align 8
  store %struct.irqsteer_data* %9, %struct.irqsteer_data** %3, align 8
  %10 = load %struct.irqsteer_data*, %struct.irqsteer_data** %3, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @imx_irqsteer_get_reg_index(%struct.irqsteer_data* %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.irqsteer_data*, %struct.irqsteer_data** %3, align 8
  %16 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.irqsteer_data*, %struct.irqsteer_data** %3, align 8
  %20 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.irqsteer_data*, %struct.irqsteer_data** %3, align 8
  %24 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @CHANMASK(i32 %22, i32 %25)
  %27 = add nsw i64 %21, %26
  %28 = call i32 @readl_relaxed(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %30 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = srem i32 %31, 32
  %33 = call i32 @BIT(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.irqsteer_data*, %struct.irqsteer_data** %3, align 8
  %38 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.irqsteer_data*, %struct.irqsteer_data** %3, align 8
  %42 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @CHANMASK(i32 %40, i32 %43)
  %45 = add nsw i64 %39, %44
  %46 = call i32 @writel_relaxed(i32 %36, i64 %45)
  %47 = load %struct.irqsteer_data*, %struct.irqsteer_data** %3, align 8
  %48 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @raw_spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local i32 @imx_irqsteer_get_reg_index(%struct.irqsteer_data*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @CHANMASK(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
