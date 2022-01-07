; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_handle_ahash_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_handle_ahash_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.chcr_ahash_req_ctx = type { i64, i32, %struct.chcr_hctx_per_wr }
%struct.chcr_hctx_per_wr = type { i64, i32, i64, i64, i64, i32 }
%struct.crypto_ahash = type { i32 }
%struct.uld_ctx = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.chcr_dev = type { i32 }
%struct.TYPE_9__ = type { %struct.chcr_dev* }

@SHA224_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA384_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, i8*, i32)* @chcr_handle_ahash_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chcr_handle_ahash_resp(%struct.ahash_request* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chcr_ahash_req_ctx*, align 8
  %8 = alloca %struct.chcr_hctx_per_wr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.crypto_ahash*, align 8
  %12 = alloca %struct.uld_ctx*, align 8
  %13 = alloca %struct.chcr_dev*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %15 = call %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %14)
  store %struct.chcr_ahash_req_ctx* %15, %struct.chcr_ahash_req_ctx** %7, align 8
  %16 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %16, i32 0, i32 2
  store %struct.chcr_hctx_per_wr* %17, %struct.chcr_hctx_per_wr** %8, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %19 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %18)
  store %struct.crypto_ahash* %19, %struct.crypto_ahash** %11, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %11, align 8
  %21 = call %struct.TYPE_9__* @h_ctx(%struct.crypto_ahash* %20)
  %22 = call %struct.uld_ctx* @ULD_CTX(%struct.TYPE_9__* %21)
  store %struct.uld_ctx* %22, %struct.uld_ctx** %12, align 8
  %23 = load %struct.crypto_ahash*, %struct.crypto_ahash** %11, align 8
  %24 = call %struct.TYPE_9__* @h_ctx(%struct.crypto_ahash* %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.chcr_dev*, %struct.chcr_dev** %25, align 8
  store %struct.chcr_dev* %26, %struct.chcr_dev** %13, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %137

30:                                               ; preds = %3
  %31 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %32 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %31)
  %33 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @SHA224_DIGEST_SIZE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  store i32 %39, i32* %10, align 4
  br label %47

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SHA384_DIGEST_SIZE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %38
  %48 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %8, align 8
  %49 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load %struct.uld_ctx*, %struct.uld_ctx** %12, align 8
  %54 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %8, align 8
  %59 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %8, align 8
  %62 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DMA_TO_DEVICE, align 4
  %65 = call i32 @dma_unmap_single(i32* %57, i64 %60, i32 %63, i32 %64)
  %66 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %8, align 8
  %67 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %52, %47
  %69 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %8, align 8
  %70 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %68
  %74 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %8, align 8
  %75 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %7, align 8
  %78 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %82 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %73, %68
  %86 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %8, align 8
  %87 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %8, align 8
  %92 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %91, i32 0, i32 1
  store i32 0, i32* %92, align 8
  %93 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %94 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @memcpy(i32 %95, i8* %97, i32 %98)
  br label %108

100:                                              ; preds = %85
  %101 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %7, align 8
  %102 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @memcpy(i32 %103, i8* %105, i32 %106)
  br label %108

108:                                              ; preds = %100, %90
  br label %123

109:                                              ; preds = %73
  %110 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %7, align 8
  %111 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @memcpy(i32 %112, i8* %114, i32 %115)
  %117 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %118 = call i32 @chcr_ahash_continue(%struct.ahash_request* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  br label %123

122:                                              ; preds = %109
  br label %148

123:                                              ; preds = %121, %108
  %124 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %8, align 8
  %125 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load %struct.uld_ctx*, %struct.uld_ctx** %12, align 8
  %130 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %135 = call i32 @chcr_hash_dma_unmap(i32* %133, %struct.ahash_request* %134)
  br label %136

136:                                              ; preds = %128, %123
  br label %137

137:                                              ; preds = %136, %29
  %138 = load %struct.chcr_dev*, %struct.chcr_dev** %13, align 8
  %139 = call i32 @chcr_dec_wrcount(%struct.chcr_dev* %138)
  %140 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %141 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %142, align 8
  %144 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %145 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %144, i32 0, i32 1
  %146 = load i32, i32* %6, align 4
  %147 = call i32 %143(%struct.TYPE_8__* %145, i32 %146)
  br label %148

148:                                              ; preds = %137, %122
  ret void
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.uld_ctx* @ULD_CTX(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @h_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @chcr_ahash_continue(%struct.ahash_request*) #1

declare dso_local i32 @chcr_hash_dma_unmap(i32*, %struct.ahash_request*) #1

declare dso_local i32 @chcr_dec_wrcount(%struct.chcr_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
