; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_register_ablkcipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_register_ablkcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.spu_hw }
%struct.spu_hw = type { i64 }
%struct.iproc_alg_s = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32, i32, %struct.TYPE_7__, i32*, i32, i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@iproc_priv = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CIPHER_ALG_RC4 = common dso_local global i64 0, align 8
@SPU_TYPE_SPU2 = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@cipher_pri = common dso_local global i32 0, align 4
@ablkcipher_cra_init = common dso_local global i32 0, align 4
@generic_cra_exit = common dso_local global i32 0, align 4
@crypto_ablkcipher_type = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_ABLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@ablkcipher_setkey = common dso_local global i32 0, align 4
@ablkcipher_encrypt = common dso_local global i32 0, align 4
@ablkcipher_decrypt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"  registered ablkcipher %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_alg_s*)* @spu_register_ablkcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_register_ablkcipher(%struct.iproc_alg_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iproc_alg_s*, align 8
  %4 = alloca %struct.spu_hw*, align 8
  %5 = alloca %struct.crypto_alg*, align 8
  %6 = alloca i32, align 4
  store %struct.iproc_alg_s* %0, %struct.iproc_alg_s** %3, align 8
  store %struct.spu_hw* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @iproc_priv, i32 0, i32 0), %struct.spu_hw** %4, align 8
  %7 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %8 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.crypto_alg* %9, %struct.crypto_alg** %5, align 8
  %10 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %11 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CIPHER_ALG_RC4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.spu_hw*, %struct.spu_hw** %4, align 8
  %18 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SPU_TYPE_SPU2, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %74

23:                                               ; preds = %16, %1
  %24 = load i32, i32* @THIS_MODULE, align 4
  %25 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %26 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @cipher_pri, align 4
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %29 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %31 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %33 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %32, i32 0, i32 0
  store i32 4, i32* %33, align 8
  %34 = load i32, i32* @ablkcipher_cra_init, align 4
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %36 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @generic_cra_exit, align 4
  %38 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %39 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %41 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %40, i32 0, i32 4
  store i32* @crypto_ablkcipher_type, i32** %41, align 8
  %42 = load i32, i32* @CRYPTO_ALG_TYPE_ABLKCIPHER, align 4
  %43 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %48 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ablkcipher_setkey, align 4
  %50 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %51 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @ablkcipher_encrypt, align 4
  %54 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %55 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @ablkcipher_decrypt, align 4
  %58 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %59 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %62 = call i32 @crypto_register_alg(%struct.crypto_alg* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %23
  %66 = load %struct.iproc_alg_s*, %struct.iproc_alg_s** %3, align 8
  %67 = getelementptr inbounds %struct.iproc_alg_s, %struct.iproc_alg_s* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %23
  %69 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %70 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @crypto_register_alg(%struct.crypto_alg*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
