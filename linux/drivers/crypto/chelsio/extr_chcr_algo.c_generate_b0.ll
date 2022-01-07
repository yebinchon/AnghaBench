; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_generate_b0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_generate_b0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i64 }
%struct.crypto_aead = type { i32 }
%struct.chcr_aead_reqctx = type { i32* }

@CHCR_DECRYPT_OP = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32*, i16)* @generate_b0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_b0(%struct.aead_request* %0, i32* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.crypto_aead*, align 8
  %12 = alloca %struct.chcr_aead_reqctx*, align 8
  %13 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32* %1, i32** %5, align 8
  store i16 %2, i16* %6, align 2
  %14 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %15 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %14)
  store %struct.crypto_aead* %15, %struct.crypto_aead** %11, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %17 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %16)
  store %struct.chcr_aead_reqctx* %17, %struct.chcr_aead_reqctx** %12, align 8
  %18 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %12, align 8
  %19 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %11, align 8
  %22 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %13, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @memcpy(i32* %23, i32* %24, i32 16)
  %26 = load i32*, i32** %13, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub i32 %31, 2
  %33 = udiv i32 %32, 2
  %34 = mul i32 8, %33
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %39 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %3
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 64
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %42, %3
  %47 = load i32*, i32** %13, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 16
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i16, i16* %6, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* @CHCR_DECRYPT_OP, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %60 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = sub nsw i64 %61, %63
  br label %69

65:                                               ; preds = %46
  %66 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %67 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  br label %69

69:                                               ; preds = %65, %58
  %70 = phi i64 [ %64, %58 ], [ %68, %65 ]
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @set_msg_len(i32* %52, i64 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @set_msg_len(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
