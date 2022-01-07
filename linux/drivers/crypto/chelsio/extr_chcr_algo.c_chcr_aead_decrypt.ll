; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i64 }
%struct.chcr_aead_reqctx = type { i32, i64 }

@VERIFY_SW = common dso_local global i64 0, align 8
@VERIFY_HW = common dso_local global i64 0, align 8
@CHCR_DECRYPT_OP = common dso_local global i32 0, align 4
@create_authenc_wr = common dso_local global i32 0, align 4
@create_aead_ccm_wr = common dso_local global i32 0, align 4
@create_gcm_wr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @chcr_aead_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_aead_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.chcr_aead_ctx*, align 8
  %6 = alloca %struct.chcr_aead_reqctx*, align 8
  %7 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %8)
  store %struct.crypto_aead* %9, %struct.crypto_aead** %4, align 8
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %11 = call i32 @a_ctx(%struct.crypto_aead* %10)
  %12 = call %struct.chcr_aead_ctx* @AEAD_CTX(i32 %11)
  store %struct.chcr_aead_ctx* %12, %struct.chcr_aead_ctx** %5, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %13)
  store %struct.chcr_aead_reqctx* %14, %struct.chcr_aead_reqctx** %6, align 8
  %15 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VERIFY_SW, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %22 = call i32 @crypto_aead_maxauthsize(%struct.crypto_aead* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* @VERIFY_SW, align 8
  %24 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %6, align 8
  %25 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %30

26:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %27 = load i64, i64* @VERIFY_HW, align 8
  %28 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %6, align 8
  %29 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32, i32* @CHCR_DECRYPT_OP, align 4
  %32 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %6, align 8
  %33 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %35 = call i32 @get_aead_subtype(%struct.crypto_aead* %34)
  switch i32 %35, label %46 [
    i32 130, label %36
    i32 128, label %36
    i32 131, label %36
    i32 129, label %36
    i32 133, label %41
    i32 132, label %41
  ]

36:                                               ; preds = %30, %30, %30, %30
  %37 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @create_authenc_wr, align 4
  %40 = call i32 @chcr_aead_op(%struct.aead_request* %37, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %51

41:                                               ; preds = %30, %30
  %42 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @create_aead_ccm_wr, align 4
  %45 = call i32 @chcr_aead_op(%struct.aead_request* %42, i32 %43, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %51

46:                                               ; preds = %30
  %47 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @create_gcm_wr, align 4
  %50 = call i32 @chcr_aead_op(%struct.aead_request* %47, i32 %48, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %41, %36
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(i32) #1

declare dso_local i32 @a_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_maxauthsize(%struct.crypto_aead*) #1

declare dso_local i32 @get_aead_subtype(%struct.crypto_aead*) #1

declare dso_local i32 @chcr_aead_op(%struct.aead_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
