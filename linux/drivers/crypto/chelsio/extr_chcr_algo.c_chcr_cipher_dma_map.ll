; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_cipher_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_cipher_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ablkcipher_request = type { i64, i64 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chcr_cipher_dma_map(%struct.device* %0, %struct.ablkcipher_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ablkcipher_request* %1, %struct.ablkcipher_request** %5, align 8
  %7 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %8 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %11 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %17 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %20 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @sg_nents(i64 %21)
  %23 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %24 = call i32 @dma_map_sg(%struct.device* %15, i64 %18, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  br label %69

28:                                               ; preds = %14
  br label %68

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %32 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %35 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @sg_nents(i64 %36)
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i32 @dma_map_sg(%struct.device* %30, i64 %33, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  br label %69

43:                                               ; preds = %29
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %46 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %49 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @sg_nents(i64 %50)
  %52 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %53 = call i32 @dma_map_sg(%struct.device* %44, i64 %47, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %43
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %59 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %62 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @sg_nents(i64 %63)
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i32 @dma_unmap_sg(%struct.device* %57, i64 %60, i32 %64, i32 %65)
  br label %69

67:                                               ; preds = %43
  br label %68

68:                                               ; preds = %67, %28
  store i32 0, i32* %3, align 4
  br label %72

69:                                               ; preds = %56, %42, %27
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %68
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @dma_map_sg(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @sg_nents(i64) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
