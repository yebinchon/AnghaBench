; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.sprd_dma_chn = type { %struct.TYPE_6__, %struct.sprd_dma_desc* }
%struct.TYPE_6__ = type { i32 }
%struct.sprd_dma_desc = type { i64, %struct.TYPE_5__, %struct.sprd_dma_chn_hw }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sprd_dma_chn_hw = type { i64, i64, i64 }
%struct.virt_dma_desc = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @sprd_dma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_dma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.sprd_dma_chn*, align 8
  %9 = alloca %struct.virt_dma_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.sprd_dma_desc*, align 8
  %14 = alloca %struct.sprd_dma_chn_hw*, align 8
  %15 = alloca %struct.sprd_dma_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %17 = call %struct.sprd_dma_chn* @to_sprd_dma_chan(%struct.dma_chan* %16)
  store %struct.sprd_dma_chn* %17, %struct.sprd_dma_chn** %8, align 8
  %18 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %21 = call i32 @dma_cookie_status(%struct.dma_chan* %18, i64 %19, %struct.dma_tx_state* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @DMA_COMPLETE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %27 = icmp ne %struct.dma_tx_state* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %120

30:                                               ; preds = %25
  %31 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %32 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %37 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %36, i32 0, i32 0
  %38 = load i64, i64* %6, align 8
  %39 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_6__* %37, i64 %38)
  store %struct.virt_dma_desc* %39, %struct.virt_dma_desc** %9, align 8
  %40 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %41 = icmp ne %struct.virt_dma_desc* %40, null
  br i1 %41, label %42, label %77

42:                                               ; preds = %30
  %43 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %44 = call %struct.sprd_dma_desc* @to_sprd_dma_desc(%struct.virt_dma_desc* %43)
  store %struct.sprd_dma_desc* %44, %struct.sprd_dma_desc** %13, align 8
  %45 = load %struct.sprd_dma_desc*, %struct.sprd_dma_desc** %13, align 8
  %46 = getelementptr inbounds %struct.sprd_dma_desc, %struct.sprd_dma_desc* %45, i32 0, i32 2
  store %struct.sprd_dma_chn_hw* %46, %struct.sprd_dma_chn_hw** %14, align 8
  %47 = load %struct.sprd_dma_chn_hw*, %struct.sprd_dma_chn_hw** %14, align 8
  %48 = getelementptr inbounds %struct.sprd_dma_chn_hw, %struct.sprd_dma_chn_hw* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.sprd_dma_chn_hw*, %struct.sprd_dma_chn_hw** %14, align 8
  %53 = getelementptr inbounds %struct.sprd_dma_chn_hw, %struct.sprd_dma_chn_hw* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %12, align 8
  br label %76

55:                                               ; preds = %42
  %56 = load %struct.sprd_dma_chn_hw*, %struct.sprd_dma_chn_hw** %14, align 8
  %57 = getelementptr inbounds %struct.sprd_dma_chn_hw, %struct.sprd_dma_chn_hw* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.sprd_dma_chn_hw*, %struct.sprd_dma_chn_hw** %14, align 8
  %62 = getelementptr inbounds %struct.sprd_dma_chn_hw, %struct.sprd_dma_chn_hw* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %12, align 8
  br label %75

64:                                               ; preds = %55
  %65 = load %struct.sprd_dma_chn_hw*, %struct.sprd_dma_chn_hw** %14, align 8
  %66 = getelementptr inbounds %struct.sprd_dma_chn_hw, %struct.sprd_dma_chn_hw* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.sprd_dma_chn_hw*, %struct.sprd_dma_chn_hw** %14, align 8
  %71 = getelementptr inbounds %struct.sprd_dma_chn_hw, %struct.sprd_dma_chn_hw* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %12, align 8
  br label %74

73:                                               ; preds = %64
  store i64 0, i64* %12, align 8
  br label %74

74:                                               ; preds = %73, %69
  br label %75

75:                                               ; preds = %74, %60
  br label %76

76:                                               ; preds = %75, %51
  br label %110

77:                                               ; preds = %30
  %78 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %79 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %78, i32 0, i32 1
  %80 = load %struct.sprd_dma_desc*, %struct.sprd_dma_desc** %79, align 8
  %81 = icmp ne %struct.sprd_dma_desc* %80, null
  br i1 %81, label %82, label %108

82:                                               ; preds = %77
  %83 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %84 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %83, i32 0, i32 1
  %85 = load %struct.sprd_dma_desc*, %struct.sprd_dma_desc** %84, align 8
  %86 = getelementptr inbounds %struct.sprd_dma_desc, %struct.sprd_dma_desc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %82
  %93 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %94 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %93, i32 0, i32 1
  %95 = load %struct.sprd_dma_desc*, %struct.sprd_dma_desc** %94, align 8
  store %struct.sprd_dma_desc* %95, %struct.sprd_dma_desc** %15, align 8
  %96 = load %struct.sprd_dma_desc*, %struct.sprd_dma_desc** %15, align 8
  %97 = getelementptr inbounds %struct.sprd_dma_desc, %struct.sprd_dma_desc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %103 = call i64 @sprd_dma_get_dst_addr(%struct.sprd_dma_chn* %102)
  store i64 %103, i64* %12, align 8
  br label %107

104:                                              ; preds = %92
  %105 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %106 = call i64 @sprd_dma_get_src_addr(%struct.sprd_dma_chn* %105)
  store i64 %106, i64* %12, align 8
  br label %107

107:                                              ; preds = %104, %101
  br label %109

108:                                              ; preds = %82, %77
  store i64 0, i64* %12, align 8
  br label %109

109:                                              ; preds = %108, %107
  br label %110

110:                                              ; preds = %109, %76
  %111 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %112 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @dma_set_residue(%struct.dma_tx_state* %116, i64 %117)
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %110, %28
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.sprd_dma_chn* @to_sprd_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_6__*, i64) #1

declare dso_local %struct.sprd_dma_desc* @to_sprd_dma_desc(%struct.virt_dma_desc*) #1

declare dso_local i64 @sprd_dma_get_dst_addr(%struct.sprd_dma_chn*) #1

declare dso_local i64 @sprd_dma_get_src_addr(%struct.sprd_dma_chn*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
