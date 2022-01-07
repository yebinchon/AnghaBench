; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.artpec6_cryptotfm_context = type { i32, i32, i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"counter %x will overflow (nblks %u), falling back\0A\00", align 1
@subreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32)* @artpec6_crypto_ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_ctr_crypt(%struct.skcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_skcipher*, align 8
  %7 = alloca %struct.artpec6_cryptotfm_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %13 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %12)
  store %struct.crypto_skcipher* %13, %struct.crypto_skcipher** %6, align 8
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %15 = call %struct.artpec6_cryptotfm_context* @crypto_skcipher_ctx(%struct.crypto_skcipher* %14)
  store %struct.artpec6_cryptotfm_context* %15, %struct.artpec6_cryptotfm_context** %7, align 8
  %16 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %17 = call i64 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %19 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %20, %21
  %23 = sub i64 %22, 4
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @be32_to_cpup(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %27 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %30 = call i32 @ALIGN(i32 %28, i32 %29)
  %31 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %32 = udiv i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %102

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %40, %41
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.artpec6_cryptotfm_context*, %struct.artpec6_cryptotfm_context** %7, align 8
  %45 = getelementptr inbounds %struct.artpec6_cryptotfm_context, %struct.artpec6_cryptotfm_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.artpec6_cryptotfm_context*, %struct.artpec6_cryptotfm_context** %7, align 8
  %48 = getelementptr inbounds %struct.artpec6_cryptotfm_context, %struct.artpec6_cryptotfm_context* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.artpec6_cryptotfm_context*, %struct.artpec6_cryptotfm_context** %7, align 8
  %51 = getelementptr inbounds %struct.artpec6_cryptotfm_context, %struct.artpec6_cryptotfm_context* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @crypto_sync_skcipher_setkey(i32 %46, i32 %49, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %3, align 4
  br label %113

58:                                               ; preds = %38
  %59 = load i32, i32* @subreq, align 4
  %60 = load %struct.artpec6_cryptotfm_context*, %struct.artpec6_cryptotfm_context** %7, align 8
  %61 = getelementptr inbounds %struct.artpec6_cryptotfm_context, %struct.artpec6_cryptotfm_context* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %59, i32 %62)
  %64 = load i32, i32* @subreq, align 4
  %65 = load %struct.artpec6_cryptotfm_context*, %struct.artpec6_cryptotfm_context** %7, align 8
  %66 = getelementptr inbounds %struct.artpec6_cryptotfm_context, %struct.artpec6_cryptotfm_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @skcipher_request_set_sync_tfm(i32 %64, i32 %67)
  %69 = load i32, i32* @subreq, align 4
  %70 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %71 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @skcipher_request_set_callback(i32 %69, i32 %73, i32* null, i32* null)
  %75 = load i32, i32* @subreq, align 4
  %76 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %77 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %80 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %83 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %86 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @skcipher_request_set_crypt(i32 %75, i32 %78, i32 %81, i32 %84, i64 %87)
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %58
  %92 = load i32, i32* @subreq, align 4
  %93 = call i32 @crypto_skcipher_encrypt(i32 %92)
  br label %97

94:                                               ; preds = %58
  %95 = load i32, i32* @subreq, align 4
  %96 = call i32 @crypto_skcipher_decrypt(i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i32 [ %93, %91 ], [ %96, %94 ]
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* @subreq, align 4
  %100 = call i32 @skcipher_request_zero(i32 %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %3, align 4
  br label %113

102:                                              ; preds = %2
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %107 = call i32 @artpec6_crypto_encrypt(%struct.skcipher_request* %106)
  br label %111

108:                                              ; preds = %102
  %109 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %110 = call i32 @artpec6_crypto_decrypt(%struct.skcipher_request* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi i32 [ %107, %105 ], [ %110, %108 ]
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %97, %56
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.artpec6_cryptotfm_context* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i64 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @crypto_sync_skcipher_setkey(i32, i32, i32) #1

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, i32, i32, i32, i64) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

declare dso_local i32 @artpec6_crypto_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @artpec6_crypto_decrypt(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
