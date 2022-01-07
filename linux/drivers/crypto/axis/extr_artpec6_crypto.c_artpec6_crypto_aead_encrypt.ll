; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_aead_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_aead_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.artpec6_crypto_aead_req_ctx = type { i32, i32 }

@artpec6_crypto_complete_aead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @artpec6_crypto_aead_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_aead_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.artpec6_crypto_aead_req_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %6 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %7 = call %struct.artpec6_crypto_aead_req_ctx* @aead_request_ctx(%struct.aead_request* %6)
  store %struct.artpec6_crypto_aead_req_ctx* %7, %struct.artpec6_crypto_aead_req_ctx** %5, align 8
  %8 = load %struct.artpec6_crypto_aead_req_ctx*, %struct.artpec6_crypto_aead_req_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.artpec6_crypto_aead_req_ctx, %struct.artpec6_crypto_aead_req_ctx* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.artpec6_crypto_aead_req_ctx*, %struct.artpec6_crypto_aead_req_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.artpec6_crypto_aead_req_ctx, %struct.artpec6_crypto_aead_req_ctx* %10, i32 0, i32 1
  %12 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %13 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %12, i32 0, i32 0
  %14 = load i32, i32* @artpec6_crypto_complete_aead, align 4
  %15 = call i32 @artpec6_crypto_common_init(i32* %11, i32* %13, i32 %14, i32* null, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %22 = call i32 @artpec6_crypto_prepare_aead(%struct.aead_request* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.artpec6_crypto_aead_req_ctx*, %struct.artpec6_crypto_aead_req_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.artpec6_crypto_aead_req_ctx, %struct.artpec6_crypto_aead_req_ctx* %26, i32 0, i32 1
  %28 = call i32 @artpec6_crypto_common_destroy(i32* %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %20
  %31 = load %struct.artpec6_crypto_aead_req_ctx*, %struct.artpec6_crypto_aead_req_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.artpec6_crypto_aead_req_ctx, %struct.artpec6_crypto_aead_req_ctx* %31, i32 0, i32 1
  %33 = call i32 @artpec6_crypto_submit(i32* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %25, %18
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.artpec6_crypto_aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @artpec6_crypto_common_init(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @artpec6_crypto_prepare_aead(%struct.aead_request*) #1

declare dso_local i32 @artpec6_crypto_common_destroy(i32*) #1

declare dso_local i32 @artpec6_crypto_submit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
