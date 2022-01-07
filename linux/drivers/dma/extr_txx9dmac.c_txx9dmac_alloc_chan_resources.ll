; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.TYPE_2__*, %struct.txx9dmac_slave* }
%struct.TYPE_2__ = type { i64 }
%struct.txx9dmac_slave = type { i32, i64, i64 }
%struct.txx9dmac_chan = type { i32, i32, i32 }
%struct.txx9dmac_desc = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"alloc_chan_resources\0A\00", align 1
@CSR = common dso_local global i32 0, align 4
@TXX9_DMA_CSR_XFACT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DMA channel not idle?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_IMMCHN = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_INTENE = common dso_local global i32 0, align 4
@CCR_LE = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_SMPCHN = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_INTENC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_XFSZ_X8 = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_EXTRQ = common dso_local global i32 0, align 4
@TXX9_DMA_INITIAL_DESC_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"only allocated %d descriptors\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"alloc_chan_resources allocated %d descriptors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @txx9dmac_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txx9dmac_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.txx9dmac_chan*, align 8
  %5 = alloca %struct.txx9dmac_slave*, align 8
  %6 = alloca %struct.txx9dmac_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %9 = call %struct.txx9dmac_chan* @to_txx9dmac_chan(%struct.dma_chan* %8)
  store %struct.txx9dmac_chan* %9, %struct.txx9dmac_chan** %4, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %10, i32 0, i32 1
  %12 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %11, align 8
  store %struct.txx9dmac_slave* %12, %struct.txx9dmac_slave** %5, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %14 = call i32 @chan2dev(%struct.dma_chan* %13)
  %15 = call i32 @dev_vdbg(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %17 = load i32, i32* @CSR, align 4
  %18 = call i32 @channel_readl(%struct.txx9dmac_chan* %16, i32 %17)
  %19 = load i32, i32* @TXX9_DMA_CSR_XFACT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %24 = call i32 @chan2dev(%struct.dma_chan* %23)
  %25 = call i32 (i32, i8*, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %164

28:                                               ; preds = %1
  %29 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %30 = call i32 @dma_cookie_init(%struct.dma_chan* %29)
  %31 = load i32, i32* @TXX9_DMA_CCR_IMMCHN, align 4
  %32 = load i32, i32* @TXX9_DMA_CCR_INTENE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CCR_LE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %37 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %39 = call i32 @txx9dmac_chan_set_SMPCHN(%struct.txx9dmac_chan* %38)
  %40 = call i32 (...) @txx9_dma_have_SMPCHN()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %44 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TXX9_DMA_CCR_SMPCHN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42, %28
  %50 = load i32, i32* @TXX9_DMA_CCR_INTENC, align 4
  %51 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %52 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %57 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %64 = icmp ne %struct.txx9dmac_slave* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %164

68:                                               ; preds = %62
  %69 = load i32, i32* @TXX9_DMA_CCR_XFSZ_X8, align 4
  %70 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %71 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %114

74:                                               ; preds = %55
  %75 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %76 = icmp ne %struct.txx9dmac_slave* %75, null
  br i1 %76, label %77, label %97

77:                                               ; preds = %74
  %78 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %79 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %84 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %89 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %87
  %93 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %94 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92, %82, %74
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %164

100:                                              ; preds = %92, %87
  %101 = load i32, i32* @TXX9_DMA_CCR_EXTRQ, align 4
  %102 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %5, align 8
  %103 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @__ffs(i32 %104)
  %106 = call i32 @TXX9_DMA_CCR_XFSZ(i32 %105)
  %107 = or i32 %101, %106
  %108 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %109 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %113 = call i32 @txx9dmac_chan_set_INTENT(%struct.txx9dmac_chan* %112)
  br label %114

114:                                              ; preds = %100, %68
  %115 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %116 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %115, i32 0, i32 2
  %117 = call i32 @spin_lock_bh(i32* %116)
  %118 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %119 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %144, %114
  %122 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %123 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @TXX9_DMA_INITIAL_DESC_COUNT, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %121
  %128 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %129 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %128, i32 0, i32 2
  %130 = call i32 @spin_unlock_bh(i32* %129)
  %131 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call %struct.txx9dmac_desc* @txx9dmac_desc_alloc(%struct.txx9dmac_chan* %131, i32 %132)
  store %struct.txx9dmac_desc* %133, %struct.txx9dmac_desc** %6, align 8
  %134 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %6, align 8
  %135 = icmp ne %struct.txx9dmac_desc* %134, null
  br i1 %135, label %144, label %136

136:                                              ; preds = %127
  %137 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %138 = call i32 @chan2dev(%struct.dma_chan* %137)
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @dev_info(i32 %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %142 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %141, i32 0, i32 2
  %143 = call i32 @spin_lock_bh(i32* %142)
  br label %155

144:                                              ; preds = %127
  %145 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %146 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %6, align 8
  %147 = call i32 @txx9dmac_desc_put(%struct.txx9dmac_chan* %145, %struct.txx9dmac_desc* %146)
  %148 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %149 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %148, i32 0, i32 2
  %150 = call i32 @spin_lock_bh(i32* %149)
  %151 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %152 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  store i32 %154, i32* %7, align 4
  br label %121

155:                                              ; preds = %136, %121
  %156 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %157 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %156, i32 0, i32 2
  %158 = call i32 @spin_unlock_bh(i32* %157)
  %159 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %160 = call i32 @chan2dev(%struct.dma_chan* %159)
  %161 = load i32, i32* %7, align 4
  %162 = call i32 (i32, i8*, ...) @dev_dbg(i32 %160, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %155, %97, %65, %22
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.txx9dmac_chan* @to_txx9dmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @channel_readl(%struct.txx9dmac_chan*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dma_cookie_init(%struct.dma_chan*) #1

declare dso_local i32 @txx9dmac_chan_set_SMPCHN(%struct.txx9dmac_chan*) #1

declare dso_local i32 @txx9_dma_have_SMPCHN(...) #1

declare dso_local i32 @TXX9_DMA_CCR_XFSZ(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @txx9dmac_chan_set_INTENT(%struct.txx9dmac_chan*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.txx9dmac_desc* @txx9dmac_desc_alloc(%struct.txx9dmac_chan*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @txx9dmac_desc_put(%struct.txx9dmac_chan*, %struct.txx9dmac_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
