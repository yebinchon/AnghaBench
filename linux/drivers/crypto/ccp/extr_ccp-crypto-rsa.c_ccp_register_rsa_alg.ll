; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-rsa.c_ccp_register_rsa_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-rsa.c_ccp_register_rsa_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.ccp_rsa_def = type { i8*, i8*, %struct.akcipher_alg* }
%struct.akcipher_alg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ccp_crypto_akcipher_alg = type { i32, %struct.akcipher_alg }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s akcipher algorithm registration error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.ccp_rsa_def*)* @ccp_register_rsa_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_register_rsa_alg(%struct.list_head* %0, %struct.ccp_rsa_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.ccp_rsa_def*, align 8
  %6 = alloca %struct.ccp_crypto_akcipher_alg*, align 8
  %7 = alloca %struct.akcipher_alg*, align 8
  %8 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.ccp_rsa_def* %1, %struct.ccp_rsa_def** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ccp_crypto_akcipher_alg* @kzalloc(i32 12, i32 %9)
  store %struct.ccp_crypto_akcipher_alg* %10, %struct.ccp_crypto_akcipher_alg** %6, align 8
  %11 = load %struct.ccp_crypto_akcipher_alg*, %struct.ccp_crypto_akcipher_alg** %6, align 8
  %12 = icmp ne %struct.ccp_crypto_akcipher_alg* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = load %struct.ccp_crypto_akcipher_alg*, %struct.ccp_crypto_akcipher_alg** %6, align 8
  %18 = getelementptr inbounds %struct.ccp_crypto_akcipher_alg, %struct.ccp_crypto_akcipher_alg* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.ccp_crypto_akcipher_alg*, %struct.ccp_crypto_akcipher_alg** %6, align 8
  %21 = getelementptr inbounds %struct.ccp_crypto_akcipher_alg, %struct.ccp_crypto_akcipher_alg* %20, i32 0, i32 1
  store %struct.akcipher_alg* %21, %struct.akcipher_alg** %7, align 8
  %22 = load %struct.akcipher_alg*, %struct.akcipher_alg** %7, align 8
  %23 = load %struct.ccp_rsa_def*, %struct.ccp_rsa_def** %5, align 8
  %24 = getelementptr inbounds %struct.ccp_rsa_def, %struct.ccp_rsa_def* %23, i32 0, i32 2
  %25 = load %struct.akcipher_alg*, %struct.akcipher_alg** %24, align 8
  %26 = bitcast %struct.akcipher_alg* %22 to i8*
  %27 = bitcast %struct.akcipher_alg* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 8, i1 false)
  %28 = load %struct.akcipher_alg*, %struct.akcipher_alg** %7, align 8
  %29 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %33 = load %struct.ccp_rsa_def*, %struct.ccp_rsa_def** %5, align 8
  %34 = getelementptr inbounds %struct.ccp_rsa_def, %struct.ccp_rsa_def* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i32 %31, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load %struct.akcipher_alg*, %struct.akcipher_alg** %7, align 8
  %38 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %42 = load %struct.ccp_rsa_def*, %struct.ccp_rsa_def** %5, align 8
  %43 = getelementptr inbounds %struct.ccp_rsa_def, %struct.ccp_rsa_def* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @snprintf(i32 %40, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load %struct.akcipher_alg*, %struct.akcipher_alg** %7, align 8
  %47 = call i32 @crypto_register_akcipher(%struct.akcipher_alg* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %16
  %51 = load %struct.akcipher_alg*, %struct.akcipher_alg** %7, align 8
  %52 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.ccp_crypto_akcipher_alg*, %struct.ccp_crypto_akcipher_alg** %6, align 8
  %58 = call i32 @kfree(%struct.ccp_crypto_akcipher_alg* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %16
  %61 = load %struct.ccp_crypto_akcipher_alg*, %struct.ccp_crypto_akcipher_alg** %6, align 8
  %62 = getelementptr inbounds %struct.ccp_crypto_akcipher_alg, %struct.ccp_crypto_akcipher_alg* %61, i32 0, i32 0
  %63 = load %struct.list_head*, %struct.list_head** %4, align 8
  %64 = call i32 @list_add(i32* %62, %struct.list_head* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %50, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ccp_crypto_akcipher_alg* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @crypto_register_akcipher(%struct.akcipher_alg*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ccp_crypto_akcipher_alg*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
