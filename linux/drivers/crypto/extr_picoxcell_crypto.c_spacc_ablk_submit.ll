; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_ablk_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_ablk_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spacc_req = type { i32, i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.crypto_tfm* }
%struct.crypto_tfm = type { %struct.crypto_alg* }
%struct.crypto_alg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.spacc_ablk_ctx = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.spacc_engine* }
%struct.spacc_engine = type { i64, i32 }
%struct.ablkcipher_request = type { i32, i32 }
%struct.spacc_alg = type { i32 }

@SPA_SRC_PTR_REG_OFFSET = common dso_local global i64 0, align 8
@SPA_DST_PTR_REG_OFFSET = common dso_local global i64 0, align 8
@SPA_OFFSET_REG_OFFSET = common dso_local global i64 0, align 8
@SPA_PROC_LEN_REG_OFFSET = common dso_local global i64 0, align 8
@SPA_ICV_OFFSET_REG_OFFSET = common dso_local global i64 0, align 8
@SPA_AUX_INFO_REG_OFFSET = common dso_local global i64 0, align 8
@SPA_AAD_LEN_REG_OFFSET = common dso_local global i64 0, align 8
@SPA_CTRL_CTX_IDX = common dso_local global i32 0, align 4
@SPA_CTRL_ENCRYPT_IDX = common dso_local global i32 0, align 4
@SPA_CTRL_KEY_EXP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PACKET_TIMEOUT = common dso_local global i64 0, align 8
@SPA_CTRL_REG_OFFSET = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spacc_req*)* @spacc_ablk_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spacc_ablk_submit(%struct.spacc_req* %0) #0 {
  %2 = alloca %struct.spacc_req*, align 8
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.spacc_ablk_ctx*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca %struct.crypto_alg*, align 8
  %7 = alloca %struct.spacc_alg*, align 8
  %8 = alloca %struct.spacc_engine*, align 8
  %9 = alloca i32, align 4
  store %struct.spacc_req* %0, %struct.spacc_req** %2, align 8
  %10 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %11 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %10, i32 0, i32 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %13, align 8
  store %struct.crypto_tfm* %14, %struct.crypto_tfm** %3, align 8
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %16 = call %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %15)
  store %struct.spacc_ablk_ctx* %16, %struct.spacc_ablk_ctx** %4, align 8
  %17 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %18 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %17, i32 0, i32 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.TYPE_6__* %19)
  store %struct.ablkcipher_request* %20, %struct.ablkcipher_request** %5, align 8
  %21 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %22 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %21, i32 0, i32 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.crypto_tfm*, %struct.crypto_tfm** %24, align 8
  %26 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %25, i32 0, i32 0
  %27 = load %struct.crypto_alg*, %struct.crypto_alg** %26, align 8
  store %struct.crypto_alg* %27, %struct.crypto_alg** %6, align 8
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %29 = call %struct.spacc_alg* @to_spacc_alg(%struct.crypto_alg* %28)
  store %struct.spacc_alg* %29, %struct.spacc_alg** %7, align 8
  %30 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.spacc_engine*, %struct.spacc_engine** %32, align 8
  store %struct.spacc_engine* %33, %struct.spacc_engine** %8, align 8
  %34 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %34, i32 0, i32 2
  %36 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %43 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %46 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @spacc_load_ctx(%struct.TYPE_5__* %35, i32 %38, i32 %41, i32 %44, i32 %48, i32* null, i32 0)
  %50 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %51 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %53 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.spacc_engine*, %struct.spacc_engine** %8, align 8
  %56 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SPA_SRC_PTR_REG_OFFSET, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %62 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.spacc_engine*, %struct.spacc_engine** %8, align 8
  %65 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SPA_DST_PTR_REG_OFFSET, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load %struct.spacc_engine*, %struct.spacc_engine** %8, align 8
  %71 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SPA_OFFSET_REG_OFFSET, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 0, i64 %74)
  %76 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %77 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.spacc_engine*, %struct.spacc_engine** %8, align 8
  %80 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SPA_PROC_LEN_REG_OFFSET, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load %struct.spacc_engine*, %struct.spacc_engine** %8, align 8
  %86 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SPA_ICV_OFFSET_REG_OFFSET, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i32 0, i64 %89)
  %91 = load %struct.spacc_engine*, %struct.spacc_engine** %8, align 8
  %92 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SPA_AUX_INFO_REG_OFFSET, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 0, i64 %95)
  %97 = load %struct.spacc_engine*, %struct.spacc_engine** %8, align 8
  %98 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SPA_AAD_LEN_REG_OFFSET, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 0, i64 %101)
  %103 = load %struct.spacc_alg*, %struct.spacc_alg** %7, align 8
  %104 = getelementptr inbounds %struct.spacc_alg, %struct.spacc_alg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %107 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SPA_CTRL_CTX_IDX, align 4
  %110 = shl i32 %108, %109
  %111 = or i32 %105, %110
  %112 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %113 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %1
  %117 = load i32, i32* @SPA_CTRL_ENCRYPT_IDX, align 4
  %118 = shl i32 1, %117
  br label %122

119:                                              ; preds = %1
  %120 = load i32, i32* @SPA_CTRL_KEY_EXP, align 4
  %121 = shl i32 1, %120
  br label %122

122:                                              ; preds = %119, %116
  %123 = phi i32 [ %118, %116 ], [ %121, %119 ]
  %124 = or i32 %111, %123
  store i32 %124, i32* %9, align 4
  %125 = load %struct.spacc_engine*, %struct.spacc_engine** %8, align 8
  %126 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %125, i32 0, i32 1
  %127 = load i64, i64* @jiffies, align 8
  %128 = load i64, i64* @PACKET_TIMEOUT, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @mod_timer(i32* %126, i64 %129)
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.spacc_engine*, %struct.spacc_engine** %8, align 8
  %133 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SPA_CTRL_REG_OFFSET, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @writel(i32 %131, i64 %136)
  %138 = load i32, i32* @EINPROGRESS, align 4
  %139 = sub nsw i32 0, %138
  ret i32 %139
}

declare dso_local %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.TYPE_6__*) #1

declare dso_local %struct.spacc_alg* @to_spacc_alg(%struct.crypto_alg*) #1

declare dso_local i32 @spacc_load_ctx(%struct.TYPE_5__*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
