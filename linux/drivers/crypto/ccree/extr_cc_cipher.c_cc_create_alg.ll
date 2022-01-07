; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_create_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_create_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_crypto_alg = type { i32, i32, i32, %struct.skcipher_alg }
%struct.skcipher_alg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.cc_alg_template = type { i8*, i8*, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@CC_CRA_PRIO = common dso_local global i32 0, align 4
@cc_cipher_init = common dso_local global i32 0, align 4
@cc_cipher_exit = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cc_crypto_alg* (%struct.cc_alg_template*, %struct.device*)* @cc_create_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cc_crypto_alg* @cc_create_alg(%struct.cc_alg_template* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.cc_crypto_alg*, align 8
  %4 = alloca %struct.cc_alg_template*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.cc_crypto_alg*, align 8
  %7 = alloca %struct.skcipher_alg*, align 8
  store %struct.cc_alg_template* %0, %struct.cc_alg_template** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cc_crypto_alg* @kzalloc(i32 64, i32 %8)
  store %struct.cc_crypto_alg* %9, %struct.cc_crypto_alg** %6, align 8
  %10 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  %11 = icmp ne %struct.cc_crypto_alg* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.cc_crypto_alg* @ERR_PTR(i32 %14)
  store %struct.cc_crypto_alg* %15, %struct.cc_crypto_alg** %3, align 8
  br label %91

16:                                               ; preds = %2
  %17 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  %18 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %17, i32 0, i32 3
  store %struct.skcipher_alg* %18, %struct.skcipher_alg** %7, align 8
  %19 = load %struct.skcipher_alg*, %struct.skcipher_alg** %7, align 8
  %20 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %21 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %20, i32 0, i32 6
  %22 = call i32 @memcpy(%struct.skcipher_alg* %19, i32* %21, i32 48)
  %23 = load %struct.skcipher_alg*, %struct.skcipher_alg** %7, align 8
  %24 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %28 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %29 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @snprintf(i32 %26, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.skcipher_alg*, %struct.skcipher_alg** %7, align 8
  %33 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %37 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %38 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @snprintf(i32 %35, i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @THIS_MODULE, align 4
  %42 = load %struct.skcipher_alg*, %struct.skcipher_alg** %7, align 8
  %43 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 7
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @CC_CRA_PRIO, align 4
  %46 = load %struct.skcipher_alg*, %struct.skcipher_alg** %7, align 8
  %47 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  store i32 %45, i32* %48, align 4
  %49 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %50 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.skcipher_alg*, %struct.skcipher_alg** %7, align 8
  %53 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  store i32 %51, i32* %54, align 8
  %55 = load %struct.skcipher_alg*, %struct.skcipher_alg** %7, align 8
  %56 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.skcipher_alg*, %struct.skcipher_alg** %7, align 8
  %59 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 4, i32* %60, align 8
  %61 = load i32, i32* @cc_cipher_init, align 4
  %62 = load %struct.skcipher_alg*, %struct.skcipher_alg** %7, align 8
  %63 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @cc_cipher_exit, align 4
  %66 = load %struct.skcipher_alg*, %struct.skcipher_alg** %7, align 8
  %67 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %70 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.skcipher_alg*, %struct.skcipher_alg** %7, align 8
  %73 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %76 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  %79 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %81 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  %84 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.cc_alg_template*, %struct.cc_alg_template** %4, align 8
  %86 = getelementptr inbounds %struct.cc_alg_template, %struct.cc_alg_template* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  %89 = getelementptr inbounds %struct.cc_crypto_alg, %struct.cc_crypto_alg* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %6, align 8
  store %struct.cc_crypto_alg* %90, %struct.cc_crypto_alg** %3, align 8
  br label %91

91:                                               ; preds = %16, %12
  %92 = load %struct.cc_crypto_alg*, %struct.cc_crypto_alg** %3, align 8
  ret %struct.cc_crypto_alg* %92
}

declare dso_local %struct.cc_crypto_alg* @kzalloc(i32, i32) #1

declare dso_local %struct.cc_crypto_alg* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.skcipher_alg*, i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
