; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_au1xxx-ide.c_auide_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_au1xxx-ide.c_auide_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MEM_STCFG2 = common dso_local global i32 0, align 4
@MEM_STTIME2 = common dso_local global i32 0, align 4
@MDMA0 = common dso_local global i32 0, align 4
@MDMA1 = common dso_local global i32 0, align 4
@MDMA2 = common dso_local global i32 0, align 4
@SBC_IDE_MDMA0_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_MDMA0_TOECS = common dso_local global i32 0, align 4
@SBC_IDE_MDMA1_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_MDMA1_TOECS = common dso_local global i32 0, align 4
@SBC_IDE_MDMA2_TCSOE = common dso_local global i32 0, align 4
@SBC_IDE_MDMA2_TOECS = common dso_local global i32 0, align 4
@TCSOE_MASK = common dso_local global i32 0, align 4
@TOECS_MASK = common dso_local global i32 0, align 4
@TS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @auide_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auide_set_dma_mode(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @MEM_STCFG2, align 4
  %8 = call i32 @au_readl(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %12 [
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MEM_STTIME2, align 4
  %15 = call i32 @au_writel(i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MEM_STCFG2, align 4
  %18 = call i32 @au_writel(i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @au_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
