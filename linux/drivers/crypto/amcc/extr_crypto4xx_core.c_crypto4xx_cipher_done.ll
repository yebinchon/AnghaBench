; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_cipher_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_cipher_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.pd_uinfo = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.scatterlist*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.scatterlist = type { i32, i32 }
%struct.ce_pd = type { i32 }
%struct.skcipher_request = type { i64, i32, i32 }
%struct.crypto_skcipher = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SA_SAVE_IV = common dso_local global i64 0, align 8
@PD_ENTRY_BUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto4xx_device*, %struct.pd_uinfo*, %struct.ce_pd*)* @crypto4xx_cipher_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_cipher_done(%struct.crypto4xx_device* %0, %struct.pd_uinfo* %1, %struct.ce_pd* %2) #0 {
  %4 = alloca %struct.crypto4xx_device*, align 8
  %5 = alloca %struct.pd_uinfo*, align 8
  %6 = alloca %struct.ce_pd*, align 8
  %7 = alloca %struct.skcipher_request*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_skcipher*, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %4, align 8
  store %struct.pd_uinfo* %1, %struct.pd_uinfo** %5, align 8
  store %struct.ce_pd* %2, %struct.ce_pd** %6, align 8
  %11 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %12 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.skcipher_request* @skcipher_request_cast(i32 %13)
  store %struct.skcipher_request* %14, %struct.skcipher_request** %7, align 8
  %15 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %16 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %25 = load %struct.ce_pd*, %struct.ce_pd** %6, align 8
  %26 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %27 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %28 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %31 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @crypto4xx_copy_pkt_to_dst(%struct.crypto4xx_device* %24, %struct.ce_pd* %25, %struct.pd_uinfo* %26, i32 %29, i32 %32)
  br label %53

34:                                               ; preds = %3
  %35 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %36 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %35, i32 0, i32 3
  %37 = load %struct.scatterlist*, %struct.scatterlist** %36, align 8
  store %struct.scatterlist* %37, %struct.scatterlist** %8, align 8
  %38 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %39 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %44 = call i32 @sg_page(%struct.scatterlist* %43)
  %45 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %46 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %49 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %52 = call i32 @dma_map_page(i32 %42, i32 %44, i32 %47, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %34, %23
  %54 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %55 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %54, i32 0, i32 2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SA_SAVE_IV, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %53
  %64 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %65 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %64)
  store %struct.crypto_skcipher* %65, %struct.crypto_skcipher** %10, align 8
  %66 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %67 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %71 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %10, align 8
  %76 = call i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %75)
  %77 = call i32 @crypto4xx_memcpy_from_le32(i32* %69, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %63, %53
  %79 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %80 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %81 = call i32 @crypto4xx_ret_sg_desc(%struct.crypto4xx_device* %79, %struct.pd_uinfo* %80)
  %82 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %83 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PD_ENTRY_BUSY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %90 = load i32, i32* @EINPROGRESS, align 4
  %91 = sub nsw i32 0, %90
  %92 = call i32 @skcipher_request_complete(%struct.skcipher_request* %89, i32 %91)
  br label %93

93:                                               ; preds = %88, %78
  %94 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %95 = call i32 @skcipher_request_complete(%struct.skcipher_request* %94, i32 0)
  ret void
}

declare dso_local %struct.skcipher_request* @skcipher_request_cast(i32) #1

declare dso_local i32 @crypto4xx_copy_pkt_to_dst(%struct.crypto4xx_device*, %struct.ce_pd*, %struct.pd_uinfo*, i32, i32) #1

declare dso_local i32 @dma_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i32 @crypto4xx_memcpy_from_le32(i32*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto4xx_ret_sg_desc(%struct.crypto4xx_device*, %struct.pd_uinfo*) #1

declare dso_local i32 @skcipher_request_complete(%struct.skcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
