; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.chcr_aead_reqctx = type { i32, i32 }

@VERIFY_HW = common dso_local global i32 0, align 4
@CHCR_ENCRYPT_OP = common dso_local global i32 0, align 4
@create_authenc_wr = common dso_local global i32 0, align 4
@create_aead_ccm_wr = common dso_local global i32 0, align 4
@create_gcm_wr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @chcr_aead_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_aead_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.chcr_aead_reqctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %6 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %7 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %6)
  store %struct.crypto_aead* %7, %struct.crypto_aead** %4, align 8
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %8)
  store %struct.chcr_aead_reqctx* %9, %struct.chcr_aead_reqctx** %5, align 8
  %10 = load i32, i32* @VERIFY_HW, align 4
  %11 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %5, align 8
  %12 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @CHCR_ENCRYPT_OP, align 4
  %14 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %5, align 8
  %15 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %17 = call i32 @get_aead_subtype(%struct.crypto_aead* %16)
  switch i32 %17, label %26 [
    i32 128, label %18
    i32 130, label %18
    i32 131, label %18
    i32 129, label %18
    i32 133, label %22
    i32 132, label %22
  ]

18:                                               ; preds = %1, %1, %1, %1
  %19 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %20 = load i32, i32* @create_authenc_wr, align 4
  %21 = call i32 @chcr_aead_op(%struct.aead_request* %19, i32 0, i32 %20)
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %1, %1
  %23 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %24 = load i32, i32* @create_aead_ccm_wr, align 4
  %25 = call i32 @chcr_aead_op(%struct.aead_request* %23, i32 0, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %28 = load i32, i32* @create_gcm_wr, align 4
  %29 = call i32 @chcr_aead_op(%struct.aead_request* %27, i32 0, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %22, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @get_aead_subtype(%struct.crypto_aead*) #1

declare dso_local i32 @chcr_aead_op(%struct.aead_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
