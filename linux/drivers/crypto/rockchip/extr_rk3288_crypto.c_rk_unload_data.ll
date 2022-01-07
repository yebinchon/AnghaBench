; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_unload_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_unload_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i32, %struct.scatterlist, %struct.scatterlist*, i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_crypto_info*)* @rk_unload_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_unload_data(%struct.rk_crypto_info* %0) #0 {
  %2 = alloca %struct.rk_crypto_info*, align 8
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  store %struct.rk_crypto_info* %0, %struct.rk_crypto_info** %2, align 8
  %5 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %6 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %11 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %10, i32 0, i32 4
  %12 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %15 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %14, i32 0, i32 1
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi %struct.scatterlist* [ %12, %9 ], [ %15, %13 ]
  store %struct.scatterlist* %17, %struct.scatterlist** %3, align 8
  %18 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %19 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = call i32 @dma_unmap_sg(i32 %20, %struct.scatterlist* %21, i32 1, i32 %22)
  %24 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %25 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %24, i32 0, i32 2
  %26 = load %struct.scatterlist*, %struct.scatterlist** %25, align 8
  %27 = icmp ne %struct.scatterlist* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %16
  %29 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %30 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %35 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %34, i32 0, i32 2
  %36 = load %struct.scatterlist*, %struct.scatterlist** %35, align 8
  br label %40

37:                                               ; preds = %28
  %38 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %39 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %38, i32 0, i32 1
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi %struct.scatterlist* [ %36, %33 ], [ %39, %37 ]
  store %struct.scatterlist* %41, %struct.scatterlist** %4, align 8
  %42 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %43 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i32 @dma_unmap_sg(i32 %44, %struct.scatterlist* %45, i32 1, i32 %46)
  br label %48

48:                                               ; preds = %40, %16
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
