; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, i32, i32 }
%struct.atmel_aes_gcm_ctx = type { i64 }
%struct.aead_request = type { i64, i64 }
%struct.crypto_aead = type { i32 }

@AES_FLAGS_GTAGEN = common dso_local global i32 0, align 4
@atmel_aes_gcm_length = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_gcm_process(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca %struct.atmel_aes_dev*, align 8
  %3 = alloca %struct.atmel_aes_gcm_ctx*, align 8
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %2, align 8
  %8 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %9 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32 %10)
  store %struct.atmel_aes_gcm_ctx* %11, %struct.atmel_aes_gcm_ctx** %3, align 8
  %12 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %13 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.aead_request* @aead_request_cast(i32 %14)
  store %struct.aead_request* %15, %struct.aead_request** %4, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %17 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %16)
  store %struct.crypto_aead* %17, %struct.crypto_aead** %5, align 8
  %18 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %19 = call i32 @atmel_aes_is_encrypt(%struct.atmel_aes_dev* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %21 = call i64 @crypto_aead_authsize(%struct.crypto_aead* %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %23 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %30

28:                                               ; preds = %1
  %29 = load i64, i64* %7, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i64 [ 0, %27 ], [ %29, %28 ]
  %32 = sub nsw i64 %24, %31
  %33 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %30
  %45 = phi i1 [ true, %30 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @AES_FLAGS_GTAGEN, align 4
  %51 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %52 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %57 = call i32 @atmel_aes_write_ctrl(%struct.atmel_aes_dev* %56, i32 0, i32* null)
  %58 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %59 = load i32, i32* @atmel_aes_gcm_length, align 4
  %60 = call i32 @atmel_aes_wait_for_data_ready(%struct.atmel_aes_dev* %58, i32 %59)
  ret i32 %60
}

declare dso_local %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32) #1

declare dso_local %struct.aead_request* @aead_request_cast(i32) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @atmel_aes_is_encrypt(%struct.atmel_aes_dev*) #1

declare dso_local i64 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atmel_aes_write_ctrl(%struct.atmel_aes_dev*, i32, i32*) #1

declare dso_local i32 @atmel_aes_wait_for_data_ready(%struct.atmel_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
