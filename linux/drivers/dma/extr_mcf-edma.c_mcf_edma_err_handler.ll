; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mcf-edma.c_mcf_edma_err_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mcf-edma.c_mcf_edma_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_engine = type { %struct.TYPE_2__*, %struct.edma_regs }
%struct.TYPE_2__ = type { i32, i8* }
%struct.edma_regs = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@EDMA_CHANNELS = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i8* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcf_edma_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcf_edma_err_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsl_edma_engine*, align 8
  %7 = alloca %struct.edma_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.fsl_edma_engine*
  store %struct.fsl_edma_engine* %11, %struct.fsl_edma_engine** %6, align 8
  %12 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %13 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %12, i32 0, i32 1
  store %struct.edma_regs* %13, %struct.edma_regs** %7, align 8
  %14 = load %struct.edma_regs*, %struct.edma_regs** %7, align 8
  %15 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ioread32(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %127

22:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %64, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @EDMA_CHANNELS, align 4
  %26 = sdiv i32 %25, 2
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %28
  %35 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %36 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = call i32 @fsl_edma_disable_request(%struct.TYPE_2__* %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @EDMA_CERR_CERR(i32 %42)
  %44 = load %struct.edma_regs*, %struct.edma_regs** %7, align 8
  %45 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @iowrite8(i32 %43, i32 %46)
  %48 = load i8*, i8** @DMA_ERROR, align 8
  %49 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %50 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i8* %48, i8** %55, align 8
  %56 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %57 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %34, %28
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %23

67:                                               ; preds = %23
  %68 = load %struct.edma_regs*, %struct.edma_regs** %7, align 8
  %69 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ioread32(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @IRQ_NONE, align 4
  store i32 %75, i32* %3, align 4
  br label %127

76:                                               ; preds = %67
  %77 = load i32, i32* @EDMA_CHANNELS, align 4
  %78 = sdiv i32 %77, 2
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %122, %76
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @EDMA_CHANNELS, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %125

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @EDMA_CHANNELS, align 4
  %87 = sdiv i32 %86, 2
  %88 = sub i32 %85, %87
  %89 = call i32 @BIT(i32 %88)
  %90 = and i32 %84, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %121

92:                                               ; preds = %83
  %93 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %94 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = call i32 @fsl_edma_disable_request(%struct.TYPE_2__* %98)
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @EDMA_CERR_CERR(i32 %100)
  %102 = load %struct.edma_regs*, %struct.edma_regs** %7, align 8
  %103 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @iowrite8(i32 %101, i32 %104)
  %106 = load i8*, i8** @DMA_ERROR, align 8
  %107 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %108 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i8* %106, i8** %113, align 8
  %114 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %115 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %92, %83
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %79

125:                                              ; preds = %79
  %126 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %74, %20
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fsl_edma_disable_request(%struct.TYPE_2__*) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @EDMA_CERR_CERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
