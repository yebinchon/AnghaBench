; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_ccm_format_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_ccm_format_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32* }
%struct.chcr_aead_reqctx = type { i64 }
%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32* }

@CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32*, i32, i16, i32)* @ccm_format_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_format_packet(%struct.aead_request* %0, i32* %1, i32 %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca %struct.chcr_aead_reqctx*, align 8
  %12 = alloca %struct.crypto_aead*, align 8
  %13 = alloca %struct.chcr_aead_ctx*, align 8
  %14 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  store i32 %4, i32* %10, align 4
  %15 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %16 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %15)
  store %struct.chcr_aead_reqctx* %16, %struct.chcr_aead_reqctx** %11, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %18 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %12, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %12, align 8
  %20 = call i32 @a_ctx(%struct.crypto_aead* %19)
  %21 = call %struct.chcr_aead_ctx* @AEAD_CTX(i32 %20)
  store %struct.chcr_aead_ctx* %21, %struct.chcr_aead_ctx** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 3, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %13, align 8
  %31 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i32 @memcpy(i32* %29, i32* %33, i32 3)
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %38 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @memcpy(i32* %36, i32* %39, i32 8)
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 12
  %43 = call i32 @memset(i32* %42, i32 0, i32 4)
  br label %50

44:                                               ; preds = %5
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %47 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @memcpy(i32* %45, i32* %48, i32 16)
  br label %50

50:                                               ; preds = %44, %25
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = call zeroext i16 @htons(i32 %54)
  %56 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %11, align 8
  %57 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 16
  %60 = inttoptr i64 %59 to i16*
  store i16 %55, i16* %60, align 2
  br label %61

61:                                               ; preds = %53, %50
  %62 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i16, i16* %9, align 2
  %65 = call i32 @generate_b0(%struct.aead_request* %62, i32* %63, i16 zeroext %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 15
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @memset(i32* %73, i32 0, i32 %77)
  %79 = load i32, i32* %14, align 4
  ret i32 %79
}

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(i32) #1

declare dso_local i32 @a_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local zeroext i16 @htons(i32) #1

declare dso_local i32 @generate_b0(%struct.aead_request*, i32*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
