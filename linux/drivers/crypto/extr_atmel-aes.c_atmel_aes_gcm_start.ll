; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i64, i32*, i32, i32 }
%struct.atmel_aes_gcm_ctx = type { i32* }
%struct.aead_request = type { i8* }
%struct.crypto_aead = type { i32 }
%struct.atmel_aes_reqctx = type { i32 }

@GCM_AES_IV_SIZE = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_gcm_start(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca %struct.atmel_aes_gcm_ctx*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.atmel_aes_reqctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  %14 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %15 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32 %16)
  store %struct.atmel_aes_gcm_ctx* %17, %struct.atmel_aes_gcm_ctx** %4, align 8
  %18 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.aead_request* @aead_request_cast(i32 %20)
  store %struct.aead_request* %21, %struct.aead_request** %5, align 8
  %22 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %23 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %22)
  store %struct.crypto_aead* %23, %struct.crypto_aead** %6, align 8
  %24 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %25 = call %struct.atmel_aes_reqctx* @aead_request_ctx(%struct.aead_request* %24)
  store %struct.atmel_aes_reqctx* %25, %struct.atmel_aes_reqctx** %7, align 8
  %26 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %27 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %29 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %32 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %12, align 8
  %34 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %35 = load %struct.atmel_aes_reqctx*, %struct.atmel_aes_reqctx** %7, align 8
  %36 = call i32 @atmel_aes_set_mode(%struct.atmel_aes_dev* %34, %struct.atmel_aes_reqctx* %35)
  %37 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %38 = call i32 @atmel_aes_hw_init(%struct.atmel_aes_dev* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @atmel_aes_complete(%struct.atmel_aes_dev* %42, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %110

45:                                               ; preds = %1
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @GCM_AES_IV_SIZE, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @memcpy(i32* %55, i8* %56, i64 %57)
  %59 = call i32 @cpu_to_be32(i32 1)
  %60 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %59, i32* %63, align 4
  %64 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %65 = call i32 @atmel_aes_gcm_process(%struct.atmel_aes_dev* %64)
  store i32 %65, i32* %2, align 4
  br label %110

66:                                               ; preds = %45
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %69 = call i64 @atmel_aes_padlen(i64 %67, i64 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %70, %71
  %73 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %74 = add i64 %72, %73
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %77 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ugt i64 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %66
  %81 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @atmel_aes_complete(%struct.atmel_aes_dev* %81, i32 %83)
  store i32 %84, i32* %2, align 4
  br label %110

85:                                               ; preds = %66
  %86 = load i32*, i32** %12, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @memcpy(i32* %86, i8* %87, i64 %88)
  %90 = load i32*, i32** %12, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i64, i64* %10, align 8
  %94 = add i64 %93, 4
  %95 = call i32 @memset(i32* %92, i32 0, i64 %94)
  %96 = load i64, i64* %8, align 8
  %97 = mul i64 %96, 8
  %98 = call i32 @cpu_to_be64(i64 %97)
  %99 = load i32*, i32** %12, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = getelementptr inbounds i32, i32* %101, i64 -1
  store i32 %98, i32* %102, align 4
  %103 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %107 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @atmel_aes_gcm_ghash(%struct.atmel_aes_dev* %103, i32* %104, i64 %105, i32* null, i32* %108, i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_process)
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %85, %80, %52, %41
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32) #1

declare dso_local %struct.aead_request* @aead_request_cast(i32) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.atmel_aes_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i64 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @atmel_aes_set_mode(%struct.atmel_aes_dev*, %struct.atmel_aes_reqctx*) #1

declare dso_local i32 @atmel_aes_hw_init(%struct.atmel_aes_dev*) #1

declare dso_local i32 @atmel_aes_complete(%struct.atmel_aes_dev*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @atmel_aes_gcm_process(%struct.atmel_aes_dev*) #1

declare dso_local i64 @atmel_aes_padlen(i64, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @atmel_aes_gcm_ghash(%struct.atmel_aes_dev*, i32*, i64, i32*, i32*, i32 (%struct.atmel_aes_dev*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
