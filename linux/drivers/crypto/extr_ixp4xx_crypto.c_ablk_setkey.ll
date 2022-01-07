; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_ablk_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_ablk_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ixp_ctx = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@NPE_OP_HMAC_DISABLE = common dso_local global i8* null, align 8
@CRYPTO_TFM_RES_WEAK_KEY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_FORBID_WEAK_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @ablk_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablk_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixp_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %11 = call %struct.ixp_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.ixp_ctx* %11, %struct.ixp_ctx** %7, align 8
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %13 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32* %14, i32** %8, align 8
  %15 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %15, i32 0, i32 0
  %17 = call i32 @init_completion(i32* %16)
  %18 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %18, i32 0, i32 1
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %21, i32 0, i32 3
  %23 = call i32 @reset_sa_dir(%struct.TYPE_4__* %22)
  %24 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %24, i32 0, i32 2
  %26 = call i32 @reset_sa_dir(%struct.TYPE_4__* %25)
  %27 = load i8*, i8** @NPE_OP_HMAC_DISABLE, align 8
  %28 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load i8*, i8** @NPE_OP_HMAC_DISABLE, align 8
  %32 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %36 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %35, i32 0, i32 0
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @setup_cipher(%struct.TYPE_3__* %36, i32 0, i32* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %75

43:                                               ; preds = %3
  %44 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %45 = getelementptr inbounds %struct.crypto_ablkcipher, %struct.crypto_ablkcipher* %44, i32 0, i32 0
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @setup_cipher(%struct.TYPE_3__* %45, i32 1, i32* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %75

52:                                               ; preds = %43
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CRYPTO_TFM_REQ_FORBID_WEAK_KEYS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %73

67:                                               ; preds = %58
  %68 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %69 = xor i32 %68, -1
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %64
  br label %74

74:                                               ; preds = %73, %52
  br label %75

75:                                               ; preds = %74, %51, %42
  %76 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %77 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %76, i32 0, i32 1
  %78 = call i32 @atomic_dec_and_test(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load %struct.ixp_ctx*, %struct.ixp_ctx** %7, align 8
  %82 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %81, i32 0, i32 0
  %83 = call i32 @wait_for_completion(i32* %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local %struct.ixp_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @reset_sa_dir(%struct.TYPE_4__*) #1

declare dso_local i32 @setup_cipher(%struct.TYPE_3__*, i32, i32*, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
