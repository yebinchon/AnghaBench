; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-cmac.c_ccp_register_aes_cmac_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-cmac.c_ccp_register_aes_cmac_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.ccp_crypto_ahash_alg = type { i32, %struct.ahash_alg, i32 }
%struct.ahash_alg = type { %struct.hash_alg_common, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hash_alg_common = type { i32, %struct.crypto_alg, i8* }
%struct.crypto_alg = type { i32, i32, i32, i32, i32, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CCP_AES_MODE_CMAC = common dso_local global i32 0, align 4
@ccp_aes_cmac_init = common dso_local global i32 0, align 4
@ccp_aes_cmac_update = common dso_local global i32 0, align 4
@ccp_aes_cmac_final = common dso_local global i32 0, align 4
@ccp_aes_cmac_finup = common dso_local global i32 0, align 4
@ccp_aes_cmac_digest = common dso_local global i32 0, align 4
@ccp_aes_cmac_export = common dso_local global i32 0, align 4
@ccp_aes_cmac_import = common dso_local global i32 0, align 4
@ccp_aes_cmac_setkey = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i8* null, align 8
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cmac(aes)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cmac-aes-ccp\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@CCP_CRA_PRIORITY = common dso_local global i32 0, align 4
@ccp_aes_cmac_cra_init = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s ahash algorithm registration error (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccp_register_aes_cmac_algs(%struct.list_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.ccp_crypto_ahash_alg*, align 8
  %5 = alloca %struct.ahash_alg*, align 8
  %6 = alloca %struct.hash_alg_common*, align 8
  %7 = alloca %struct.crypto_alg*, align 8
  %8 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ccp_crypto_ahash_alg* @kzalloc(i32 104, i32 %9)
  store %struct.ccp_crypto_ahash_alg* %10, %struct.ccp_crypto_ahash_alg** %4, align 8
  %11 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %4, align 8
  %12 = icmp ne %struct.ccp_crypto_ahash_alg* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %107

16:                                               ; preds = %1
  %17 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %4, align 8
  %18 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load i32, i32* @CCP_AES_MODE_CMAC, align 4
  %21 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %4, align 8
  %22 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %4, align 8
  %24 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %23, i32 0, i32 1
  store %struct.ahash_alg* %24, %struct.ahash_alg** %5, align 8
  %25 = load i32, i32* @ccp_aes_cmac_init, align 4
  %26 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %27 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @ccp_aes_cmac_update, align 4
  %29 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %30 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @ccp_aes_cmac_final, align 4
  %32 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %33 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @ccp_aes_cmac_finup, align 4
  %35 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %36 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @ccp_aes_cmac_digest, align 4
  %38 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %39 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ccp_aes_cmac_export, align 4
  %41 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %42 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @ccp_aes_cmac_import, align 4
  %44 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %45 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ccp_aes_cmac_setkey, align 4
  %47 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %48 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %50 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %49, i32 0, i32 0
  store %struct.hash_alg_common* %50, %struct.hash_alg_common** %6, align 8
  %51 = load i8*, i8** @AES_BLOCK_SIZE, align 8
  %52 = load %struct.hash_alg_common*, %struct.hash_alg_common** %6, align 8
  %53 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.hash_alg_common*, %struct.hash_alg_common** %6, align 8
  %55 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %54, i32 0, i32 0
  store i32 4, i32* %55, align 8
  %56 = load %struct.hash_alg_common*, %struct.hash_alg_common** %6, align 8
  %57 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %56, i32 0, i32 1
  store %struct.crypto_alg* %57, %struct.crypto_alg** %7, align 8
  %58 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %59 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %62 = call i32 @snprintf(i32 %60, i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %64 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %67 = call i32 @snprintf(i32 %65, i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %69 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %74 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** @AES_BLOCK_SIZE, align 8
  %76 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %77 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %79 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %78, i32 0, i32 1
  store i32 4, i32* %79, align 4
  %80 = load i32, i32* @CCP_CRA_PRIORITY, align 4
  %81 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %82 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @ccp_aes_cmac_cra_init, align 4
  %84 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %85 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @THIS_MODULE, align 4
  %87 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %88 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %90 = call i32 @crypto_register_ahash(%struct.ahash_alg* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %16
  %94 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %95 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %4, align 8
  %100 = call i32 @kfree(%struct.ccp_crypto_ahash_alg* %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %107

102:                                              ; preds = %16
  %103 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %4, align 8
  %104 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %103, i32 0, i32 0
  %105 = load %struct.list_head*, %struct.list_head** %3, align 8
  %106 = call i32 @list_add(i32* %104, %struct.list_head* %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %93, %13
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.ccp_crypto_ahash_alg* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @crypto_register_ahash(%struct.ahash_alg*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ccp_crypto_ahash_alg*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
