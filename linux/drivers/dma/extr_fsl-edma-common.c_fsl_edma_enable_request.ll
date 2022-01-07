; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_enable_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_enable_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_chan = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.edma_regs }
%struct.TYPE_7__ = type { i64 }
%struct.edma_regs = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@v1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_edma_chan*)* @fsl_edma_enable_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_edma_enable_request(%struct.fsl_edma_chan* %0) #0 {
  %2 = alloca %struct.fsl_edma_chan*, align 8
  %3 = alloca %struct.edma_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_edma_chan* %0, %struct.fsl_edma_chan** %2, align 8
  %5 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store %struct.edma_regs* %8, %struct.edma_regs** %3, align 8
  %9 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %15 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @v1, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %25 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @EDMA_SEEI_SEEI(i32 %27)
  %29 = load %struct.edma_regs*, %struct.edma_regs** %3, align 8
  %30 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @edma_writeb(%struct.TYPE_8__* %26, i32 %28, i32 %31)
  %33 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %34 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.edma_regs*, %struct.edma_regs** %3, align 8
  %38 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @edma_writeb(%struct.TYPE_8__* %35, i32 %36, i32 %39)
  br label %53

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @EDMA_SEEI_SEEI(i32 %42)
  %44 = load %struct.edma_regs*, %struct.edma_regs** %3, align 8
  %45 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @iowrite8(i32 %43, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.edma_regs*, %struct.edma_regs** %3, align 8
  %50 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @iowrite8(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %41, %23
  ret void
}

declare dso_local i32 @edma_writeb(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @EDMA_SEEI_SEEI(i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
