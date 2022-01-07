; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_register_sha_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_register_sha_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.ccp_sha_def = type { i8*, i8*, i32, i32, i32 }
%struct.ccp_crypto_ahash_alg = type { i32, %struct.ahash_alg, i32 }
%struct.ahash_alg = type { %struct.hash_alg_common, i32, i32, i32, i32, i32, i32, i32 }
%struct.hash_alg_common = type { i32, %struct.crypto_alg, i32 }
%struct.crypto_alg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ccp_sha_init = common dso_local global i32 0, align 4
@ccp_sha_update = common dso_local global i32 0, align 4
@ccp_sha_final = common dso_local global i32 0, align 4
@ccp_sha_finup = common dso_local global i32 0, align 4
@ccp_sha_digest = common dso_local global i32 0, align 4
@ccp_sha_export = common dso_local global i32 0, align 4
@ccp_sha_import = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_KERN_DRIVER_ONLY = common dso_local global i32 0, align 4
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@CCP_CRA_PRIORITY = common dso_local global i32 0, align 4
@ccp_sha_cra_init = common dso_local global i32 0, align 4
@ccp_sha_cra_exit = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%s ahash algorithm registration error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.ccp_sha_def*)* @ccp_register_sha_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_register_sha_alg(%struct.list_head* %0, %struct.ccp_sha_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.ccp_sha_def*, align 8
  %6 = alloca %struct.ccp_crypto_ahash_alg*, align 8
  %7 = alloca %struct.ahash_alg*, align 8
  %8 = alloca %struct.hash_alg_common*, align 8
  %9 = alloca %struct.crypto_alg*, align 8
  %10 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.ccp_sha_def* %1, %struct.ccp_sha_def** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ccp_crypto_ahash_alg* @kzalloc(i32 80, i32 %11)
  store %struct.ccp_crypto_ahash_alg* %12, %struct.ccp_crypto_ahash_alg** %6, align 8
  %13 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %6, align 8
  %14 = icmp ne %struct.ccp_crypto_ahash_alg* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %126

18:                                               ; preds = %2
  %19 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %6, align 8
  %20 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %19, i32 0, i32 0
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.ccp_sha_def*, %struct.ccp_sha_def** %5, align 8
  %23 = getelementptr inbounds %struct.ccp_sha_def, %struct.ccp_sha_def* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %6, align 8
  %26 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %6, align 8
  %28 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %27, i32 0, i32 1
  store %struct.ahash_alg* %28, %struct.ahash_alg** %7, align 8
  %29 = load i32, i32* @ccp_sha_init, align 4
  %30 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %31 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @ccp_sha_update, align 4
  %33 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %34 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ccp_sha_final, align 4
  %36 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %37 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ccp_sha_finup, align 4
  %39 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %40 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @ccp_sha_digest, align 4
  %42 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %43 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @ccp_sha_export, align 4
  %45 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %46 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @ccp_sha_import, align 4
  %48 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %49 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %51 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %50, i32 0, i32 0
  store %struct.hash_alg_common* %51, %struct.hash_alg_common** %8, align 8
  %52 = load %struct.ccp_sha_def*, %struct.ccp_sha_def** %5, align 8
  %53 = getelementptr inbounds %struct.ccp_sha_def, %struct.ccp_sha_def* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hash_alg_common*, %struct.hash_alg_common** %8, align 8
  %56 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.hash_alg_common*, %struct.hash_alg_common** %8, align 8
  %58 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %57, i32 0, i32 0
  store i32 4, i32* %58, align 4
  %59 = load %struct.hash_alg_common*, %struct.hash_alg_common** %8, align 8
  %60 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %59, i32 0, i32 1
  store %struct.crypto_alg* %60, %struct.crypto_alg** %9, align 8
  %61 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %62 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %65 = load %struct.ccp_sha_def*, %struct.ccp_sha_def** %5, align 8
  %66 = getelementptr inbounds %struct.ccp_sha_def, %struct.ccp_sha_def* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @snprintf(i32 %63, i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %70 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %73 = load %struct.ccp_sha_def*, %struct.ccp_sha_def** %5, align 8
  %74 = getelementptr inbounds %struct.ccp_sha_def, %struct.ccp_sha_def* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @snprintf(i32 %71, i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %78 = load i32, i32* @CRYPTO_ALG_KERN_DRIVER_ONLY, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %83 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ccp_sha_def*, %struct.ccp_sha_def** %5, align 8
  %85 = getelementptr inbounds %struct.ccp_sha_def, %struct.ccp_sha_def* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %88 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %90 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %89, i32 0, i32 1
  store i32 4, i32* %90, align 4
  %91 = load i32, i32* @CCP_CRA_PRIORITY, align 4
  %92 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %93 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @ccp_sha_cra_init, align 4
  %95 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %96 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @ccp_sha_cra_exit, align 4
  %98 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %99 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @THIS_MODULE, align 4
  %101 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %102 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %104 = call i32 @crypto_register_ahash(%struct.ahash_alg* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %18
  %108 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %109 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %6, align 8
  %114 = call i32 @kfree(%struct.ccp_crypto_ahash_alg* %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %126

116:                                              ; preds = %18
  %117 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %6, align 8
  %118 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %117, i32 0, i32 0
  %119 = load %struct.list_head*, %struct.list_head** %4, align 8
  %120 = call i32 @list_add(i32* %118, %struct.list_head* %119)
  %121 = load %struct.list_head*, %struct.list_head** %4, align 8
  %122 = load %struct.ccp_sha_def*, %struct.ccp_sha_def** %5, align 8
  %123 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %6, align 8
  %124 = call i32 @ccp_register_hmac_alg(%struct.list_head* %121, %struct.ccp_sha_def* %122, %struct.ccp_crypto_ahash_alg* %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %116, %107, %15
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.ccp_crypto_ahash_alg* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @crypto_register_ahash(%struct.ahash_alg*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ccp_crypto_ahash_alg*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @ccp_register_hmac_alg(%struct.list_head*, %struct.ccp_sha_def*, %struct.ccp_crypto_ahash_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
