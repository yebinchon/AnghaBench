; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_geode-aes.c_geode_setkey_blk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_geode-aes.c_geode_setkey_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.geode_aes_op = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @geode_setkey_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geode_setkey_blk(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.geode_aes_op*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = call %struct.geode_aes_op* @crypto_tfm_ctx(%struct.crypto_tfm* %10)
  store %struct.geode_aes_op* %11, %struct.geode_aes_op** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.geode_aes_op*, %struct.geode_aes_op** %8, align 8
  %14 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @AES_KEYSIZE_128, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.geode_aes_op*, %struct.geode_aes_op** %8, align 8
  %20 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @memcpy(i32 %21, i32* %22, i32 %23)
  store i32 0, i32* %4, align 4
  br label %96

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AES_KEYSIZE_192, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AES_KEYSIZE_256, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %35 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %36 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %96

41:                                               ; preds = %29, %25
  %42 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.geode_aes_op*, %struct.geode_aes_op** %8, align 8
  %45 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %43
  store i32 %51, i32* %49, align 4
  %52 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %53 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.geode_aes_op*, %struct.geode_aes_op** %8, align 8
  %58 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %56
  store i32 %64, i32* %62, align 4
  %65 = load %struct.geode_aes_op*, %struct.geode_aes_op** %8, align 8
  %66 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @crypto_blkcipher_setkey(%struct.TYPE_6__* %68, i32* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %41
  %75 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %78 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.geode_aes_op*, %struct.geode_aes_op** %8, align 8
  %82 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %91 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %74, %41
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %33, %18
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.geode_aes_op* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @crypto_blkcipher_setkey(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
