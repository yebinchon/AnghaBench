; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_handle_aead_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_handle_aead_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32)* }
%struct.chcr_aead_reqctx = type { i64 }
%struct.crypto_aead = type { i32 }
%struct.chcr_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.chcr_dev* }

@VERIFY_SW = common dso_local global i64 0, align 8
@VERIFY_HW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i8*, i32)* @chcr_handle_aead_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_handle_aead_resp(%struct.aead_request* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chcr_aead_reqctx*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca %struct.chcr_dev*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %11 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %10)
  store %struct.chcr_aead_reqctx* %11, %struct.chcr_aead_reqctx** %7, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %13 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %12)
  store %struct.crypto_aead* %13, %struct.crypto_aead** %8, align 8
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %15 = call %struct.TYPE_4__* @a_ctx(%struct.crypto_aead* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.chcr_dev*, %struct.chcr_dev** %16, align 8
  store %struct.chcr_dev* %17, %struct.chcr_dev** %9, align 8
  %18 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %19 = call i32 @chcr_aead_common_exit(%struct.aead_request* %18)
  %20 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %7, align 8
  %21 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VERIFY_SW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @chcr_verify_tag(%struct.aead_request* %26, i8* %27, i32* %6)
  %29 = load i64, i64* @VERIFY_HW, align 8
  %30 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %7, align 8
  %31 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %3
  %33 = load %struct.chcr_dev*, %struct.chcr_dev** %9, align 8
  %34 = call i32 @chcr_dec_wrcount(%struct.chcr_dev* %33)
  %35 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %37, align 8
  %39 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 %38(%struct.TYPE_3__* %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.TYPE_4__* @a_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @chcr_aead_common_exit(%struct.aead_request*) #1

declare dso_local i32 @chcr_verify_tag(%struct.aead_request*, i8*, i32*) #1

declare dso_local i32 @chcr_dec_wrcount(%struct.chcr_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
