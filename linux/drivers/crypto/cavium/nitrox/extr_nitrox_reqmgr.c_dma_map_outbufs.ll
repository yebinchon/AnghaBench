; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_dma_map_outbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_dma_map_outbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_softreq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.se_crypto_request = type { i32* }
%struct.device = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_softreq*, %struct.se_crypto_request*)* @dma_map_outbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_map_outbufs(%struct.nitrox_softreq* %0, %struct.se_crypto_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nitrox_softreq*, align 8
  %5 = alloca %struct.se_crypto_request*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nitrox_softreq* %0, %struct.nitrox_softreq** %4, align 8
  store %struct.se_crypto_request* %1, %struct.se_crypto_request** %5, align 8
  %9 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %10 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.device* @DEV(i32 %11)
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load %struct.se_crypto_request*, %struct.se_crypto_request** %5, align 8
  %15 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.se_crypto_request*, %struct.se_crypto_request** %5, align 8
  %18 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @sg_nents(i32* %19)
  %21 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %22 = call i32 @dma_map_sg(%struct.device* %13, i32* %16, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %66

28:                                               ; preds = %2
  %29 = load %struct.se_crypto_request*, %struct.se_crypto_request** %5, align 8
  %30 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %33 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32* %31, i32** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %37 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %40 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %41 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %40, i32 0, i32 0
  %42 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %43 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @create_sg_component(%struct.nitrox_softreq* %39, %struct.TYPE_2__* %41, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  br label %51

50:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %66

51:                                               ; preds = %49
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.se_crypto_request*, %struct.se_crypto_request** %5, align 8
  %54 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %58 = call i32 @dma_unmap_sg(%struct.device* %52, i32* %55, i32 %56, i32 %57)
  %59 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %60 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %4, align 8
  %63 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %51, %50, %25
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.device* @DEV(i32) #1

declare dso_local i32 @dma_map_sg(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @sg_nents(i32*) #1

declare dso_local i32 @create_sg_component(%struct.nitrox_softreq*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
