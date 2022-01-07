; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_des3_aead_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_des3_aead_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.ixp_ctx = type { i32, i32, i32, i32 }
%struct.crypto_authenc_keys = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @des3_aead_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_aead_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixp_ctx*, align 8
  %9 = alloca %struct.crypto_authenc_keys, align 4
  %10 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %12 = call %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead* %11)
  store %struct.ixp_ctx* %12, %struct.ixp_ctx** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %9, i32* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %68

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  %23 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %68

28:                                               ; preds = %20
  %29 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %30 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @verify_aead_des3_key(%struct.crypto_aead* %29, i32 %31, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %68

38:                                               ; preds = %28
  %39 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i32 %41, i32 %43, i32 %45)
  %47 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(i32 %49, i32 %51, i32 %53)
  %55 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ixp_ctx*, %struct.ixp_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %9, i32 16)
  %64 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %65 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %66 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %65)
  %67 = call i32 @aead_setup(%struct.crypto_aead* %64, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %37, %27, %19
  %69 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %9, i32 16)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %38
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @verify_aead_des3_key(%struct.crypto_aead*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_authenc_keys*, i32) #1

declare dso_local i32 @aead_setup(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
