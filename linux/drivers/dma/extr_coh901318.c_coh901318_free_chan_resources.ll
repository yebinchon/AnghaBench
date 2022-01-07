; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.coh901318_chan = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@COH901318_CX_CFG = common dso_local global i64 0, align 8
@COH901318_CX_CFG_SPACING = common dso_local global i32 0, align 4
@COH901318_CX_CTRL = common dso_local global i64 0, align 8
@COH901318_CX_CTRL_SPACING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @coh901318_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coh901318_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.coh901318_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.coh901318_chan* @to_coh901318_chan(%struct.dma_chan* %6)
  store %struct.coh901318_chan* %7, %struct.coh901318_chan** %3, align 8
  %8 = load %struct.coh901318_chan*, %struct.coh901318_chan** %3, align 8
  %9 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.coh901318_chan*, %struct.coh901318_chan** %3, align 8
  %12 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.coh901318_chan*, %struct.coh901318_chan** %3, align 8
  %16 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @COH901318_CX_CFG, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @COH901318_CX_CFG_SPACING, align 4
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = call i32 @writel(i32 0, i64 %26)
  %28 = load %struct.coh901318_chan*, %struct.coh901318_chan** %3, align 8
  %29 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @COH901318_CX_CTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @COH901318_CX_CTRL_SPACING, align 4
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = call i32 @writel(i32 0, i64 %39)
  %41 = load %struct.coh901318_chan*, %struct.coh901318_chan** %3, align 8
  %42 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.coh901318_chan*, %struct.coh901318_chan** %3, align 8
  %44 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %43, i32 0, i32 1
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %48 = call i32 @coh901318_terminate_all(%struct.dma_chan* %47)
  ret void
}

declare dso_local %struct.coh901318_chan* @to_coh901318_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @coh901318_terminate_all(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
