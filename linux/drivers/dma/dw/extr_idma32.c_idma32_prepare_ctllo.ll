; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_prepare_ctllo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_prepare_ctllo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chan = type { i32, %struct.dma_slave_config }
%struct.dma_slave_config = type { i32, i32 }

@IDMA32_MSIZE_8 = common dso_local global i32 0, align 4
@DWC_CTLL_LLP_D_EN = common dso_local global i32 0, align 4
@DWC_CTLL_LLP_S_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_dma_chan*)* @idma32_prepare_ctllo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idma32_prepare_ctllo(%struct.dw_dma_chan* %0) #0 {
  %2 = alloca %struct.dw_dma_chan*, align 8
  %3 = alloca %struct.dma_slave_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %2, align 8
  %7 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %7, i32 0, i32 1
  store %struct.dma_slave_config* %8, %struct.dma_slave_config** %3, align 8
  %9 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @is_slave_direction(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.dma_slave_config*, %struct.dma_slave_config** %3, align 8
  %17 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @IDMA32_MSIZE_8, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %18, %15 ], [ %20, %19 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.dma_slave_config*, %struct.dma_slave_config** %3, align 8
  %27 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @IDMA32_MSIZE_8, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %28, %25 ], [ %30, %29 ]
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @DWC_CTLL_LLP_D_EN, align 4
  %34 = load i32, i32* @DWC_CTLL_LLP_S_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @DWC_CTLL_DST_MSIZE(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @DWC_CTLL_SRC_MSIZE(i32 %39)
  %41 = or i32 %38, %40
  ret i32 %41
}

declare dso_local i32 @is_slave_direction(i32) #1

declare dso_local i32 @DWC_CTLL_DST_MSIZE(i32) #1

declare dso_local i32 @DWC_CTLL_SRC_MSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
