; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-xts.c_ccp_register_aes_xts_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-xts.c_ccp_register_aes_xts_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.ccp_aes_xts_def = type { i8*, i8* }
%struct.ccp_crypto_ablkcipher_alg = type { i32, %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32, i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CRYPTO_ALG_TYPE_ABLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i8* null, align 8
@CCP_CRA_PRIORITY = common dso_local global i32 0, align 4
@crypto_ablkcipher_type = common dso_local global i32 0, align 4
@ccp_aes_xts_setkey = common dso_local global i32 0, align 4
@ccp_aes_xts_encrypt = common dso_local global i32 0, align 4
@ccp_aes_xts_decrypt = common dso_local global i32 0, align 4
@AES_MIN_KEY_SIZE = common dso_local global i32 0, align 4
@AES_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@ccp_aes_xts_cra_init = common dso_local global i32 0, align 4
@ccp_aes_xts_cra_exit = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s ablkcipher algorithm registration error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.ccp_aes_xts_def*)* @ccp_register_aes_xts_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_register_aes_xts_alg(%struct.list_head* %0, %struct.ccp_aes_xts_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.ccp_aes_xts_def*, align 8
  %6 = alloca %struct.ccp_crypto_ablkcipher_alg*, align 8
  %7 = alloca %struct.crypto_alg*, align 8
  %8 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.ccp_aes_xts_def* %1, %struct.ccp_aes_xts_def** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ccp_crypto_ablkcipher_alg* @kzalloc(i32 96, i32 %9)
  store %struct.ccp_crypto_ablkcipher_alg* %10, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %11 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %12 = icmp ne %struct.ccp_crypto_ablkcipher_alg* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %110

16:                                               ; preds = %2
  %17 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %18 = getelementptr inbounds %struct.ccp_crypto_ablkcipher_alg, %struct.ccp_crypto_ablkcipher_alg* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %21 = getelementptr inbounds %struct.ccp_crypto_ablkcipher_alg, %struct.ccp_crypto_ablkcipher_alg* %20, i32 0, i32 1
  store %struct.crypto_alg* %21, %struct.crypto_alg** %7, align 8
  %22 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %23 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %26 = load %struct.ccp_aes_xts_def*, %struct.ccp_aes_xts_def** %5, align 8
  %27 = getelementptr inbounds %struct.ccp_aes_xts_def, %struct.ccp_aes_xts_def* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @snprintf(i32 %24, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %31 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %34 = load %struct.ccp_aes_xts_def*, %struct.ccp_aes_xts_def** %5, align 8
  %35 = getelementptr inbounds %struct.ccp_aes_xts_def, %struct.ccp_aes_xts_def* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @snprintf(i32 %32, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @CRYPTO_ALG_TYPE_ABLKCIPHER, align 4
  %39 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %46 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** @AES_BLOCK_SIZE, align 8
  %48 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %49 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %48, i32 0, i32 9
  store i8* %47, i8** %49, align 8
  %50 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %51 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %50, i32 0, i32 1
  store i32 4, i32* %51, align 4
  %52 = load i32, i32* @CCP_CRA_PRIORITY, align 4
  %53 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %54 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %56 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %55, i32 0, i32 7
  store i32* @crypto_ablkcipher_type, i32** %56, align 8
  %57 = load i32, i32* @ccp_aes_xts_setkey, align 4
  %58 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %59 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @ccp_aes_xts_encrypt, align 4
  %62 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %63 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @ccp_aes_xts_decrypt, align 4
  %66 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %67 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @AES_MIN_KEY_SIZE, align 4
  %70 = mul nsw i32 %69, 2
  %71 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %72 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @AES_MAX_KEY_SIZE, align 4
  %75 = mul nsw i32 %74, 2
  %76 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %77 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load i8*, i8** @AES_BLOCK_SIZE, align 8
  %80 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %81 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i8* %79, i8** %82, align 8
  %83 = load i32, i32* @ccp_aes_xts_cra_init, align 4
  %84 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %85 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @ccp_aes_xts_cra_exit, align 4
  %87 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %88 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @THIS_MODULE, align 4
  %90 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %91 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %93 = call i32 @crypto_register_alg(%struct.crypto_alg* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %16
  %97 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %98 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %103 = call i32 @kfree(%struct.ccp_crypto_ablkcipher_alg* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %110

105:                                              ; preds = %16
  %106 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %107 = getelementptr inbounds %struct.ccp_crypto_ablkcipher_alg, %struct.ccp_crypto_ablkcipher_alg* %106, i32 0, i32 0
  %108 = load %struct.list_head*, %struct.list_head** %4, align 8
  %109 = call i32 @list_add(i32* %107, %struct.list_head* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %105, %96, %13
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.ccp_crypto_ablkcipher_alg* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @crypto_register_alg(%struct.crypto_alg*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ccp_crypto_ablkcipher_alg*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
