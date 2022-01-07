; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_run_aes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_run_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.dcp_dma_desc* }
%struct.dcp_dma_desc = type { i32, i32, i64, i8*, i8*, i8*, i64, i32 }
%struct.dcp_async_ctx = type { i64, i32 }
%struct.ablkcipher_request = type { i32 }
%struct.dcp_aes_req_ctx = type { i64, i64 }

@global_sdcp = common dso_local global %struct.dcp* null, align 8
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DCP_BUF_SZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid block size!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL0_DECR_SEMAPHORE = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL0_INTERRUPT = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL0_ENABLE_CIPHER = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL0_PAYLOAD_KEY = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL0_CIPHER_ENCRYPT = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL0_CIPHER_INIT = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL1_CIPHER_SELECT_AES128 = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL1_CIPHER_MODE_ECB = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL1_CIPHER_MODE_CBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcp_async_ctx*, %struct.ablkcipher_request*, i32)* @mxs_dcp_run_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dcp_run_aes(%struct.dcp_async_ctx* %0, %struct.ablkcipher_request* %1, i32 %2) #0 {
  %4 = alloca %struct.dcp_async_ctx*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcp*, align 8
  %8 = alloca %struct.dcp_dma_desc*, align 8
  %9 = alloca %struct.dcp_aes_req_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.dcp_async_ctx* %0, %struct.dcp_async_ctx** %4, align 8
  store %struct.ablkcipher_request* %1, %struct.ablkcipher_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.dcp*, %struct.dcp** @global_sdcp, align 8
  store %struct.dcp* %14, %struct.dcp** %7, align 8
  %15 = load %struct.dcp*, %struct.dcp** %7, align 8
  %16 = getelementptr inbounds %struct.dcp, %struct.dcp* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %18, align 8
  %20 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %19, i64 %22
  store %struct.dcp_dma_desc* %23, %struct.dcp_dma_desc** %8, align 8
  %24 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %25 = call %struct.dcp_aes_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %24)
  store %struct.dcp_aes_req_ctx* %25, %struct.dcp_aes_req_ctx** %9, align 8
  %26 = load %struct.dcp*, %struct.dcp** %7, align 8
  %27 = getelementptr inbounds %struct.dcp, %struct.dcp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dcp*, %struct.dcp** %7, align 8
  %30 = getelementptr inbounds %struct.dcp, %struct.dcp* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AES_KEYSIZE_128, align 4
  %35 = mul nsw i32 2, %34
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i8* @dma_map_single(i32 %28, i32 %33, i32 %35, i32 %36)
  store i8* %37, i8** %11, align 8
  %38 = load %struct.dcp*, %struct.dcp** %7, align 8
  %39 = getelementptr inbounds %struct.dcp, %struct.dcp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dcp*, %struct.dcp** %7, align 8
  %42 = getelementptr inbounds %struct.dcp, %struct.dcp* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DCP_BUF_SZ, align 4
  %47 = load i32, i32* @DMA_TO_DEVICE, align 4
  %48 = call i8* @dma_map_single(i32 %40, i32 %45, i32 %46, i32 %47)
  store i8* %48, i8** %12, align 8
  %49 = load %struct.dcp*, %struct.dcp** %7, align 8
  %50 = getelementptr inbounds %struct.dcp, %struct.dcp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dcp*, %struct.dcp** %7, align 8
  %53 = getelementptr inbounds %struct.dcp, %struct.dcp* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DCP_BUF_SZ, align 4
  %58 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %59 = call i8* @dma_map_single(i32 %51, i32 %56, i32 %57, i32 %58)
  store i8* %59, i8** %13, align 8
  %60 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %64 = srem i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %3
  %67 = load %struct.dcp*, %struct.dcp** %7, align 8
  %68 = getelementptr inbounds %struct.dcp, %struct.dcp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %146

73:                                               ; preds = %3
  %74 = load i32, i32* @MXS_DCP_CONTROL0_DECR_SEMAPHORE, align 4
  %75 = load i32, i32* @MXS_DCP_CONTROL0_INTERRUPT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @MXS_DCP_CONTROL0_ENABLE_CIPHER, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %80 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @MXS_DCP_CONTROL0_PAYLOAD_KEY, align 4
  %82 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %83 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.dcp_aes_req_ctx*, %struct.dcp_aes_req_ctx** %9, align 8
  %87 = getelementptr inbounds %struct.dcp_aes_req_ctx, %struct.dcp_aes_req_ctx* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %73
  %91 = load i32, i32* @MXS_DCP_CONTROL0_CIPHER_ENCRYPT, align 4
  %92 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %93 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %73
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @MXS_DCP_CONTROL0_CIPHER_INIT, align 4
  %101 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %102 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i32, i32* @MXS_DCP_CONTROL1_CIPHER_SELECT_AES128, align 4
  %107 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %108 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  %109 = load %struct.dcp_aes_req_ctx*, %struct.dcp_aes_req_ctx** %9, align 8
  %110 = getelementptr inbounds %struct.dcp_aes_req_ctx, %struct.dcp_aes_req_ctx* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i32, i32* @MXS_DCP_CONTROL1_CIPHER_MODE_ECB, align 4
  %115 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %116 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %125

119:                                              ; preds = %105
  %120 = load i32, i32* @MXS_DCP_CONTROL1_CIPHER_MODE_CBC, align 4
  %121 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %122 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %113
  %126 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %127 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %126, i32 0, i32 6
  store i64 0, i64* %127, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %130 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %133 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %132, i32 0, i32 4
  store i8* %131, i8** %133, align 8
  %134 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %4, align 8
  %135 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %138 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i8*, i8** %11, align 8
  %140 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %141 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %143 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %142, i32 0, i32 2
  store i64 0, i64* %143, align 8
  %144 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %4, align 8
  %145 = call i32 @mxs_dcp_start_dma(%struct.dcp_async_ctx* %144)
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %125, %66
  %147 = load %struct.dcp*, %struct.dcp** %7, align 8
  %148 = getelementptr inbounds %struct.dcp, %struct.dcp* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = load i32, i32* @AES_KEYSIZE_128, align 4
  %152 = mul nsw i32 2, %151
  %153 = load i32, i32* @DMA_TO_DEVICE, align 4
  %154 = call i32 @dma_unmap_single(i32 %149, i8* %150, i32 %152, i32 %153)
  %155 = load %struct.dcp*, %struct.dcp** %7, align 8
  %156 = getelementptr inbounds %struct.dcp, %struct.dcp* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = load i32, i32* @DCP_BUF_SZ, align 4
  %160 = load i32, i32* @DMA_TO_DEVICE, align 4
  %161 = call i32 @dma_unmap_single(i32 %157, i8* %158, i32 %159, i32 %160)
  %162 = load %struct.dcp*, %struct.dcp** %7, align 8
  %163 = getelementptr inbounds %struct.dcp, %struct.dcp* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = load i32, i32* @DCP_BUF_SZ, align 4
  %167 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %168 = call i32 @dma_unmap_single(i32 %164, i8* %165, i32 %166, i32 %167)
  %169 = load i32, i32* %10, align 4
  ret i32 %169
}

declare dso_local %struct.dcp_aes_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i8* @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mxs_dcp_start_dma(%struct.dcp_async_ctx*) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
