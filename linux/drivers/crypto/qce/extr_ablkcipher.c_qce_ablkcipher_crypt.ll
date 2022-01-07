; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_ablkcipher.c_qce_ablkcipher_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_ablkcipher.c_qce_ablkcipher_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.qce_cipher_ctx = type { i64, i32 }
%struct.qce_cipher_reqctx = type { i32 }
%struct.qce_alg_template = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, %struct.TYPE_4__*)* }

@QCE_ENCRYPT = common dso_local global i32 0, align 4
@QCE_DECRYPT = common dso_local global i32 0, align 4
@AES_KEYSIZE_128 = common dso_local global i64 0, align 8
@AES_KEYSIZE_256 = common dso_local global i64 0, align 8
@subreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32)* @qce_ablkcipher_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ablkcipher_crypt(%struct.ablkcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca %struct.qce_cipher_ctx*, align 8
  %8 = alloca %struct.qce_cipher_reqctx*, align 8
  %9 = alloca %struct.qce_alg_template*, align 8
  %10 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %12 = call i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %11)
  %13 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(i32 %12)
  store %struct.crypto_tfm* %13, %struct.crypto_tfm** %6, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %15 = call %struct.qce_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.qce_cipher_ctx* %15, %struct.qce_cipher_ctx** %7, align 8
  %16 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %17 = call %struct.qce_cipher_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %16)
  store %struct.qce_cipher_reqctx* %17, %struct.qce_cipher_reqctx** %8, align 8
  %18 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %19 = call %struct.qce_alg_template* @to_cipher_tmpl(%struct.crypto_tfm* %18)
  store %struct.qce_alg_template* %19, %struct.qce_alg_template** %9, align 8
  %20 = load %struct.qce_alg_template*, %struct.qce_alg_template** %9, align 8
  %21 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %8, align 8
  %24 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @QCE_ENCRYPT, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @QCE_DECRYPT, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %8, align 8
  %34 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.qce_cipher_reqctx*, %struct.qce_cipher_reqctx** %8, align 8
  %38 = getelementptr inbounds %struct.qce_cipher_reqctx, %struct.qce_cipher_reqctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_AES(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %98

42:                                               ; preds = %31
  %43 = load %struct.qce_cipher_ctx*, %struct.qce_cipher_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.qce_cipher_ctx, %struct.qce_cipher_ctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AES_KEYSIZE_128, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %98

48:                                               ; preds = %42
  %49 = load %struct.qce_cipher_ctx*, %struct.qce_cipher_ctx** %7, align 8
  %50 = getelementptr inbounds %struct.qce_cipher_ctx, %struct.qce_cipher_ctx* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AES_KEYSIZE_256, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %48
  %55 = load i32, i32* @subreq, align 4
  %56 = load %struct.qce_cipher_ctx*, %struct.qce_cipher_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.qce_cipher_ctx, %struct.qce_cipher_ctx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %55, i32 %58)
  %60 = load i32, i32* @subreq, align 4
  %61 = load %struct.qce_cipher_ctx*, %struct.qce_cipher_ctx** %7, align 8
  %62 = getelementptr inbounds %struct.qce_cipher_ctx, %struct.qce_cipher_ctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @skcipher_request_set_sync_tfm(i32 %60, i32 %63)
  %65 = load i32, i32* @subreq, align 4
  %66 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %67 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @skcipher_request_set_callback(i32 %65, i32 %69, i32* null, i32* null)
  %71 = load i32, i32* @subreq, align 4
  %72 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %73 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %76 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %79 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %82 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @skcipher_request_set_crypt(i32 %71, i32 %74, i32 %77, i32 %80, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %54
  %88 = load i32, i32* @subreq, align 4
  %89 = call i32 @crypto_skcipher_encrypt(i32 %88)
  br label %93

90:                                               ; preds = %54
  %91 = load i32, i32* @subreq, align 4
  %92 = call i32 @crypto_skcipher_decrypt(i32 %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i32 [ %89, %87 ], [ %92, %90 ]
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* @subreq, align 4
  %96 = call i32 @skcipher_request_zero(i32 %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %110

98:                                               ; preds = %48, %42, %31
  %99 = load %struct.qce_alg_template*, %struct.qce_alg_template** %9, align 8
  %100 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_3__*, %struct.TYPE_4__*)*, i32 (%struct.TYPE_3__*, %struct.TYPE_4__*)** %102, align 8
  %104 = load %struct.qce_alg_template*, %struct.qce_alg_template** %9, align 8
  %105 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %108 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %107, i32 0, i32 0
  %109 = call i32 %103(%struct.TYPE_3__* %106, %struct.TYPE_4__* %108)
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %98, %93
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(i32) #1

declare dso_local i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.qce_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.qce_cipher_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.qce_alg_template* @to_cipher_tmpl(%struct.crypto_tfm*) #1

declare dso_local i64 @IS_AES(i32) #1

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
