; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_continue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64 }
%struct.chcr_ahash_req_ctx = type { i64, %struct.chcr_hctx_per_wr }
%struct.chcr_hctx_per_wr = type { i64, i32, i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.uld_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.hash_wr_param = type { i32, i32, i64, i32, i32, i64, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @chcr_ahash_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_ahash_continue(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.chcr_ahash_req_ctx*, align 8
  %5 = alloca %struct.chcr_hctx_per_wr*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca %struct.uld_ctx*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.hash_wr_param, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.chcr_ahash_req_ctx* %13, %struct.chcr_ahash_req_ctx** %4, align 8
  %14 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %14, i32 0, i32 1
  store %struct.chcr_hctx_per_wr* %15, %struct.chcr_hctx_per_wr** %5, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %17 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %16)
  store %struct.crypto_ahash* %17, %struct.crypto_ahash** %6, align 8
  store %struct.uld_ctx* null, %struct.uld_ctx** %7, align 8
  %18 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %19 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %18)
  %20 = call i32 @crypto_tfm_alg_blocksize(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %22 = call %struct.TYPE_6__* @h_ctx(%struct.crypto_ahash* %21)
  %23 = call %struct.uld_ctx* @ULD_CTX(%struct.TYPE_6__* %22)
  store %struct.uld_ctx* %23, %struct.uld_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 8
  %25 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %26 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %25)
  %27 = call i32 @get_alg_config(%struct.TYPE_7__* %24, i32 %26)
  %28 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @roundup(i32 %30, i32 16)
  %32 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %34 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %33)
  %35 = call i64 @is_hmac(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %38, align 8
  %41 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %44

42:                                               ; preds = %1
  %43 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %5, align 8
  %46 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @HASH_SPACE_LEFT(i32 %49)
  %51 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %5, align 8
  %52 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @chcr_hash_ent_in_wr(i32 %47, i32 0, i32 %50, i32 %53)
  %55 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %5, align 8
  %59 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %63 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %44
  %67 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %68 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %5, align 8
  %71 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %66, %44
  %76 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %5, align 8
  %77 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %5, align 8
  %84 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %88 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %80, %75
  %92 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %93 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %92)
  %94 = call i64 @is_hmac(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sdiv i32 %98, 2
  store i32 %99, i32* %97, align 8
  %100 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %91
  %102 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 3
  store i32 0, i32* %102, align 8
  %103 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 4
  store i32 1, i32* %103, align 4
  %104 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i64 @rounddown(i64 %105, i32 %106)
  %108 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  store i64 %107, i64* %108, align 8
  %109 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 7
  store i32 %111, i32* %112, align 8
  %113 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 5
  store i64 0, i64* %113, align 8
  br label %127

114:                                              ; preds = %80
  %115 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 3
  store i32 1, i32* %115, align 8
  %116 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 4
  store i32 0, i32* %116, align 4
  %117 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %118 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %117)
  %119 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 7
  store i32 %118, i32* %119, align 8
  %120 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %122, %124
  %126 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 5
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %114, %101
  %128 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 6
  store i64 0, i64* %128, align 8
  %129 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %132 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, %130
  store i64 %134, i64* %132, align 8
  %135 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %136 = call %struct.sk_buff* @create_hash_wr(%struct.ahash_request* %135, %struct.hash_wr_param* %9)
  store %struct.sk_buff* %136, %struct.sk_buff** %8, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = call i64 @IS_ERR(%struct.sk_buff* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %127
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = call i32 @PTR_ERR(%struct.sk_buff* %141)
  store i32 %142, i32* %11, align 4
  br label %167

143:                                              ; preds = %127
  %144 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %9, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.chcr_hctx_per_wr*, %struct.chcr_hctx_per_wr** %5, align 8
  %147 = getelementptr inbounds %struct.chcr_hctx_per_wr, %struct.chcr_hctx_per_wr* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, %145
  store i64 %149, i64* %147, align 8
  %150 = load %struct.uld_ctx*, %struct.uld_ctx** %7, align 8
  %151 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %159 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %160 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %161 = call %struct.TYPE_6__* @h_ctx(%struct.crypto_ahash* %160)
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @set_wr_txq(%struct.sk_buff* %158, i32 %159, i32 %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %166 = call i32 @chcr_send_wr(%struct.sk_buff* %165)
  store i32 0, i32* %2, align 4
  br label %169

167:                                              ; preds = %140
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %167, %143
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local %struct.uld_ctx* @ULD_CTX(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @h_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @get_alg_config(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @is_hmac(i32) #1

declare dso_local i64 @chcr_hash_ent_in_wr(i32, i32, i32, i32) #1

declare dso_local i32 @HASH_SPACE_LEFT(i32) #1

declare dso_local i64 @rounddown(i64, i32) #1

declare dso_local %struct.sk_buff* @create_hash_wr(%struct.ahash_request*, %struct.hash_wr_param*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @chcr_send_wr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
