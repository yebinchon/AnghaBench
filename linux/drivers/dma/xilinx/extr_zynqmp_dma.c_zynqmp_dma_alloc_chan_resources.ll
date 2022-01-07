; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.zynqmp_dma_chan = type { i32, i32, i32, i64, i64, %struct.zynqmp_dma_desc_sw*, i32, i32, i32 }
%struct.zynqmp_dma_desc_sw = type { i64, i64, %struct.zynqmp_dma_desc_ll*, %struct.zynqmp_dma_desc_ll*, i32, %struct.TYPE_2__ }
%struct.zynqmp_dma_desc_ll = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ZYNQMP_DMA_NUM_DESCS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zynqmp_dma_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @zynqmp_dma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_dma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.zynqmp_dma_chan*, align 8
  %5 = alloca %struct.zynqmp_dma_desc_sw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %9 = call %struct.zynqmp_dma_chan* @to_chan(%struct.dma_chan* %8)
  store %struct.zynqmp_dma_chan* %9, %struct.zynqmp_dma_chan** %4, align 8
  %10 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %148

18:                                               ; preds = %1
  %19 = load i32, i32* @ZYNQMP_DMA_NUM_DESCS, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.zynqmp_dma_desc_sw* @kcalloc(i32 %19, i32 40, i32 %20)
  %22 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %23 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %22, i32 0, i32 5
  store %struct.zynqmp_dma_desc_sw* %21, %struct.zynqmp_dma_desc_sw** %23, align 8
  %24 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %25 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %24, i32 0, i32 5
  %26 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %25, align 8
  %27 = icmp ne %struct.zynqmp_dma_desc_sw* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %148

31:                                               ; preds = %18
  %32 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %33 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @ZYNQMP_DMA_NUM_DESCS, align 4
  %35 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %36 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %38 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %37, i32 0, i32 7
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %65, %31
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ZYNQMP_DMA_NUM_DESCS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %40
  %45 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %46 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %45, i32 0, i32 5
  %47 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, %struct.zynqmp_dma_desc_sw* %47, i64 %49
  store %struct.zynqmp_dma_desc_sw* %50, %struct.zynqmp_dma_desc_sw** %5, align 8
  %51 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %5, align 8
  %52 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, %struct.zynqmp_dma_desc_sw* %51, i32 0, i32 5
  %53 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %54 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %53, i32 0, i32 8
  %55 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__* %52, i32* %54)
  %56 = load i32, i32* @zynqmp_dma_tx_submit, align 4
  %57 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %5, align 8
  %58 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, %struct.zynqmp_dma_desc_sw* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %5, align 8
  %61 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, %struct.zynqmp_dma_desc_sw* %60, i32 0, i32 4
  %62 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %63 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %62, i32 0, i32 7
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  br label %65

65:                                               ; preds = %44
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %40

68:                                               ; preds = %40
  %69 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %70 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %73 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 2, %74
  %76 = load i32, i32* @ZYNQMP_DMA_NUM_DESCS, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %79 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %78, i32 0, i32 3
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i64 @dma_alloc_coherent(i32 %71, i32 %77, i64* %79, i32 %80)
  %82 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %83 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %82, i32 0, i32 4
  store i64 %81, i64* %83, align 8
  %84 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %85 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %68
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %148

91:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %143, %91
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @ZYNQMP_DMA_NUM_DESCS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %146

96:                                               ; preds = %92
  %97 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %98 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %97, i32 0, i32 5
  %99 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, %struct.zynqmp_dma_desc_sw* %99, i64 %101
  store %struct.zynqmp_dma_desc_sw* %102, %struct.zynqmp_dma_desc_sw** %5, align 8
  %103 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %104 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %108 = call i32 @ZYNQMP_DMA_DESC_SIZE(%struct.zynqmp_dma_chan* %107)
  %109 = mul nsw i32 %106, %108
  %110 = mul nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %105, %111
  %113 = inttoptr i64 %112 to %struct.zynqmp_dma_desc_ll*
  %114 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %5, align 8
  %115 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, %struct.zynqmp_dma_desc_sw* %114, i32 0, i32 2
  store %struct.zynqmp_dma_desc_ll* %113, %struct.zynqmp_dma_desc_ll** %115, align 8
  %116 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %5, align 8
  %117 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, %struct.zynqmp_dma_desc_sw* %116, i32 0, i32 2
  %118 = load %struct.zynqmp_dma_desc_ll*, %struct.zynqmp_dma_desc_ll** %117, align 8
  %119 = getelementptr inbounds %struct.zynqmp_dma_desc_ll, %struct.zynqmp_dma_desc_ll* %118, i64 1
  %120 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %5, align 8
  %121 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, %struct.zynqmp_dma_desc_sw* %120, i32 0, i32 3
  store %struct.zynqmp_dma_desc_ll* %119, %struct.zynqmp_dma_desc_ll** %121, align 8
  %122 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %123 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %127 = call i32 @ZYNQMP_DMA_DESC_SIZE(%struct.zynqmp_dma_chan* %126)
  %128 = mul nsw i32 %125, %127
  %129 = mul nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %124, %130
  %132 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %5, align 8
  %133 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, %struct.zynqmp_dma_desc_sw* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %5, align 8
  %135 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, %struct.zynqmp_dma_desc_sw* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %4, align 8
  %138 = call i32 @ZYNQMP_DMA_DESC_SIZE(%struct.zynqmp_dma_chan* %137)
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %136, %139
  %141 = load %struct.zynqmp_dma_desc_sw*, %struct.zynqmp_dma_desc_sw** %5, align 8
  %142 = getelementptr inbounds %struct.zynqmp_dma_desc_sw, %struct.zynqmp_dma_desc_sw* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %96
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %92

146:                                              ; preds = %92
  %147 = load i32, i32* @ZYNQMP_DMA_NUM_DESCS, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %88, %28, %16
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.zynqmp_dma_chan* @to_chan(%struct.dma_chan*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.zynqmp_dma_desc_sw* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @ZYNQMP_DMA_DESC_SIZE(%struct.zynqmp_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
