; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.s5p_aes_reqctx = type { i64 }
%struct.s5p_aes_ctx = type { %struct.s5p_aes_dev* }
%struct.s5p_aes_dev = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@FLAGS_AES_MODE_MASK = common dso_local global i64 0, align 8
@FLAGS_AES_CTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"request size is not exact amount of AES blocks\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i64)* @s5p_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_aes_crypt(%struct.ablkcipher_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.crypto_ablkcipher*, align 8
  %7 = alloca %struct.s5p_aes_reqctx*, align 8
  %8 = alloca %struct.s5p_aes_ctx*, align 8
  %9 = alloca %struct.s5p_aes_dev*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %11 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %10)
  store %struct.crypto_ablkcipher* %11, %struct.crypto_ablkcipher** %6, align 8
  %12 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %13 = call %struct.s5p_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %12)
  store %struct.s5p_aes_reqctx* %13, %struct.s5p_aes_reqctx** %7, align 8
  %14 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %6, align 8
  %15 = call %struct.s5p_aes_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %14)
  store %struct.s5p_aes_ctx* %15, %struct.s5p_aes_ctx** %8, align 8
  %16 = load %struct.s5p_aes_ctx*, %struct.s5p_aes_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.s5p_aes_ctx, %struct.s5p_aes_ctx* %16, i32 0, i32 0
  %18 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %17, align 8
  store %struct.s5p_aes_dev* %18, %struct.s5p_aes_dev** %9, align 8
  %19 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %20 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %26 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %29 = call i32 @IS_ALIGNED(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @FLAGS_AES_MODE_MASK, align 8
  %34 = and i64 %32, %33
  %35 = load i64, i64* @FLAGS_AES_CTR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %9, align 8
  %39 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %31, %24
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.s5p_aes_reqctx*, %struct.s5p_aes_reqctx** %7, align 8
  %47 = getelementptr inbounds %struct.s5p_aes_reqctx, %struct.s5p_aes_reqctx* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %9, align 8
  %49 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %50 = call i32 @s5p_aes_handle_req(%struct.s5p_aes_dev* %48, %struct.ablkcipher_request* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %37, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.s5p_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.s5p_aes_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @s5p_aes_handle_req(%struct.s5p_aes_dev*, %struct.ablkcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
