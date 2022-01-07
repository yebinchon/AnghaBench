; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes.c_ccp_register_aes_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes.c_ccp_register_aes_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.ccp_aes_def = type { i8*, i8*, i32, i32, %struct.crypto_alg*, i32 }
%struct.crypto_alg = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ccp_crypto_ablkcipher_alg = type { i32, %struct.crypto_alg, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s ablkcipher algorithm registration error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.ccp_aes_def*)* @ccp_register_aes_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_register_aes_alg(%struct.list_head* %0, %struct.ccp_aes_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.ccp_aes_def*, align 8
  %6 = alloca %struct.ccp_crypto_ablkcipher_alg*, align 8
  %7 = alloca %struct.crypto_alg*, align 8
  %8 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.ccp_aes_def* %1, %struct.ccp_aes_def** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ccp_crypto_ablkcipher_alg* @kzalloc(i32 24, i32 %9)
  store %struct.ccp_crypto_ablkcipher_alg* %10, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %11 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %12 = icmp ne %struct.ccp_crypto_ablkcipher_alg* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %78

16:                                               ; preds = %2
  %17 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %18 = getelementptr inbounds %struct.ccp_crypto_ablkcipher_alg, %struct.ccp_crypto_ablkcipher_alg* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.ccp_aes_def*, %struct.ccp_aes_def** %5, align 8
  %21 = getelementptr inbounds %struct.ccp_aes_def, %struct.ccp_aes_def* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %24 = getelementptr inbounds %struct.ccp_crypto_ablkcipher_alg, %struct.ccp_crypto_ablkcipher_alg* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %26 = getelementptr inbounds %struct.ccp_crypto_ablkcipher_alg, %struct.ccp_crypto_ablkcipher_alg* %25, i32 0, i32 1
  store %struct.crypto_alg* %26, %struct.crypto_alg** %7, align 8
  %27 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %28 = load %struct.ccp_aes_def*, %struct.ccp_aes_def** %5, align 8
  %29 = getelementptr inbounds %struct.ccp_aes_def, %struct.ccp_aes_def* %28, i32 0, i32 4
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %29, align 8
  %31 = bitcast %struct.crypto_alg* %27 to i8*
  %32 = bitcast %struct.crypto_alg* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 16, i1 false)
  %33 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %34 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %37 = load %struct.ccp_aes_def*, %struct.ccp_aes_def** %5, align 8
  %38 = getelementptr inbounds %struct.ccp_aes_def, %struct.ccp_aes_def* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @snprintf(i32 %35, i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %42 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %45 = load %struct.ccp_aes_def*, %struct.ccp_aes_def** %5, align 8
  %46 = getelementptr inbounds %struct.ccp_aes_def, %struct.ccp_aes_def* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @snprintf(i32 %43, i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load %struct.ccp_aes_def*, %struct.ccp_aes_def** %5, align 8
  %50 = getelementptr inbounds %struct.ccp_aes_def, %struct.ccp_aes_def* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %53 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ccp_aes_def*, %struct.ccp_aes_def** %5, align 8
  %55 = getelementptr inbounds %struct.ccp_aes_def, %struct.ccp_aes_def* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %58 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %61 = call i32 @crypto_register_alg(%struct.crypto_alg* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %16
  %65 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %66 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %71 = call i32 @kfree(%struct.ccp_crypto_ablkcipher_alg* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %78

73:                                               ; preds = %16
  %74 = load %struct.ccp_crypto_ablkcipher_alg*, %struct.ccp_crypto_ablkcipher_alg** %6, align 8
  %75 = getelementptr inbounds %struct.ccp_crypto_ablkcipher_alg, %struct.ccp_crypto_ablkcipher_alg* %74, i32 0, i32 0
  %76 = load %struct.list_head*, %struct.list_head** %4, align 8
  %77 = call i32 @list_add(i32* %75, %struct.list_head* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %64, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.ccp_crypto_ablkcipher_alg* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @crypto_register_alg(%struct.crypto_alg*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ccp_crypto_ablkcipher_alg*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
