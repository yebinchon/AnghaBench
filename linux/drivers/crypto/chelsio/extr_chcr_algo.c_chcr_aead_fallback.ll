; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_aead_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.chcr_aead_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i16)* @chcr_aead_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_aead_fallback(%struct.aead_request* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca %struct.chcr_aead_ctx*, align 8
  %7 = alloca %struct.aead_request*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %8)
  store %struct.crypto_aead* %9, %struct.crypto_aead** %5, align 8
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %11 = call i32 @a_ctx(%struct.crypto_aead* %10)
  %12 = call %struct.chcr_aead_ctx* @AEAD_CTX(i32 %11)
  store %struct.chcr_aead_ctx* %12, %struct.chcr_aead_ctx** %6, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call %struct.aead_request* @aead_request_ctx(%struct.aead_request* %13)
  store %struct.aead_request* %14, %struct.aead_request** %7, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %16 = load %struct.chcr_aead_ctx*, %struct.chcr_aead_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.chcr_aead_ctx, %struct.chcr_aead_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @aead_request_set_tfm(%struct.aead_request* %15, i32 %18)
  %20 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %30 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @aead_request_set_callback(%struct.aead_request* %20, i32 %24, i32 %28, i32 %32)
  %34 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %35 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %39 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %42 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %45 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @aead_request_set_crypt(%struct.aead_request* %34, i32 %37, i32 %40, i32 %43, i32 %46)
  %48 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %49 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %50 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @aead_request_set_ad(%struct.aead_request* %48, i32 %51)
  %53 = load i16, i16* %4, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %2
  %57 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %58 = call i32 @crypto_aead_decrypt(%struct.aead_request* %57)
  br label %62

59:                                               ; preds = %2
  %60 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %61 = call i32 @crypto_aead_encrypt(%struct.aead_request* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i32 [ %58, %56 ], [ %61, %59 ]
  ret i32 %63
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chcr_aead_ctx* @AEAD_CTX(i32) #1

declare dso_local i32 @a_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_request* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, i32, i32, i32, i32) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
