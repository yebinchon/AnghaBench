; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-des3.c_ccp_des3_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-des3.c_ccp_des3_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.ccp_crypto_ablkcipher_alg = type { i32 }

@CCP_DES3_TYPE_168 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @ccp_des3_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_des3_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccp_ctx*, align 8
  %9 = alloca %struct.ccp_crypto_ablkcipher_alg*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %12 = call i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %11)
  %13 = call %struct.ccp_ctx* @crypto_tfm_ctx(i32 %12)
  store %struct.ccp_ctx* %13, %struct.ccp_ctx** %8, align 8
  %14 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %15 = call i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %14)
  %16 = call %struct.ccp_crypto_ablkcipher_alg* @ccp_crypto_ablkcipher_alg(i32 %15)
  store %struct.ccp_crypto_ablkcipher_alg* %16, %struct.ccp_crypto_ablkcipher_alg** %9, align 8
  %17 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @verify_ablkcipher_des3_key(%struct.crypto_ablkcipher* %17, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %61

24:                                               ; preds = %3
  %25 = load i32, i32* @CCP_DES3_TYPE_168, align 4
  %26 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  store i32 %25, i32* %29, align 4
  %30 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %9, align 8
  %31 = getelementptr inbounds %struct.ccp_crypto_ablkcipher_alg, %struct.ccp_crypto_ablkcipher_alg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @memcpy(i32 %46, i32* %47, i32 %48)
  %50 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @sg_init_one(i32* %53, i32 %58, i32 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %24, %22
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.ccp_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.ccp_crypto_ablkcipher_alg* @ccp_crypto_ablkcipher_alg(i32) #1

declare dso_local i32 @verify_ablkcipher_des3_key(%struct.crypto_ablkcipher*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sg_init_one(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
