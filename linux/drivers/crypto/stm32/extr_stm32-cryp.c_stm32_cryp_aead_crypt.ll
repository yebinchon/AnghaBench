; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_aead_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_aead_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.stm32_cryp_ctx = type { i32 }
%struct.stm32_cryp_reqctx = type { i64 }
%struct.stm32_cryp = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i64)* @stm32_cryp_aead_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_aead_crypt(%struct.aead_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stm32_cryp_ctx*, align 8
  %7 = alloca %struct.stm32_cryp_reqctx*, align 8
  %8 = alloca %struct.stm32_cryp*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %10 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %9)
  %11 = call %struct.stm32_cryp_ctx* @crypto_aead_ctx(i32 %10)
  store %struct.stm32_cryp_ctx* %11, %struct.stm32_cryp_ctx** %6, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %13 = call %struct.stm32_cryp_reqctx* @aead_request_ctx(%struct.aead_request* %12)
  store %struct.stm32_cryp_reqctx* %13, %struct.stm32_cryp_reqctx** %7, align 8
  %14 = load %struct.stm32_cryp_ctx*, %struct.stm32_cryp_ctx** %6, align 8
  %15 = call %struct.stm32_cryp* @stm32_cryp_find_dev(%struct.stm32_cryp_ctx* %14)
  store %struct.stm32_cryp* %15, %struct.stm32_cryp** %8, align 8
  %16 = load %struct.stm32_cryp*, %struct.stm32_cryp** %8, align 8
  %17 = icmp ne %struct.stm32_cryp* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.stm32_cryp_reqctx*, %struct.stm32_cryp_reqctx** %7, align 8
  %24 = getelementptr inbounds %struct.stm32_cryp_reqctx, %struct.stm32_cryp_reqctx* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.stm32_cryp*, %struct.stm32_cryp** %8, align 8
  %26 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %29 = call i32 @crypto_transfer_aead_request_to_engine(i32 %27, %struct.aead_request* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.stm32_cryp_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.stm32_cryp_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.stm32_cryp* @stm32_cryp_find_dev(%struct.stm32_cryp_ctx*) #1

declare dso_local i32 @crypto_transfer_aead_request_to_engine(i32, %struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
