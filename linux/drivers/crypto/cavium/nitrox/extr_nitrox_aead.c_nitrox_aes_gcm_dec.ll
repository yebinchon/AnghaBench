; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aes_gcm_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aes_gcm_dec.c"
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
@DECRYPT = common dso_local global i32 0, align 4
@nitrox_aead_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @nitrox_aes_gcm_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_aes_gcm_dec(%struct.aead_request* %0) #0 {
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
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %36 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %40 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %39, i32 0, i32 10
  store i64 %38, i64* %40, align 8
  %41 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %42 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %45 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %44, i32 0, i32 9
  store i64 %43, i64* %45, align 8
  %46 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %47 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %50 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %54 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %53, i32 0, i32 7
  store i64 %52, i64* %54, align 8
  %55 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %56 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %59 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %63 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %62, i32 0, i32 8
  store i64 %61, i64* %63, align 8
  %64 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %65 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @GCM_AES_SALT_SIZE, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %70 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %69, i32 0, i32 6
  store i32* %68, i32** %70, align 8
  %71 = load i64, i64* @GCM_AES_IV_SIZE, align 8
  %72 = load i64, i64* @GCM_AES_SALT_SIZE, align 8
  %73 = sub i64 %71, %72
  %74 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %75 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %74, i32 0, i32 5
  store i64 %73, i64* %75, align 8
  %76 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %77 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %81 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %87 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %89 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %92 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %94 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %97 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @DECRYPT, align 4
  %99 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %100 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %102 = call i32 @nitrox_set_creq(%struct.nitrox_aead_rctx* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %1
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %2, align 4
  br label %115

107:                                              ; preds = %1
  %108 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %5, align 8
  %109 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.se_crypto_request*, %struct.se_crypto_request** %7, align 8
  %112 = load i32, i32* @nitrox_aead_callback, align 4
  %113 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %114 = call i32 @nitrox_process_se_request(i32 %110, %struct.se_crypto_request* %111, i32 %112, %struct.aead_request* %113)
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %107, %105
  %116 = load i32, i32* %2, align 4
  ret i32 %116
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
