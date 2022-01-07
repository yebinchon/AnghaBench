; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dma_map_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dma_map_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ipoib_tx_buf = type { i32*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_dma_map_tx(%struct.ib_device* %0, %struct.ipoib_tx_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ipoib_tx_buf*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ipoib_tx_buf* %1, %struct.ipoib_tx_buf** %5, align 8
  %12 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %5, align 8
  %13 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %12, i32 0, i32 1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %6, align 8
  %15 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %5, align 8
  %16 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i64 @skb_headlen(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %2
  %22 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i64 @skb_headlen(%struct.sk_buff* %26)
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @ib_dma_map_single(%struct.ib_device* %22, i32 %25, i64 %27, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ib_dma_mapping_error(%struct.ib_device* %32, i32 %35)
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %138

42:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %44

43:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %42
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %88, %44
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32* %59, i32** %10, align 8
  %60 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @skb_frag_page(i32* %61)
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @skb_frag_off(i32* %63)
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @skb_frag_size(i32* %65)
  %67 = load i32, i32* @DMA_TO_DEVICE, align 4
  %68 = call i32 @ib_dma_map_page(%struct.ib_device* %60, i32 %62, i32 %64, i32 %66, i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ib_dma_mapping_error(%struct.ib_device* %75, i32 %82)
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %52
  br label %92

87:                                               ; preds = %52
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %45

91:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %138

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %120, %92
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %93
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32* %104, i32** %11, align 8
  %105 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = sub nsw i32 %107, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %106, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @skb_frag_size(i32* %116)
  %118 = load i32, i32* @DMA_TO_DEVICE, align 4
  %119 = call i32 @ib_dma_unmap_page(%struct.ib_device* %105, i32 %115, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %96
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %8, align 4
  br label %93

123:                                              ; preds = %93
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = call i64 @skb_headlen(%struct.sk_buff* %131)
  %133 = load i32, i32* @DMA_TO_DEVICE, align 4
  %134 = call i32 @ib_dma_unmap_single(%struct.ib_device* %127, i32 %130, i64 %132, i32 %133)
  br label %135

135:                                              ; preds = %126, %123
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %91, %39
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ib_dma_map_page(%struct.ib_device*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @ib_dma_unmap_page(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
