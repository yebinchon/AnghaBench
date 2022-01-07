; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-rsa.c_ccp_rsa_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-rsa.c_ccp_rsa_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32, i32, i32, i32 }
%struct.crypto_akcipher = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ccp_rsa_req_ctx = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32*, i32, i32*, i32 }

@CCP_ENGINE_RSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*, i32)* @ccp_rsa_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_rsa_crypt(%struct.akcipher_request* %0, i32 %1) #0 {
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_akcipher*, align 8
  %6 = alloca %struct.ccp_ctx*, align 8
  %7 = alloca %struct.ccp_rsa_req_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %10 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %9)
  store %struct.crypto_akcipher* %10, %struct.crypto_akcipher** %5, align 8
  %11 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %5, align 8
  %12 = call %struct.ccp_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %11)
  store %struct.ccp_ctx* %12, %struct.ccp_ctx** %6, align 8
  %13 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %14 = call %struct.ccp_rsa_req_ctx* @akcipher_request_ctx(%struct.akcipher_request* %13)
  store %struct.ccp_rsa_req_ctx* %14, %struct.ccp_rsa_req_ctx** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %15, i32 0, i32 0
  %17 = call i32 @memset(%struct.TYPE_11__* %16, i32 0, i32 56)
  %18 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load i32, i32* @CCP_ENGINE_RSA, align 4
  %23 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 7
  store i32 %30, i32* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %2
  %39 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  %43 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 6
  store i32* %42, i32** %47, align 8
  %48 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %54 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 5
  store i32 %52, i32* %57, align 8
  br label %78

58:                                               ; preds = %2
  %59 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 6
  store i32* %62, i32** %67, align 8
  %68 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %74 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 5
  store i32 %72, i32* %77, align 8
  br label %78

78:                                               ; preds = %58, %38
  %79 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %84 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 4
  store i32* %82, i32** %87, align 8
  %88 = load %struct.ccp_ctx*, %struct.ccp_ctx** %6, align 8
  %89 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %94 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  store i32 %92, i32* %97, align 4
  %98 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %99 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %102 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  store i32 %100, i32* %105, align 8
  %106 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %107 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %110 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  store i32 %108, i32* %113, align 4
  %114 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %115 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %118 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32 %116, i32* %121, align 8
  %122 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %123 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %122, i32 0, i32 0
  %124 = load %struct.ccp_rsa_req_ctx*, %struct.ccp_rsa_req_ctx** %7, align 8
  %125 = getelementptr inbounds %struct.ccp_rsa_req_ctx, %struct.ccp_rsa_req_ctx* %124, i32 0, i32 0
  %126 = call i32 @ccp_crypto_enqueue_request(i32* %123, %struct.TYPE_11__* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  ret i32 %127
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.ccp_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local %struct.ccp_rsa_req_ctx* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ccp_crypto_enqueue_request(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
