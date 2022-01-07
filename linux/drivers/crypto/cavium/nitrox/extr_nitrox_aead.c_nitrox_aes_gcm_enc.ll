; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aes_gcm_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aes_gcm_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, %struct.TYPE_7__, i32*, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.crypto_aead = type { i64 }
%struct.nitrox_crypto_ctx = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.flexi_crypto_context* }
%struct.flexi_crypto_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nitrox_aead_rctx = type { i32, i32, i32, i32, i32, i64, i32*, i64, i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.se_crypto_request }
%struct.se_crypto_request = type { i32 }

@GCM_AES_SALT_SIZE = common dso_local global i64 0, align 8
@GCM_AES_IV_SIZE = common dso_local global i64 0, align 8
@ENCRYPT = common dso_local global i32 0, align 4
@nitrox_aead_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @nitrox_aes_gcm_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_aes_gcm_enc(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.nitrox_crypto_ctx*, align 8
  %6 = alloca %struct.nitrox_aead_rctx*, align 8
  %7 = alloca %struct.se_crypto_request*, align 8
  %8 = alloca %struct.flexi_crypto_context*, align 8
  %9 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %11 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %10)
  store %struct.crypto_aead* %11, %struct.crypto_aead** %4, align 8
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %13 = call %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead* %12)
  store %struct.nitrox_crypto_ctx* %13, %struct.nitrox_crypto_ctx** %5, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %15 = call %struct.nitrox_aead_rctx* @aead_request_ctx(%struct.aead_request* %14)
  store %struct.nitrox_aead_rctx* %15, %struct.nitrox_aead_rctx** %6, align 8
  %16 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %17 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %16, i32 0, i32 11
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.se_crypto_request* %18, %struct.se_crypto_request** %7, align 8
  %19 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %21, align 8
  store %struct.flexi_crypto_context* %22, %struct.flexi_crypto_context** %8, align 8
  %23 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %8, align 8
  %24 = getelementptr inbounds %struct.flexi_crypto_context, %struct.flexi_crypto_context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %28 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @GCM_AES_SALT_SIZE, align 8
  %31 = call i32 @memcpy(i32 %26, i32* %29, i64 %30)
  %32 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %36 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %35, i32 0, i32 10
  store i64 %34, i64* %36, align 8
  %37 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %38 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %41 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %40, i32 0, i32 9
  store i64 %39, i64* %41, align 8
  %42 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %46 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %50 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %49, i32 0, i32 7
  store i64 %48, i64* %50, align 8
  %51 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %52 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %55 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %59 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %58, i32 0, i32 8
  store i64 %57, i64* %59, align 8
  %60 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %61 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @GCM_AES_SALT_SIZE, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %66 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %65, i32 0, i32 6
  store i32* %64, i32** %66, align 8
  %67 = load i64, i64* @GCM_AES_IV_SIZE, align 8
  %68 = load i64, i64* @GCM_AES_SALT_SIZE, align 8
  %69 = sub i64 %67, %68
  %70 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %71 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %70, i32 0, i32 5
  store i64 %69, i64* %71, align 8
  %72 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %73 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %77 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %83 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %85 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %88 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %90 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %93 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @ENCRYPT, align 4
  %95 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %96 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %98 = call i32 @nitrox_set_creq(%struct.nitrox_aead_rctx* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %1
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %2, align 4
  br label %111

103:                                              ; preds = %1
  %104 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %5, align 8
  %105 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %108 = load i32, i32* @nitrox_aead_callback, align 4
  %109 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %110 = call i32 @nitrox_process_se_request(i32 %106, %struct.se_crypto_request* %107, i32 %108, %struct.aead_request* %109)
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %103, %101
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.nitrox_aead_rctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @nitrox_set_creq(%struct.nitrox_aead_rctx*) #1

declare dso_local i32 @nitrox_process_se_request(i32, %struct.se_crypto_request*, i32, %struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
