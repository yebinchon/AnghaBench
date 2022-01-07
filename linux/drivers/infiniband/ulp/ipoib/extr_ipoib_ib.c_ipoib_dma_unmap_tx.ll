; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dma_unmap_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dma_unmap_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32 }
%struct.ipoib_tx_buf = type { i32*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_dma_unmap_tx(%struct.ipoib_dev_priv* %0, %struct.ipoib_tx_buf* %1) #0 {
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.ipoib_tx_buf*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store %struct.ipoib_tx_buf* %1, %struct.ipoib_tx_buf** %4, align 8
  %10 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %4, align 8
  %11 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %10, i32 0, i32 1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %4, align 8
  %14 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i64 @skb_headlen(%struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i64 @skb_headlen(%struct.sk_buff* %26)
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @ib_dma_unmap_single(i32 %22, i32 %25, i64 %27, i32 %28)
  store i32 1, i32* %8, align 4
  br label %31

30:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %19
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %61, %31
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %32
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %9, align 8
  %47 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @skb_frag_size(i32* %57)
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i32 @ib_dma_unmap_page(i32 %49, i32 %56, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %39
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %32

64:                                               ; preds = %32
  ret void
}

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ib_dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
