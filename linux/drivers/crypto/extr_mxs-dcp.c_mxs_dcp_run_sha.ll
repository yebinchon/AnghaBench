; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_run_sha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_run_sha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.dcp_dma_desc* }
%struct.dcp_dma_desc = type { i32, i64, i64, i8*, i64, i64, i8*, i64 }
%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.dcp_async_ctx = type { i64, i64, i64 }
%struct.dcp_sha_req_ctx = type { i64, i64 }
%struct.hash_alg_common = type { i32 }

@global_sdcp = common dso_local global %struct.dcp* null, align 8
@DCP_BUF_SZ = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL0_DECR_SEMAPHORE = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL0_INTERRUPT = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL0_ENABLE_HASH = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL0_HASH_INIT = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL1_HASH_SELECT_SHA1 = common dso_local global i64 0, align 8
@sha1_null_hash = common dso_local global i32* null, align 8
@sha256_null_hash = common dso_local global i32* null, align 8
@DCP_SHA_PAY_SZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL0_HASH_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @mxs_dcp_run_sha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dcp_run_sha(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.dcp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.dcp_async_ctx*, align 8
  %7 = alloca %struct.dcp_sha_req_ctx*, align 8
  %8 = alloca %struct.dcp_dma_desc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hash_alg_common*, align 8
  %12 = alloca i32*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %13 = load %struct.dcp*, %struct.dcp** @global_sdcp, align 8
  store %struct.dcp* %13, %struct.dcp** %3, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %15 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %14)
  store %struct.crypto_ahash* %15, %struct.crypto_ahash** %5, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %17 = call %struct.dcp_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %16)
  store %struct.dcp_async_ctx* %17, %struct.dcp_async_ctx** %6, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %19 = call %struct.dcp_sha_req_ctx* @ahash_request_ctx(%struct.ahash_request* %18)
  store %struct.dcp_sha_req_ctx* %19, %struct.dcp_sha_req_ctx** %7, align 8
  %20 = load %struct.dcp*, %struct.dcp** %3, align 8
  %21 = getelementptr inbounds %struct.dcp, %struct.dcp* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %23, align 8
  %25 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %24, i64 %27
  store %struct.dcp_dma_desc* %28, %struct.dcp_dma_desc** %8, align 8
  store i8* null, i8** %9, align 8
  %29 = load %struct.dcp*, %struct.dcp** %3, align 8
  %30 = getelementptr inbounds %struct.dcp, %struct.dcp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dcp*, %struct.dcp** %3, align 8
  %33 = getelementptr inbounds %struct.dcp, %struct.dcp* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DCP_BUF_SZ, align 4
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i8* @dma_map_single(i32 %31, i32 %36, i32 %37, i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load i32, i32* @MXS_DCP_CONTROL0_DECR_SEMAPHORE, align 4
  %41 = load i32, i32* @MXS_DCP_CONTROL0_INTERRUPT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MXS_DCP_CONTROL0_ENABLE_HASH, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %46 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.dcp_sha_req_ctx*, %struct.dcp_sha_req_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.dcp_sha_req_ctx, %struct.dcp_sha_req_ctx* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %1
  %52 = load i32, i32* @MXS_DCP_CONTROL0_HASH_INIT, align 4
  %53 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %54 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %1
  %58 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %62 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %64 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %67 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %69 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %68, i32 0, i32 5
  store i64 0, i64* %69, align 8
  %70 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %74 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %76 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %75, i32 0, i32 3
  store i8* null, i8** %76, align 8
  %77 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %78 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.dcp_sha_req_ctx*, %struct.dcp_sha_req_ctx** %7, align 8
  %80 = getelementptr inbounds %struct.dcp_sha_req_ctx, %struct.dcp_sha_req_ctx* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %57
  %84 = load %struct.dcp_sha_req_ctx*, %struct.dcp_sha_req_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.dcp_sha_req_ctx, %struct.dcp_sha_req_ctx* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %83
  %89 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %90 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %88
  %94 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %95 = call %struct.hash_alg_common* @crypto_hash_alg_common(%struct.crypto_ahash* %94)
  store %struct.hash_alg_common* %95, %struct.hash_alg_common** %11, align 8
  %96 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %6, align 8
  %97 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MXS_DCP_CONTROL1_HASH_SELECT_SHA1, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32*, i32** @sha1_null_hash, align 8
  br label %105

103:                                              ; preds = %93
  %104 = load i32*, i32** @sha256_null_hash, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32* [ %102, %101 ], [ %104, %103 ]
  store i32* %106, i32** %12, align 8
  %107 = load %struct.dcp*, %struct.dcp** %3, align 8
  %108 = getelementptr inbounds %struct.dcp, %struct.dcp* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = load %struct.hash_alg_common*, %struct.hash_alg_common** %11, align 8
  %114 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @memcpy(i32 %111, i32* %112, i32 %115)
  store i32 0, i32* %4, align 4
  br label %158

117:                                              ; preds = %88, %83, %57
  %118 = load %struct.dcp_sha_req_ctx*, %struct.dcp_sha_req_ctx** %7, align 8
  %119 = getelementptr inbounds %struct.dcp_sha_req_ctx, %struct.dcp_sha_req_ctx* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = load %struct.dcp*, %struct.dcp** %3, align 8
  %124 = getelementptr inbounds %struct.dcp, %struct.dcp* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.dcp*, %struct.dcp** %3, align 8
  %127 = getelementptr inbounds %struct.dcp, %struct.dcp* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @DCP_SHA_PAY_SZ, align 4
  %132 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %133 = call i8* @dma_map_single(i32 %125, i32 %130, i32 %131, i32 %132)
  store i8* %133, i8** %9, align 8
  %134 = load i32, i32* @MXS_DCP_CONTROL0_HASH_TERM, align 4
  %135 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %136 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %141 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %122, %117
  %143 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %6, align 8
  %144 = call i32 @mxs_dcp_start_dma(%struct.dcp_async_ctx* %143)
  store i32 %144, i32* %4, align 4
  %145 = load %struct.dcp_sha_req_ctx*, %struct.dcp_sha_req_ctx** %7, align 8
  %146 = getelementptr inbounds %struct.dcp_sha_req_ctx, %struct.dcp_sha_req_ctx* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load %struct.dcp*, %struct.dcp** %3, align 8
  %151 = getelementptr inbounds %struct.dcp, %struct.dcp* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* @DCP_SHA_PAY_SZ, align 4
  %155 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %156 = call i32 @dma_unmap_single(i32 %152, i8* %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %149, %142
  br label %158

158:                                              ; preds = %157, %105
  %159 = load %struct.dcp*, %struct.dcp** %3, align 8
  %160 = getelementptr inbounds %struct.dcp, %struct.dcp* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = load i32, i32* @DCP_BUF_SZ, align 4
  %164 = load i32, i32* @DMA_TO_DEVICE, align 4
  %165 = call i32 @dma_unmap_single(i32 %161, i8* %162, i32 %163, i32 %164)
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.dcp_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.dcp_sha_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i8* @dma_map_single(i32, i32, i32, i32) #1

declare dso_local %struct.hash_alg_common* @crypto_hash_alg_common(%struct.crypto_ahash*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mxs_dcp_start_dma(%struct.dcp_async_ctx*) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
