; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, i64, i32, i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.atmel_aes_base_ctx = type { i32, i32 }
%struct.atmel_aes_reqctx = type { i64, i32 }
%struct.atmel_aes_dev = type { i32 }

@AES_FLAGS_OPMODE_MASK = common dso_local global i64 0, align 8
@CFB8_BLOCK_SIZE = common dso_local global i32 0, align 4
@CFB16_BLOCK_SIZE = common dso_local global i32 0, align 4
@CFB32_BLOCK_SIZE = common dso_local global i32 0, align 4
@CFB64_BLOCK_SIZE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@AES_FLAGS_ENCRYPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i64)* @atmel_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_crypt(%struct.ablkcipher_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.crypto_ablkcipher*, align 8
  %7 = alloca %struct.atmel_aes_base_ctx*, align 8
  %8 = alloca %struct.atmel_aes_reqctx*, align 8
  %9 = alloca %struct.atmel_aes_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %12 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %11)
  store %struct.crypto_ablkcipher* %12, %struct.crypto_ablkcipher** %6, align 8
  %13 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %6, align 8
  %14 = call %struct.atmel_aes_base_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %13)
  store %struct.atmel_aes_base_ctx* %14, %struct.atmel_aes_base_ctx** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @AES_FLAGS_OPMODE_MASK, align 8
  %17 = and i64 %15, %16
  switch i64 %17, label %34 [
    i64 128, label %18
    i64 131, label %22
    i64 130, label %26
    i64 129, label %30
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @CFB8_BLOCK_SIZE, align 4
  %20 = load %struct.atmel_aes_base_ctx*, %struct.atmel_aes_base_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.atmel_aes_base_ctx, %struct.atmel_aes_base_ctx* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load i32, i32* @CFB16_BLOCK_SIZE, align 4
  %24 = load %struct.atmel_aes_base_ctx*, %struct.atmel_aes_base_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.atmel_aes_base_ctx, %struct.atmel_aes_base_ctx* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %38

26:                                               ; preds = %2
  %27 = load i32, i32* @CFB32_BLOCK_SIZE, align 4
  %28 = load %struct.atmel_aes_base_ctx*, %struct.atmel_aes_base_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.atmel_aes_base_ctx, %struct.atmel_aes_base_ctx* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* @CFB64_BLOCK_SIZE, align 4
  %32 = load %struct.atmel_aes_base_ctx*, %struct.atmel_aes_base_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.atmel_aes_base_ctx, %struct.atmel_aes_base_ctx* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %36 = load %struct.atmel_aes_base_ctx*, %struct.atmel_aes_base_ctx** %7, align 8
  %37 = getelementptr inbounds %struct.atmel_aes_base_ctx, %struct.atmel_aes_base_ctx* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %30, %26, %22, %18
  %39 = load %struct.atmel_aes_base_ctx*, %struct.atmel_aes_base_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.atmel_aes_base_ctx, %struct.atmel_aes_base_ctx* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.atmel_aes_base_ctx*, %struct.atmel_aes_base_ctx** %7, align 8
  %42 = call %struct.atmel_aes_dev* @atmel_aes_find_dev(%struct.atmel_aes_base_ctx* %41)
  store %struct.atmel_aes_dev* %42, %struct.atmel_aes_dev** %9, align 8
  %43 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %9, align 8
  %44 = icmp ne %struct.atmel_aes_dev* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %38
  %49 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %50 = call %struct.atmel_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %49)
  store %struct.atmel_aes_reqctx* %50, %struct.atmel_aes_reqctx** %8, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.atmel_aes_reqctx*, %struct.atmel_aes_reqctx** %8, align 8
  %53 = getelementptr inbounds %struct.atmel_aes_reqctx, %struct.atmel_aes_reqctx* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @AES_FLAGS_ENCRYPT, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %48
  %59 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %60 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %63 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %58
  %67 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %6, align 8
  %68 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.atmel_aes_reqctx*, %struct.atmel_aes_reqctx** %8, align 8
  %70 = getelementptr inbounds %struct.atmel_aes_reqctx, %struct.atmel_aes_reqctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %73 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %76 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %77, %79
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @scatterwalk_map_and_copy(i32 %71, i32 %74, i64 %80, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %66, %58, %48
  %84 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %9, align 8
  %85 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %86 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %85, i32 0, i32 0
  %87 = call i32 @atmel_aes_handle_queue(%struct.atmel_aes_dev* %84, i32* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %45
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.atmel_aes_base_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.atmel_aes_dev* @atmel_aes_find_dev(%struct.atmel_aes_base_ctx*) #1

declare dso_local %struct.atmel_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32, i32, i64, i32, i32) #1

declare dso_local i32 @atmel_aes_handle_queue(%struct.atmel_aes_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
