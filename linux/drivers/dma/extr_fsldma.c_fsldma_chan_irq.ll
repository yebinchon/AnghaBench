; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsldma_chan_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsldma_chan_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsldma_chan = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"irq: stat = 0x%x\0A\00", align 1
@FSL_DMA_SR_CB = common dso_local global i32 0, align 4
@FSL_DMA_SR_CH = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@FSL_DMA_SR_TE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Transfer Error!\0A\00", align 1
@FSL_DMA_SR_PE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"irq: Programming Error INT\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Programming Error!\0A\00", align 1
@FSL_DMA_SR_EOCDI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"irq: End-of-Chain link INT\0A\00", align 1
@FSL_DMA_SR_EOLNI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"irq: End-of-link INT\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"irq: controller not idle!\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"irq: unhandled sr 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"irq: Exit\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsldma_chan_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsldma_chan_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsldma_chan*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.fsldma_chan*
  store %struct.fsldma_chan* %9, %struct.fsldma_chan** %6, align 8
  %10 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %11 = call i32 @get_sr(%struct.fsldma_chan* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @set_sr(%struct.fsldma_chan* %12, i32 %13)
  %15 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (%struct.fsldma_chan*, i8*, ...) @chan_dbg(%struct.fsldma_chan* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @FSL_DMA_SR_CB, align 4
  %19 = load i32, i32* @FSL_DMA_SR_CH, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %100

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FSL_DMA_SR_TE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %35 = call i32 (%struct.fsldma_chan*, i8*, ...) @chan_err(%struct.fsldma_chan* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @FSL_DMA_SR_PE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %43 = call i32 (%struct.fsldma_chan*, i8*, ...) @chan_dbg(%struct.fsldma_chan* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @FSL_DMA_SR_PE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %49 = call i64 @get_bcr(%struct.fsldma_chan* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %53 = call i32 (%struct.fsldma_chan*, i8*, ...) @chan_err(%struct.fsldma_chan* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %41
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @FSL_DMA_SR_EOCDI, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %62 = call i32 (%struct.fsldma_chan*, i8*, ...) @chan_dbg(%struct.fsldma_chan* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @FSL_DMA_SR_EOCDI, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %60, %55
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @FSL_DMA_SR_EOLNI, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %74 = call i32 (%struct.fsldma_chan*, i8*, ...) @chan_dbg(%struct.fsldma_chan* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* @FSL_DMA_SR_EOLNI, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %81 = call i32 @dma_is_idle(%struct.fsldma_chan* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %85 = call i32 (%struct.fsldma_chan*, i8*, ...) @chan_err(%struct.fsldma_chan* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (%struct.fsldma_chan*, i8*, ...) @chan_err(%struct.fsldma_chan* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %95 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %94, i32 0, i32 0
  %96 = call i32 @tasklet_schedule(i32* %95)
  %97 = load %struct.fsldma_chan*, %struct.fsldma_chan** %6, align 8
  %98 = call i32 (%struct.fsldma_chan*, i8*, ...) @chan_dbg(%struct.fsldma_chan* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %93, %26
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @get_sr(%struct.fsldma_chan*) #1

declare dso_local i32 @set_sr(%struct.fsldma_chan*, i32) #1

declare dso_local i32 @chan_dbg(%struct.fsldma_chan*, i8*, ...) #1

declare dso_local i32 @chan_err(%struct.fsldma_chan*, i8*, ...) #1

declare dso_local i64 @get_bcr(%struct.fsldma_chan*) #1

declare dso_local i32 @dma_is_idle(%struct.fsldma_chan*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
