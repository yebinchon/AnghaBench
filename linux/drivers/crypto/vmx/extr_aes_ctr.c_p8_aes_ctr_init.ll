; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_ctr.c_p8_aes_ctr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_ctr.c_p8_aes_ctr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.p8_aes_ctr_ctx = type { %struct.crypto_skcipher* }

@.str = private unnamed_addr constant [9 x i8] c"ctr(aes)\00", align 1
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to allocate ctr(aes) fallback: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*)* @p8_aes_ctr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p8_aes_ctr_init(%struct.crypto_skcipher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.p8_aes_ctr_ctx*, align 8
  %5 = alloca %struct.crypto_skcipher*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %3, align 8
  %6 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %7 = call %struct.p8_aes_ctr_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %6)
  store %struct.p8_aes_ctr_ctx* %7, %struct.p8_aes_ctr_ctx** %4, align 8
  %8 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %9 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.crypto_skcipher* @crypto_alloc_skcipher(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %10)
  store %struct.crypto_skcipher* %11, %struct.crypto_skcipher** %5, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %13 = call i64 @IS_ERR(%struct.crypto_skcipher* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %17 = call i32 @PTR_ERR(%struct.crypto_skcipher* %16)
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %20 = call i32 @PTR_ERR(%struct.crypto_skcipher* %19)
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %23 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %24 = call i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher* %23)
  %25 = add i64 4, %24
  %26 = call i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher* %22, i64 %25)
  %27 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %28 = load %struct.p8_aes_ctr_ctx*, %struct.p8_aes_ctr_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.p8_aes_ctr_ctx, %struct.p8_aes_ctr_ctx* %28, i32 0, i32 0
  store %struct.crypto_skcipher* %27, %struct.crypto_skcipher** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.p8_aes_ctr_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_skcipher* @crypto_alloc_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher*, i64) #1

declare dso_local i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
