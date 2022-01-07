; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.xgene_dma_chan = type { i64, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to allocate descriptor pool\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Allocate descriptor pool\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @xgene_dma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_dma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.xgene_dma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %6 = call %struct.xgene_dma_chan* @to_dma_chan(%struct.dma_chan* %5)
  store %struct.xgene_dma_chan* %6, %struct.xgene_dma_chan** %4, align 8
  %7 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %8 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %17 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @dma_pool_create(i32 %15, i32 %18, i32 4, i32 0, i32 0)
  %20 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %21 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %23 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %12
  %27 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %28 = call i32 @chan_err(%struct.xgene_dma_chan* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %34

31:                                               ; preds = %12
  %32 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %4, align 8
  %33 = call i32 @chan_dbg(%struct.xgene_dma_chan* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %26, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.xgene_dma_chan* @to_dma_chan(%struct.dma_chan*) #1

declare dso_local i64 @dma_pool_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @chan_err(%struct.xgene_dma_chan*, i8*) #1

declare dso_local i32 @chan_dbg(%struct.xgene_dma_chan*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
