; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma = type { i8*, i32, i32, %struct.xgene_dma*, i32 }
%struct.xgene_dma_chan = type { i8*, i32, i32, %struct.xgene_dma_chan*, i32 }

@xgene_dma_err_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dma_error\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register error IRQ %d\0A\00", align 1
@XGENE_DMA_MAX_CHANNEL = common dso_local global i32 0, align 4
@IRQ_DISABLE_UNLAZY = common dso_local global i32 0, align 4
@xgene_dma_chan_ring_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to register Rx IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_dma*)* @xgene_dma_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_dma_request_irqs(%struct.xgene_dma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_dma*, align 8
  %4 = alloca %struct.xgene_dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgene_dma* %0, %struct.xgene_dma** %3, align 8
  %8 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %12 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @xgene_dma_err_isr, align 4
  %15 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %16 = bitcast %struct.xgene_dma* %15 to %struct.xgene_dma_chan*
  %17 = call i32 @devm_request_irq(i32 %10, i32 %13, i32 %14, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.xgene_dma_chan* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %22 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %25 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %111

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %107, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @XGENE_DMA_MAX_CHANNEL, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %110

34:                                               ; preds = %30
  %35 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %36 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %35, i32 0, i32 3
  %37 = load %struct.xgene_dma*, %struct.xgene_dma** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %37, i64 %39
  %41 = bitcast %struct.xgene_dma* %40 to %struct.xgene_dma_chan*
  store %struct.xgene_dma_chan* %41, %struct.xgene_dma_chan** %4, align 8
  %42 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %43 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IRQ_DISABLE_UNLAZY, align 4
  %46 = call i32 @irq_set_status_flags(i32 %44, i32 %45)
  %47 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %48 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %51 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @xgene_dma_chan_ring_isr, align 4
  %54 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %55 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %58 = call i32 @devm_request_irq(i32 %49, i32 %52, i32 %53, i32 0, i8* %56, %struct.xgene_dma_chan* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %106

61:                                               ; preds = %34
  %62 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %63 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %64 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @chan_err(%struct.xgene_dma_chan* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %68 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %71 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %74 = bitcast %struct.xgene_dma* %73 to %struct.xgene_dma_chan*
  %75 = call i32 @devm_free_irq(i32 %69, i32 %72, %struct.xgene_dma_chan* %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %101, %61
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load %struct.xgene_dma*, %struct.xgene_dma** %3, align 8
  %82 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %81, i32 0, i32 3
  %83 = load %struct.xgene_dma*, %struct.xgene_dma** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %83, i64 %85
  %87 = bitcast %struct.xgene_dma* %86 to %struct.xgene_dma_chan*
  store %struct.xgene_dma_chan* %87, %struct.xgene_dma_chan** %4, align 8
  %88 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %89 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IRQ_DISABLE_UNLAZY, align 4
  %92 = call i32 @irq_clear_status_flags(i32 %90, i32 %91)
  %93 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %94 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %97 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %100 = call i32 @devm_free_irq(i32 %95, i32 %98, %struct.xgene_dma_chan* %99)
  br label %101

101:                                              ; preds = %80
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %76

104:                                              ; preds = %76
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %111

106:                                              ; preds = %34
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %30

110:                                              ; preds = %30
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %104, %20
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.xgene_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @chan_err(%struct.xgene_dma_chan*, i8*, i32) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.xgene_dma_chan*) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
