; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Job Ring Device allocation for transform failed\0A\00", align 1
@zero_buffer = common dso_local global i32 0, align 4
@CAAM_RSA_MAX_INPUT_SIZE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unable to map padding\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*)* @caam_rsa_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_rsa_init_tfm(%struct.crypto_akcipher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_akcipher*, align 8
  %4 = alloca %struct.caam_rsa_ctx*, align 8
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %3, align 8
  %5 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %3, align 8
  %6 = call %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %5)
  store %struct.caam_rsa_ctx* %6, %struct.caam_rsa_ctx** %4, align 8
  %7 = call i32 (...) @caam_jr_alloc()
  %8 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PTR_ERR(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @zero_buffer, align 4
  %26 = load i64, i64* @CAAM_RSA_MAX_INPUT_SIZE, align 8
  %27 = sub nsw i64 %26, 1
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_map_single(i32 %24, i32 %25, i64 %27, i32 %28)
  %30 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @dma_mapping_error(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %21
  %41 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @caam_jr_free(i32 %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %40, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i32 @caam_jr_alloc(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @caam_jr_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
