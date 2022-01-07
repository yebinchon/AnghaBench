; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.virt_dma_chan = type { i32 }
%struct.virt_dma_desc = type { i32 }
%struct.uniphier_mdmac_chan = type { %struct.uniphier_mdmac_desc*, i64 }
%struct.uniphier_mdmac_desc = type { i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@UNIPHIER_MDMAC_CH_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @uniphier_mdmac_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_mdmac_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.virt_dma_chan*, align 8
  %9 = alloca %struct.virt_dma_desc*, align 8
  %10 = alloca %struct.uniphier_mdmac_chan*, align 8
  %11 = alloca %struct.uniphier_mdmac_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  store %struct.uniphier_mdmac_desc* null, %struct.uniphier_mdmac_desc** %11, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %18 = call i32 @dma_cookie_status(%struct.dma_chan* %15, i64 %16, %struct.dma_tx_state* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @DMA_COMPLETE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %24 = icmp ne %struct.dma_tx_state* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  br label %112

27:                                               ; preds = %22
  %28 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %29 = call %struct.virt_dma_chan* @to_virt_chan(%struct.dma_chan* %28)
  store %struct.virt_dma_chan* %29, %struct.virt_dma_chan** %8, align 8
  %30 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %8, align 8
  %31 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %30, i32 0, i32 0
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %8, align 8
  %35 = call %struct.uniphier_mdmac_chan* @to_uniphier_mdmac_chan(%struct.virt_dma_chan* %34)
  store %struct.uniphier_mdmac_chan* %35, %struct.uniphier_mdmac_chan** %10, align 8
  %36 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %10, align 8
  %37 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %36, i32 0, i32 0
  %38 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %37, align 8
  %39 = icmp ne %struct.uniphier_mdmac_desc* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %27
  %41 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %10, align 8
  %42 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %41, i32 0, i32 0
  %43 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %42, align 8
  %44 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %10, align 8
  %52 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UNIPHIER_MDMAC_CH_SIZE, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  %57 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %58 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %10, align 8
  %60 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %59, i32 0, i32 0
  %61 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %60, align 8
  store %struct.uniphier_mdmac_desc* %61, %struct.uniphier_mdmac_desc** %11, align 8
  br label %62

62:                                               ; preds = %50, %40, %27
  %63 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %11, align 8
  %64 = icmp ne %struct.uniphier_mdmac_desc* %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %8, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.virt_dma_chan* %66, i64 %67)
  store %struct.virt_dma_desc* %68, %struct.virt_dma_desc** %9, align 8
  %69 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %70 = icmp ne %struct.virt_dma_desc* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %73 = call %struct.uniphier_mdmac_desc* @to_uniphier_mdmac_desc(%struct.virt_dma_desc* %72)
  store %struct.uniphier_mdmac_desc* %73, %struct.uniphier_mdmac_desc** %11, align 8
  br label %74

74:                                               ; preds = %71, %65
  br label %75

75:                                               ; preds = %74, %62
  %76 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %11, align 8
  %77 = icmp ne %struct.uniphier_mdmac_desc* %76, null
  br i1 %77, label %78, label %106

78:                                               ; preds = %75
  %79 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %11, align 8
  %80 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %102, %78
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %11, align 8
  %85 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %11, align 8
  %90 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i64 @sg_dma_len(i32* %94)
  %96 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %97 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %82

105:                                              ; preds = %82
  br label %106

106:                                              ; preds = %105, %75
  %107 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %8, align 8
  %108 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %107, i32 0, i32 0
  %109 = load i64, i64* %13, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %106, %25
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local %struct.virt_dma_chan* @to_virt_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.uniphier_mdmac_chan* @to_uniphier_mdmac_chan(%struct.virt_dma_chan*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.virt_dma_chan*, i64) #1

declare dso_local %struct.uniphier_mdmac_desc* @to_uniphier_mdmac_desc(%struct.virt_dma_desc*) #1

declare dso_local i64 @sg_dma_len(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
