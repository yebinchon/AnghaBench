; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_hw_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_hw_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i64 }
%struct.ep93xx_dma_desc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M2P_INTERRUPT = common dso_local global i64 0, align 8
@M2P_INTERRUPT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"DMA transfer failed! Details:\0A\09cookie\09: %d\0A\09src_addr\09: 0x%08x\0A\09dst_addr\09: 0x%08x\0A\09size\09\09: %zu\0A\00", align 1
@M2P_INTERRUPT_STALL = common dso_local global i32 0, align 4
@M2P_INTERRUPT_NFB = common dso_local global i32 0, align 4
@INTERRUPT_UNKNOWN = common dso_local global i32 0, align 4
@INTERRUPT_NEXT_BUFFER = common dso_local global i32 0, align 4
@M2P_CONTROL = common dso_local global i64 0, align 8
@M2P_CONTROL_STALLINT = common dso_local global i32 0, align 4
@M2P_CONTROL_NFBINT = common dso_local global i32 0, align 4
@INTERRUPT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ep93xx_dma_chan*)* @m2p_hw_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m2p_hw_interrupt(%struct.ep93xx_dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ep93xx_dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ep93xx_dma_desc*, align 8
  store %struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_chan** %3, align 8
  %7 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @M2P_INTERRUPT, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @M2P_INTERRUPT_ERROR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %19 = call %struct.ep93xx_dma_desc* @ep93xx_dma_get_active(%struct.ep93xx_dma_chan* %18)
  store %struct.ep93xx_dma_desc* %19, %struct.ep93xx_dma_desc** %6, align 8
  %20 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @M2P_INTERRUPT, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 1, i64 %24)
  %26 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %27 = call i32 @chan2dev(%struct.ep93xx_dma_chan* %26)
  %28 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %6, align 8
  %29 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %6, align 8
  %33 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %6, align 8
  %36 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %6, align 8
  %39 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %17, %1
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @M2P_INTERRUPT_STALL, align 4
  %45 = load i32, i32* @M2P_INTERRUPT_NFB, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @INTERRUPT_UNKNOWN, align 4
  store i32 %50, i32* %2, align 4
  br label %76

51:                                               ; preds = %42
  %52 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %53 = call i64 @ep93xx_dma_advance_active(%struct.ep93xx_dma_chan* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %57 = call i32 @m2p_fill_desc(%struct.ep93xx_dma_chan* %56)
  %58 = load i32, i32* @INTERRUPT_NEXT_BUFFER, align 4
  store i32 %58, i32* %2, align 4
  br label %76

59:                                               ; preds = %51
  %60 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %61 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @M2P_CONTROL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @M2P_CONTROL_STALLINT, align 4
  %67 = load i32, i32* @M2P_CONTROL_NFBINT, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @m2p_set_control(%struct.ep93xx_dma_chan* %72, i32 %73)
  %75 = load i32, i32* @INTERRUPT_DONE, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %59, %55, %49
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @readl(i64) #1

declare dso_local %struct.ep93xx_dma_desc* @ep93xx_dma_get_active(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @chan2dev(%struct.ep93xx_dma_chan*) #1

declare dso_local i64 @ep93xx_dma_advance_active(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @m2p_fill_desc(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @m2p_set_control(%struct.ep93xx_dma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
