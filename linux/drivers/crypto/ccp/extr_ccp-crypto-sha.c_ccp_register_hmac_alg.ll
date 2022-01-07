; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_register_hmac_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_register_hmac_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.ccp_sha_def = type { i8*, i8* }
%struct.ccp_crypto_ahash_alg = type { i32, %struct.ahash_alg, i32 }
%struct.ahash_alg = type { %struct.hash_alg_common, i32 }
%struct.hash_alg_common = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@ccp_sha_setkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hmac(%s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"hmac-%s\00", align 1
@ccp_hmac_sha_cra_init = common dso_local global i32 0, align 4
@ccp_hmac_sha_cra_exit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s ahash algorithm registration error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.ccp_sha_def*, %struct.ccp_crypto_ahash_alg*)* @ccp_register_hmac_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_register_hmac_alg(%struct.list_head* %0, %struct.ccp_sha_def* %1, %struct.ccp_crypto_ahash_alg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.ccp_sha_def*, align 8
  %7 = alloca %struct.ccp_crypto_ahash_alg*, align 8
  %8 = alloca %struct.ccp_crypto_ahash_alg*, align 8
  %9 = alloca %struct.ahash_alg*, align 8
  %10 = alloca %struct.hash_alg_common*, align 8
  %11 = alloca %struct.crypto_alg*, align 8
  %12 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store %struct.ccp_sha_def* %1, %struct.ccp_sha_def** %6, align 8
  store %struct.ccp_crypto_ahash_alg* %2, %struct.ccp_crypto_ahash_alg** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ccp_crypto_ahash_alg* @kzalloc(i32 28, i32 %13)
  store %struct.ccp_crypto_ahash_alg* %14, %struct.ccp_crypto_ahash_alg** %8, align 8
  %15 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %8, align 8
  %16 = icmp ne %struct.ccp_crypto_ahash_alg* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %86

20:                                               ; preds = %3
  %21 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %8, align 8
  %22 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %7, align 8
  %23 = bitcast %struct.ccp_crypto_ahash_alg* %21 to i8*
  %24 = bitcast %struct.ccp_crypto_ahash_alg* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 28, i1 false)
  %25 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %8, align 8
  %26 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %25, i32 0, i32 0
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %8, align 8
  %29 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ccp_sha_def*, %struct.ccp_sha_def** %6, align 8
  %32 = getelementptr inbounds %struct.ccp_sha_def, %struct.ccp_sha_def* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %35 = call i32 @strncpy(i32 %30, i8* %33, i32 %34)
  %36 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %8, align 8
  %37 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %36, i32 0, i32 1
  store %struct.ahash_alg* %37, %struct.ahash_alg** %9, align 8
  %38 = load i32, i32* @ccp_sha_setkey, align 4
  %39 = load %struct.ahash_alg*, %struct.ahash_alg** %9, align 8
  %40 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ahash_alg*, %struct.ahash_alg** %9, align 8
  %42 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %41, i32 0, i32 0
  store %struct.hash_alg_common* %42, %struct.hash_alg_common** %10, align 8
  %43 = load %struct.hash_alg_common*, %struct.hash_alg_common** %10, align 8
  %44 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %43, i32 0, i32 0
  store %struct.crypto_alg* %44, %struct.crypto_alg** %11, align 8
  %45 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  %46 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %49 = load %struct.ccp_sha_def*, %struct.ccp_sha_def** %6, align 8
  %50 = getelementptr inbounds %struct.ccp_sha_def, %struct.ccp_sha_def* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @snprintf(i32 %47, i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  %54 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %57 = load %struct.ccp_sha_def*, %struct.ccp_sha_def** %6, align 8
  %58 = getelementptr inbounds %struct.ccp_sha_def, %struct.ccp_sha_def* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @snprintf(i32 %55, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @ccp_hmac_sha_cra_init, align 4
  %62 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  %63 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @ccp_hmac_sha_cra_exit, align 4
  %65 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  %66 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ahash_alg*, %struct.ahash_alg** %9, align 8
  %68 = call i32 @crypto_register_ahash(%struct.ahash_alg* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %20
  %72 = load %struct.crypto_alg*, %struct.crypto_alg** %11, align 8
  %73 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %8, align 8
  %78 = call i32 @kfree(%struct.ccp_crypto_ahash_alg* %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %86

80:                                               ; preds = %20
  %81 = load %struct.ccp_crypto_ahash_alg*, %struct.ccp_crypto_ahash_alg** %8, align 8
  %82 = getelementptr inbounds %struct.ccp_crypto_ahash_alg, %struct.ccp_crypto_ahash_alg* %81, i32 0, i32 0
  %83 = load %struct.list_head*, %struct.list_head** %5, align 8
  %84 = call i32 @list_add(i32* %82, %struct.list_head* %83)
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %80, %71, %17
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.ccp_crypto_ahash_alg* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @crypto_register_ahash(%struct.ahash_alg*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ccp_crypto_ahash_alg*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
