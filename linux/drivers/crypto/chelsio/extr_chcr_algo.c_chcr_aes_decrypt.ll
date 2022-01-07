; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.uld_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.chcr_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { i64, i32, %struct.chcr_dev* }

@ENXIO = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@CHCR_DECRYPT_OP = common dso_local global i32 0, align 4
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @chcr_aes_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_aes_decrypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca %struct.uld_ctx*, align 8
  %6 = alloca %struct.chcr_dev*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %11 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %10)
  store %struct.crypto_ablkcipher* %11, %struct.crypto_ablkcipher** %4, align 8
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %13 = call %struct.TYPE_7__* @c_ctx(%struct.crypto_ablkcipher* %12)
  %14 = call %struct.uld_ctx* @ULD_CTX(%struct.TYPE_7__* %13)
  store %struct.uld_ctx* %14, %struct.uld_ctx** %5, align 8
  %15 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %16 = call %struct.TYPE_7__* @c_ctx(%struct.crypto_ablkcipher* %15)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load %struct.chcr_dev*, %struct.chcr_dev** %17, align 8
  store %struct.chcr_dev* %18, %struct.chcr_dev** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.chcr_dev*, %struct.chcr_dev** %6, align 8
  %20 = call i32 @chcr_inc_wrcount(%struct.chcr_dev* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %101

26:                                               ; preds = %1
  %27 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %34 = call %struct.TYPE_7__* @c_ctx(%struct.crypto_ablkcipher* %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @cxgb4_is_crypto_q_full(i32 %32, i32 %36)
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  %41 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %42 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %101

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %54 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %59 = call %struct.TYPE_7__* @c_ctx(%struct.crypto_ablkcipher* %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CHCR_DECRYPT_OP, align 4
  %65 = call i32 @process_cipher(%struct.ablkcipher_request* %53, i32 %63, %struct.sk_buff** %7, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %52
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68, %52
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %101

73:                                               ; preds = %68
  %74 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %84 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %85 = call %struct.TYPE_7__* @c_ctx(%struct.crypto_ablkcipher* %84)
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @set_wr_txq(%struct.sk_buff* %82, i32 %83, i32 %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = call i32 @chcr_send_wr(%struct.sk_buff* %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %73
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  br label %99

96:                                               ; preds = %73
  %97 = load i32, i32* @EINPROGRESS, align 4
  %98 = sub nsw i32 0, %97
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i32 [ %95, %93 ], [ %98, %96 ]
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %71, %48, %23
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.uld_ctx* @ULD_CTX(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @c_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @chcr_inc_wrcount(%struct.chcr_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cxgb4_is_crypto_q_full(i32, i32) #1

declare dso_local i32 @process_cipher(%struct.ablkcipher_request*, i32, %struct.sk_buff**, i32) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @chcr_send_wr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
