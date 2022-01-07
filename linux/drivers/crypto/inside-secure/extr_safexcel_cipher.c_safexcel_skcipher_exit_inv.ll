; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_exit_inv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_exit_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.safexcel_cipher_req = type { i32 }
%struct.safexcel_inv_result = type { i32 }

@req = common dso_local global %struct.TYPE_7__* null, align 8
@skcipher = common dso_local global i32 0, align 4
@EIP197_SKCIPHER_REQ_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@safexcel_inv_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @safexcel_skcipher_exit_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_skcipher_exit_inv(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.safexcel_cipher_req*, align 8
  %4 = alloca %struct.safexcel_inv_result, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @req, align 8
  %6 = load i32, i32* @skcipher, align 4
  %7 = load i32, i32* @EIP197_SKCIPHER_REQ_SIZE, align 4
  %8 = call i32 @EIP197_REQUEST_ON_STACK(%struct.TYPE_7__* %5, i32 %6, i32 %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @req, align 8
  %10 = call %struct.safexcel_cipher_req* @skcipher_request_ctx(%struct.TYPE_7__* %9)
  store %struct.safexcel_cipher_req* %10, %struct.safexcel_cipher_req** %3, align 8
  %11 = bitcast %struct.safexcel_inv_result* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @req, align 8
  %13 = call i32 @memset(%struct.TYPE_7__* %12, i32 0, i32 4)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @req, align 8
  %15 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %16 = load i32, i32* @safexcel_inv_complete, align 4
  %17 = call i32 @skcipher_request_set_callback(%struct.TYPE_7__* %14, i32 %15, i32 %16, %struct.safexcel_inv_result* %4)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @req, align 8
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %20 = call i32 @__crypto_skcipher_cast(%struct.crypto_tfm* %19)
  %21 = call i32 @skcipher_request_set_tfm(%struct.TYPE_7__* %18, i32 %20)
  %22 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @req, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %3, align 8
  %26 = call i32 @safexcel_cipher_exit_inv(%struct.crypto_tfm* %22, i32* %24, %struct.safexcel_cipher_req* %25, %struct.safexcel_inv_result* %4)
  ret i32 %26
}

declare dso_local i32 @EIP197_REQUEST_ON_STACK(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.safexcel_cipher_req* @skcipher_request_ctx(%struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.TYPE_7__*, i32, i32, %struct.safexcel_inv_result*) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @__crypto_skcipher_cast(%struct.crypto_tfm*) #1

declare dso_local i32 @safexcel_cipher_exit_inv(%struct.crypto_tfm*, i32*, %struct.safexcel_cipher_req*, %struct.safexcel_inv_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
