; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.chcr_ahash_req_ctx = type { i64, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.chcr_dev = type { i32 }
%struct.hash_wr_param = type { i32, i64, i32, i64, i32, i32, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.uld_ctx = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.chcr_dev* }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @chcr_ahash_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_ahash_final(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.chcr_ahash_req_ctx*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.chcr_dev*, align 8
  %7 = alloca %struct.hash_wr_param, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.uld_ctx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.chcr_ahash_req_ctx* %13, %struct.chcr_ahash_req_ctx** %4, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %15 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %14)
  store %struct.crypto_ahash* %15, %struct.crypto_ahash** %5, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %17 = call %struct.TYPE_8__* @h_ctx(%struct.crypto_ahash* %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.chcr_dev*, %struct.chcr_dev** %18, align 8
  store %struct.chcr_dev* %19, %struct.chcr_dev** %6, align 8
  store %struct.uld_ctx* null, %struct.uld_ctx** %9, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %21 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %20)
  %22 = call i64 @crypto_tfm_alg_blocksize(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.chcr_dev*, %struct.chcr_dev** %6, align 8
  %26 = call i32 @chcr_inc_wrcount(%struct.chcr_dev* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %157

32:                                               ; preds = %1
  %33 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %34 = call i32 @chcr_init_hctx_per_wr(%struct.chcr_ahash_req_ctx* %33)
  %35 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %36 = call %struct.TYPE_8__* @h_ctx(%struct.crypto_ahash* %35)
  %37 = call %struct.uld_ctx* @ULD_CTX(%struct.TYPE_8__* %36)
  store %struct.uld_ctx* %37, %struct.uld_ctx** %9, align 8
  %38 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %39 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %38)
  %40 = call i64 @is_hmac(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %46

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 8
  %52 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %53 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %52)
  %54 = call i32 @get_alg_config(%struct.TYPE_9__* %51, i32 %53)
  %55 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @roundup(i32 %57, i32 16)
  %59 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %61 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %60)
  %62 = call i64 @is_hmac(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %46
  %65 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %67, 2
  store i32 %68, i32* %66, align 8
  br label %71

69:                                               ; preds = %46
  %70 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %69, %64
  %72 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 3
  store i64 %77, i64* %78, align 8
  %79 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %80, %82
  %84 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %85 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  %88 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %89 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %92 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %95 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %71
  %99 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %100 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %104 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @create_last_hash_block(i32 %101, i64 %102, i64 %105)
  %107 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 4
  store i32 0, i32* %107, align 8
  %108 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 5
  store i32 1, i32* %108, align 4
  %109 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 6
  store i64 0, i64* %109, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 3
  store i64 %110, i64* %111, align 8
  br label %119

112:                                              ; preds = %71
  %113 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %114 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 6
  store i64 %115, i64* %116, align 8
  %117 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 4
  store i32 1, i32* %117, align 8
  %118 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 5
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %112, %98
  %120 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %121 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %120)
  %122 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %7, i32 0, i32 7
  store i32 %121, i32* %122, align 8
  %123 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %124 = call %struct.sk_buff* @create_hash_wr(%struct.ahash_request* %123, %struct.hash_wr_param* %7)
  store %struct.sk_buff* %124, %struct.sk_buff** %8, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = call i64 @IS_ERR(%struct.sk_buff* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = call i32 @PTR_ERR(%struct.sk_buff* %129)
  store i32 %130, i32* %11, align 4
  br label %153

131:                                              ; preds = %119
  %132 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %4, align 8
  %133 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load %struct.uld_ctx*, %struct.uld_ctx** %9, align 8
  %135 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %143 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %144 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %145 = call %struct.TYPE_8__* @h_ctx(%struct.crypto_ahash* %144)
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @set_wr_txq(%struct.sk_buff* %142, i32 %143, i32 %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = call i32 @chcr_send_wr(%struct.sk_buff* %149)
  %151 = load i32, i32* @EINPROGRESS, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %157

153:                                              ; preds = %128
  %154 = load %struct.chcr_dev*, %struct.chcr_dev** %6, align 8
  %155 = call i32 @chcr_dec_wrcount(%struct.chcr_dev* %154)
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %153, %131, %29
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.TYPE_8__* @h_ctx(%struct.crypto_ahash*) #1

declare dso_local i64 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @chcr_inc_wrcount(%struct.chcr_dev*) #1

declare dso_local i32 @chcr_init_hctx_per_wr(%struct.chcr_ahash_req_ctx*) #1

declare dso_local %struct.uld_ctx* @ULD_CTX(%struct.TYPE_8__*) #1

declare dso_local i64 @is_hmac(i32) #1

declare dso_local i32 @get_alg_config(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @create_last_hash_block(i32, i64, i64) #1

declare dso_local %struct.sk_buff* @create_hash_wr(%struct.ahash_request*, %struct.hash_wr_param*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @chcr_send_wr(%struct.sk_buff*) #1

declare dso_local i32 @chcr_dec_wrcount(%struct.chcr_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
