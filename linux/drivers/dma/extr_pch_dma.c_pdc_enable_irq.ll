; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32 }
%struct.pch_dma = type { i32 }

@CTL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"pdc_enable_irq: chan %d -> %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*, i32)* @pdc_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_enable_irq(%struct.dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pch_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pch_dma* @to_pd(i32 %10)
  store %struct.pch_dma* %11, %struct.pch_dma** %5, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 8
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %27 = load i32, i32* @CTL2, align 4
  %28 = call i32 @dma_readl(%struct.pch_dma* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %42

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %44 = load i32, i32* @CTL2, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dma_writel(%struct.pch_dma* %43, i32 %44, i32 %45)
  %47 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %48 = call i32 @chan2dev(%struct.dma_chan* %47)
  %49 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %50 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  ret void
}

declare dso_local %struct.pch_dma* @to_pd(i32) #1

declare dso_local i32 @dma_readl(%struct.pch_dma*, i32) #1

declare dso_local i32 @dma_writel(%struct.pch_dma*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
