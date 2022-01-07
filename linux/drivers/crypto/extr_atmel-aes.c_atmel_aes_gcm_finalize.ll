; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, i32, i32 }
%struct.atmel_aes_gcm_ctx = type { i64, i64* }
%struct.aead_request = type { i32, i32, i64 }
%struct.crypto_aead = type { i32 }

@AES_FLAGS_GTAGEN = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_gcm_finalize(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca %struct.atmel_aes_dev*, align 8
  %3 = alloca %struct.atmel_aes_gcm_ctx*, align 8
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4 x i64], align 16
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %2, align 8
  %12 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %13 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32 %14)
  store %struct.atmel_aes_gcm_ctx* %15, %struct.atmel_aes_gcm_ctx** %3, align 8
  %16 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %17 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.aead_request* @aead_request_cast(i32 %18)
  store %struct.aead_request* %19, %struct.aead_request** %4, align 8
  %20 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %21 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %20)
  store %struct.crypto_aead* %21, %struct.crypto_aead** %5, align 8
  %22 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %23 = call i32 @atmel_aes_is_encrypt(%struct.atmel_aes_dev* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %10, align 8
  %27 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %28 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AES_FLAGS_GTAGEN, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %36 = call i32 @AES_TAGR(i32 0)
  %37 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = call i32 @atmel_aes_read_block(%struct.atmel_aes_dev* %35, i32 %36, i64* %39)
  br label %48

41:                                               ; preds = %1
  %42 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %43 = call i32 @AES_ODATAR(i32 0)
  %44 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @atmel_aes_read_block(%struct.atmel_aes_dev* %42, i32 %43, i64* %46)
  br label %48

48:                                               ; preds = %41, %34
  %49 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %50 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  store i64 %55, i64* %7, align 8
  %56 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %57 = call i64 @crypto_aead_authsize(%struct.crypto_aead* %56)
  store i64 %57, i64* %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %48
  %61 = load i64*, i64** %10, align 8
  %62 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %63 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @scatterwalk_map_and_copy(i64* %61, i32 %64, i64 %65, i64 %66, i32 1)
  store i32 0, i32* %11, align 4
  br label %87

68:                                               ; preds = %48
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %70 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %71 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @scatterwalk_map_and_copy(i64* %69, i32 %72, i64 %73, i64 %74, i32 0)
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %77 = load i64*, i64** %10, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @crypto_memneq(i64* %76, i64* %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %68
  %82 = load i32, i32* @EBADMSG, align 4
  %83 = sub nsw i32 0, %82
  br label %85

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i32 [ %83, %81 ], [ 0, %84 ]
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %85, %60
  %88 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @atmel_aes_complete(%struct.atmel_aes_dev* %88, i32 %89)
  ret i32 %90
}

declare dso_local %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32) #1

declare dso_local %struct.aead_request* @aead_request_cast(i32) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @atmel_aes_is_encrypt(%struct.atmel_aes_dev*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atmel_aes_read_block(%struct.atmel_aes_dev*, i32, i64*) #1

declare dso_local i32 @AES_TAGR(i32) #1

declare dso_local i32 @AES_ODATAR(i32) #1

declare dso_local i64 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i64*, i32, i64, i64, i32) #1

declare dso_local i64 @crypto_memneq(i64*, i64*, i64) #1

declare dso_local i32 @atmel_aes_complete(%struct.atmel_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
