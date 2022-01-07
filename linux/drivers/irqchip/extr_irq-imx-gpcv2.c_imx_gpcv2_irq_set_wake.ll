; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imx-gpcv2.c_imx_gpcv2_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imx-gpcv2.c_imx_gpcv2_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, %struct.gpcv2_irqchip_data* }
%struct.gpcv2_irqchip_data = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @imx_gpcv2_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_gpcv2_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpcv2_irqchip_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 1
  %12 = load %struct.gpcv2_irqchip_data*, %struct.gpcv2_irqchip_data** %11, align 8
  store %struct.gpcv2_irqchip_data* %12, %struct.gpcv2_irqchip_data** %5, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %15, 32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.gpcv2_irqchip_data*, %struct.gpcv2_irqchip_data** %5, align 8
  %18 = getelementptr inbounds %struct.gpcv2_irqchip_data, %struct.gpcv2_irqchip_data* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = srem i32 %23, 32
  %25 = call i32 @BIT(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.gpcv2_irqchip_data*, %struct.gpcv2_irqchip_data** %5, align 8
  %27 = getelementptr inbounds %struct.gpcv2_irqchip_data, %struct.gpcv2_irqchip_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  br label %44

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %41, %42
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %39, %35 ], [ %43, %40 ]
  %46 = load %struct.gpcv2_irqchip_data*, %struct.gpcv2_irqchip_data** %5, align 8
  %47 = getelementptr inbounds %struct.gpcv2_irqchip_data, %struct.gpcv2_irqchip_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load %struct.gpcv2_irqchip_data*, %struct.gpcv2_irqchip_data** %5, align 8
  %53 = getelementptr inbounds %struct.gpcv2_irqchip_data, %struct.gpcv2_irqchip_data* %52, i32 0, i32 1
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @raw_spin_unlock_irqrestore(i32* %53, i64 %54)
  ret i32 0
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
