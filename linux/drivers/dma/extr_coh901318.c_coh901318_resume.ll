; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.coh901318_chan = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@COH901318_CX_CFG = common dso_local global i64 0, align 8
@COH901318_CX_CFG_SPACING = common dso_local global i32 0, align 4
@COH901318_CX_CFG_CH_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @coh901318_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coh901318_resume(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.coh901318_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.coh901318_chan* @to_coh901318_chan(%struct.dma_chan* %7)
  store %struct.coh901318_chan* %8, %struct.coh901318_chan** %5, align 8
  %9 = load %struct.coh901318_chan*, %struct.coh901318_chan** %5, align 8
  %10 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.coh901318_chan*, %struct.coh901318_chan** %5, align 8
  %13 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %12, i32 0, i32 1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.coh901318_chan*, %struct.coh901318_chan** %5, align 8
  %17 = call i32 @disable_powersave(%struct.coh901318_chan* %16)
  %18 = load %struct.coh901318_chan*, %struct.coh901318_chan** %5, align 8
  %19 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %1
  %23 = load %struct.coh901318_chan*, %struct.coh901318_chan** %5, align 8
  %24 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @COH901318_CX_CFG, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @COH901318_CX_CFG_SPACING, align 4
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @COH901318_CX_CFG_CH_ENABLE, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.coh901318_chan*, %struct.coh901318_chan** %5, align 8
  %41 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @COH901318_CX_CFG, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* @COH901318_CX_CFG_SPACING, align 4
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %46, %50
  %52 = call i32 @writel(i32 %39, i64 %51)
  %53 = load %struct.coh901318_chan*, %struct.coh901318_chan** %5, align 8
  %54 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %22, %1
  %56 = load %struct.coh901318_chan*, %struct.coh901318_chan** %5, align 8
  %57 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %56, i32 0, i32 1
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret i32 0
}

declare dso_local %struct.coh901318_chan* @to_coh901318_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @disable_powersave(%struct.coh901318_chan*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
