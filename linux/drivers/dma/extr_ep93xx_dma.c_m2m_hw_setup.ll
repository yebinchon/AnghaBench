; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2m_hw_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2m_hw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ep93xx_dma_data* }
%struct.ep93xx_dma_data = type { i32, i32 }

@M2M_CONTROL = common dso_local global i64 0, align 8
@M2M_CONTROL_PWSC_SHIFT = common dso_local global i32 0, align 4
@M2M_CONTROL_NO_HDSK = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@M2M_CONTROL_DAH = common dso_local global i32 0, align 4
@M2M_CONTROL_TM_TX = common dso_local global i32 0, align 4
@M2M_CONTROL_RSS_SSPTX = common dso_local global i32 0, align 4
@M2M_CONTROL_SAH = common dso_local global i32 0, align 4
@M2M_CONTROL_TM_RX = common dso_local global i32 0, align 4
@M2M_CONTROL_RSS_SSPRX = common dso_local global i32 0, align 4
@M2M_CONTROL_RSS_IDE = common dso_local global i32 0, align 4
@M2M_CONTROL_PW_16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ep93xx_dma_chan*)* @m2m_hw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m2m_hw_setup(%struct.ep93xx_dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ep93xx_dma_chan*, align 8
  %4 = alloca %struct.ep93xx_dma_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_chan** %3, align 8
  %6 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %8, align 8
  store %struct.ep93xx_dma_data* %9, %struct.ep93xx_dma_data** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %4, align 8
  %11 = icmp ne %struct.ep93xx_dma_data* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @M2M_CONTROL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  store i32 0, i32* %2, align 4
  br label %101

20:                                               ; preds = %1
  %21 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %4, align 8
  %22 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %90 [
    i32 128, label %24
    i32 129, label %56
  ]

24:                                               ; preds = %20
  %25 = load i32, i32* @M2M_CONTROL_PWSC_SHIFT, align 4
  %26 = shl i32 5, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @M2M_CONTROL_NO_HDSK, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %4, align 8
  %31 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load i32, i32* @M2M_CONTROL_DAH, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @M2M_CONTROL_TM_TX, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @M2M_CONTROL_RSS_SSPTX, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %55

45:                                               ; preds = %24
  %46 = load i32, i32* @M2M_CONTROL_SAH, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @M2M_CONTROL_TM_RX, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @M2M_CONTROL_RSS_SSPRX, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %45, %35
  br label %93

56:                                               ; preds = %20
  %57 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %4, align 8
  %58 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load i32, i32* @M2M_CONTROL_PWSC_SHIFT, align 4
  %64 = shl i32 3, %63
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @M2M_CONTROL_DAH, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @M2M_CONTROL_TM_TX, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %80

71:                                               ; preds = %56
  %72 = load i32, i32* @M2M_CONTROL_PWSC_SHIFT, align 4
  %73 = shl i32 2, %72
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @M2M_CONTROL_SAH, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @M2M_CONTROL_TM_RX, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %71, %62
  %81 = load i32, i32* @M2M_CONTROL_NO_HDSK, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @M2M_CONTROL_RSS_IDE, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @M2M_CONTROL_PW_16, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %93

90:                                               ; preds = %20
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %101

93:                                               ; preds = %80, %55
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %96 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @M2M_CONTROL, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %93, %90, %12
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
