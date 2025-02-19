; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_filter_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_filter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dma_chan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.pxad_chan = type { i32, i32 }
%struct.pxad_param = type { i32, i32 }

@pxad_driver = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @pxad_filter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxad_filter_fn(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pxad_chan*, align 8
  %7 = alloca %struct.pxad_param*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = call %struct.pxad_chan* @to_pxad_chan(%struct.dma_chan* %8)
  store %struct.pxad_chan* %9, %struct.pxad_chan** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pxad_param*
  store %struct.pxad_param* %11, %struct.pxad_param** %7, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %13 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pxad_driver, i32 0, i32 0)
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.pxad_param*, %struct.pxad_param** %7, align 8
  %23 = getelementptr inbounds %struct.pxad_param, %struct.pxad_param* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pxad_chan*, %struct.pxad_chan** %6, align 8
  %26 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pxad_param*, %struct.pxad_param** %7, align 8
  %28 = getelementptr inbounds %struct.pxad_param, %struct.pxad_param* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pxad_chan*, %struct.pxad_chan** %6, align 8
  %31 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %21, %20
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.pxad_chan* @to_pxad_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
