; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_copy_hash_omap4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_copy_hash_omap4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.omap_sham_reqctx = type { i32, %struct.omap_sham_dev* }
%struct.omap_sham_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.omap_sham_ctx = type { %struct.omap_sham_hmac_ctx* }
%struct.omap_sham_hmac_ctx = type { i64 }

@FLAGS_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, i32)* @omap_sham_copy_hash_omap4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_sham_copy_hash_omap4(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_sham_reqctx*, align 8
  %6 = alloca %struct.omap_sham_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_ahash*, align 8
  %9 = alloca %struct.omap_sham_ctx*, align 8
  %10 = alloca %struct.omap_sham_hmac_ctx*, align 8
  %11 = alloca i32*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.omap_sham_reqctx* %13, %struct.omap_sham_reqctx** %5, align 8
  %14 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %5, align 8
  %15 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %14, i32 0, i32 1
  %16 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %15, align 8
  store %struct.omap_sham_dev* %16, %struct.omap_sham_dev** %6, align 8
  %17 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %5, align 8
  %18 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FLAGS_HMAC, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %78

24:                                               ; preds = %2
  %25 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %26 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(i32 %27)
  store %struct.crypto_ahash* %28, %struct.crypto_ahash** %8, align 8
  %29 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %30 = call %struct.omap_sham_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %29)
  store %struct.omap_sham_ctx* %30, %struct.omap_sham_ctx** %9, align 8
  %31 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %31, i32 0, i32 0
  %33 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %32, align 8
  store %struct.omap_sham_hmac_ctx* %33, %struct.omap_sham_hmac_ctx** %10, align 8
  %34 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %10, align 8
  %35 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %11, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %74, %24
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %42 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  %48 = icmp ult i64 %40, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %38
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %54 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @SHA_REG_ODIGEST(%struct.omap_sham_dev* %54, i32 %55)
  %57 = call i32 @omap_sham_read(%struct.omap_sham_dev* %53, i32 %56)
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %73

62:                                               ; preds = %49
  %63 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %64 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @SHA_REG_ODIGEST(%struct.omap_sham_dev* %64, i32 %65)
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @omap_sham_write(%struct.omap_sham_dev* %63, i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %62, %52
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %38

77:                                               ; preds = %38
  br label %78

78:                                               ; preds = %77, %2
  %79 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @omap_sham_copy_hash_omap2(%struct.ahash_request* %79, i32 %80)
  ret void
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(i32) #1

declare dso_local %struct.omap_sham_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @omap_sham_read(%struct.omap_sham_dev*, i32) #1

declare dso_local i32 @SHA_REG_ODIGEST(%struct.omap_sham_dev*, i32) #1

declare dso_local i32 @omap_sham_write(%struct.omap_sham_dev*, i32, i32) #1

declare dso_local i32 @omap_sham_copy_hash_omap2(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
