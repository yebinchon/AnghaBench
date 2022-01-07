; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-galois.c_ccp_register_aes_aead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-galois.c_ccp_register_aes_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.ccp_aes_aead_def = type { i8*, i8*, i32, i32, %struct.aead_alg*, i32 }
%struct.aead_alg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ccp_crypto_aead = type { i32, %struct.aead_alg, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s ablkcipher algorithm registration error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.ccp_aes_aead_def*)* @ccp_register_aes_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_register_aes_aead(%struct.list_head* %0, %struct.ccp_aes_aead_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.ccp_aes_aead_def*, align 8
  %6 = alloca %struct.ccp_crypto_aead*, align 8
  %7 = alloca %struct.aead_alg*, align 8
  %8 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.ccp_aes_aead_def* %1, %struct.ccp_aes_aead_def** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ccp_crypto_aead* @kzalloc(i32 24, i32 %9)
  store %struct.ccp_crypto_aead* %10, %struct.ccp_crypto_aead** %6, align 8
  %11 = load %struct.ccp_crypto_aead*, %struct.ccp_crypto_aead** %6, align 8
  %12 = icmp ne %struct.ccp_crypto_aead* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.ccp_crypto_aead*, %struct.ccp_crypto_aead** %6, align 8
  %18 = getelementptr inbounds %struct.ccp_crypto_aead, %struct.ccp_crypto_aead* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.ccp_aes_aead_def*, %struct.ccp_aes_aead_def** %5, align 8
  %21 = getelementptr inbounds %struct.ccp_aes_aead_def, %struct.ccp_aes_aead_def* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ccp_crypto_aead*, %struct.ccp_crypto_aead** %6, align 8
  %24 = getelementptr inbounds %struct.ccp_crypto_aead, %struct.ccp_crypto_aead* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ccp_crypto_aead*, %struct.ccp_crypto_aead** %6, align 8
  %26 = getelementptr inbounds %struct.ccp_crypto_aead, %struct.ccp_crypto_aead* %25, i32 0, i32 1
  store %struct.aead_alg* %26, %struct.aead_alg** %7, align 8
  %27 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %28 = load %struct.ccp_aes_aead_def*, %struct.ccp_aes_aead_def** %5, align 8
  %29 = getelementptr inbounds %struct.ccp_aes_aead_def, %struct.ccp_aes_aead_def* %28, i32 0, i32 4
  %30 = load %struct.aead_alg*, %struct.aead_alg** %29, align 8
  %31 = bitcast %struct.aead_alg* %27 to i8*
  %32 = bitcast %struct.aead_alg* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 16, i1 false)
  %33 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %34 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %38 = load %struct.ccp_aes_aead_def*, %struct.ccp_aes_aead_def** %5, align 8
  %39 = getelementptr inbounds %struct.ccp_aes_aead_def, %struct.ccp_aes_aead_def* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @snprintf(i32 %36, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %43 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %47 = load %struct.ccp_aes_aead_def*, %struct.ccp_aes_aead_def** %5, align 8
  %48 = getelementptr inbounds %struct.ccp_aes_aead_def, %struct.ccp_aes_aead_def* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @snprintf(i32 %45, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load %struct.ccp_aes_aead_def*, %struct.ccp_aes_aead_def** %5, align 8
  %52 = getelementptr inbounds %struct.ccp_aes_aead_def, %struct.ccp_aes_aead_def* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %55 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load %struct.ccp_aes_aead_def*, %struct.ccp_aes_aead_def** %5, align 8
  %58 = getelementptr inbounds %struct.ccp_aes_aead_def, %struct.ccp_aes_aead_def* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %61 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %65 = call i32 @crypto_register_aead(%struct.aead_alg* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %16
  %69 = load %struct.aead_alg*, %struct.aead_alg** %7, align 8
  %70 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.ccp_crypto_aead*, %struct.ccp_crypto_aead** %6, align 8
  %76 = call i32 @kfree(%struct.ccp_crypto_aead* %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %83

78:                                               ; preds = %16
  %79 = load %struct.ccp_crypto_aead*, %struct.ccp_crypto_aead** %6, align 8
  %80 = getelementptr inbounds %struct.ccp_crypto_aead, %struct.ccp_crypto_aead* %79, i32 0, i32 0
  %81 = load %struct.list_head*, %struct.list_head** %4, align 8
  %82 = call i32 @list_add(i32* %80, %struct.list_head* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %68, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.ccp_crypto_aead* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @crypto_register_aead(%struct.aead_alg*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ccp_crypto_aead*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
