; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_rfc4106_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_rfc4106_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i8*, i8*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.crypto_aead = type { i8* }
%struct.nitrox_crypto_ctx = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nitrox_rfc4106_rctx = type { %struct.nitrox_aead_rctx }
%struct.nitrox_aead_rctx = type { i8*, i8*, i8*, i32, i32, i32, i8*, i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.se_crypto_request }
%struct.se_crypto_request = type { i32 }

@GCM_RFC4106_IV_SIZE = common dso_local global i8* null, align 8
@DECRYPT = common dso_local global i32 0, align 4
@nitrox_rfc4106_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @nitrox_rfc4106_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_rfc4106_dec(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.nitrox_crypto_ctx*, align 8
  %6 = alloca %struct.nitrox_rfc4106_rctx*, align 8
  %7 = alloca %struct.nitrox_aead_rctx*, align 8
  %8 = alloca %struct.se_crypto_request*, align 8
  %9 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %11 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %10)
  store %struct.crypto_aead* %11, %struct.crypto_aead** %4, align 8
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %13 = call %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead* %12)
  store %struct.nitrox_crypto_ctx* %13, %struct.nitrox_crypto_ctx** %5, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %15 = call %struct.nitrox_rfc4106_rctx* @aead_request_ctx(%struct.aead_request* %14)
  store %struct.nitrox_rfc4106_rctx* %15, %struct.nitrox_rfc4106_rctx** %6, align 8
  %16 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %6, align 8
  %17 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %16, i32 0, i32 0
  store %struct.nitrox_aead_rctx* %17, %struct.nitrox_aead_rctx** %7, align 8
  %18 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %19 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.se_crypto_request* %20, %struct.se_crypto_request** %8, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %25 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %23 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %32 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %34 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** @GCM_RFC4106_IV_SIZE, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %42 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  %43 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %44 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @GCM_RFC4106_IV_SIZE, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %51 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr i8, i8* %52, i64 %49
  %54 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %55 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %57 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %60 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = ptrtoint i8* %58 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %67 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %69 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %72 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** @GCM_RFC4106_IV_SIZE, align 8
  %74 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %75 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %77 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %81 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %87 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @DECRYPT, align 4
  %89 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %90 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %92 = call i32 @nitrox_rfc4106_set_aead_rctx_sglist(%struct.aead_request* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %1
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %2, align 4
  br label %112

97:                                               ; preds = %1
  %98 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %7, align 8
  %99 = call i32 @nitrox_set_creq(%struct.nitrox_aead_rctx* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %2, align 4
  br label %112

104:                                              ; preds = %97
  %105 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %5, align 8
  %106 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.se_crypto_request*, %struct.se_crypto_request** %8, align 8
  %109 = load i32, i32* @nitrox_rfc4106_callback, align 4
  %110 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %111 = call i32 @nitrox_process_se_request(i32 %107, %struct.se_crypto_request* %108, i32 %109, %struct.aead_request* %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %104, %102, %95
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.nitrox_rfc4106_rctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @nitrox_rfc4106_set_aead_rctx_sglist(%struct.aead_request*) #1

declare dso_local i32 @nitrox_set_creq(%struct.nitrox_aead_rctx*) #1

declare dso_local i32 @nitrox_process_se_request(i32, %struct.se_crypto_request*, i32, %struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
