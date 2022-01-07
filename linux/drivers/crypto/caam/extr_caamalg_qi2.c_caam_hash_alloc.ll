; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_caam_hash_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_caam_hash_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_hash_alg = type { %struct.device*, i32, %struct.ahash_alg }
%struct.ahash_alg = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.caam_hash_template = type { i8*, i8*, i8*, i8*, i32, i32, %struct.ahash_alg }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@caam_hash_cra_init = common dso_local global i32 0, align 4
@caam_hash_cra_exit = common dso_local global i32 0, align 4
@CAAM_CRA_PRIORITY = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.caam_hash_alg* (%struct.device*, %struct.caam_hash_template*, i32)* @caam_hash_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.caam_hash_alg* @caam_hash_alloc(%struct.device* %0, %struct.caam_hash_template* %1, i32 %2) #0 {
  %4 = alloca %struct.caam_hash_alg*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.caam_hash_template*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.caam_hash_alg*, align 8
  %9 = alloca %struct.ahash_alg*, align 8
  %10 = alloca %struct.crypto_alg*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.caam_hash_template* %1, %struct.caam_hash_template** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.caam_hash_alg* @kzalloc(i32 72, i32 %11)
  store %struct.caam_hash_alg* %12, %struct.caam_hash_alg** %8, align 8
  %13 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %8, align 8
  %14 = icmp ne %struct.caam_hash_alg* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.caam_hash_alg* @ERR_PTR(i32 %17)
  store %struct.caam_hash_alg* %18, %struct.caam_hash_alg** %4, align 8
  br label %104

19:                                               ; preds = %3
  %20 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %8, align 8
  %21 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %20, i32 0, i32 2
  %22 = load %struct.caam_hash_template*, %struct.caam_hash_template** %6, align 8
  %23 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %22, i32 0, i32 6
  %24 = bitcast %struct.ahash_alg* %21 to i8*
  %25 = bitcast %struct.ahash_alg* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 56, i1 false)
  %26 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %8, align 8
  %27 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %26, i32 0, i32 2
  store %struct.ahash_alg* %27, %struct.ahash_alg** %9, align 8
  %28 = load %struct.ahash_alg*, %struct.ahash_alg** %9, align 8
  %29 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.crypto_alg* %30, %struct.crypto_alg** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %19
  %34 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %35 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %38 = load %struct.caam_hash_template*, %struct.caam_hash_template** %6, align 8
  %39 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @snprintf(i32 %36, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %43 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %46 = load %struct.caam_hash_template*, %struct.caam_hash_template** %6, align 8
  %47 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @snprintf(i32 %44, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %70

50:                                               ; preds = %19
  %51 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %52 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %55 = load %struct.caam_hash_template*, %struct.caam_hash_template** %6, align 8
  %56 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @snprintf(i32 %53, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %60 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %63 = load %struct.caam_hash_template*, %struct.caam_hash_template** %6, align 8
  %64 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @snprintf(i32 %61, i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %8, align 8
  %68 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %50, %33
  %71 = load i32, i32* @THIS_MODULE, align 4
  %72 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %73 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @caam_hash_cra_init, align 4
  %75 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %76 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @caam_hash_cra_exit, align 4
  %78 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %79 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %81 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %80, i32 0, i32 0
  store i32 4, i32* %81, align 8
  %82 = load i32, i32* @CAAM_CRA_PRIORITY, align 4
  %83 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %84 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.caam_hash_template*, %struct.caam_hash_template** %6, align 8
  %86 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %89 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %91 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %93 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %94 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.caam_hash_template*, %struct.caam_hash_template** %6, align 8
  %96 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %8, align 8
  %99 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %8, align 8
  %102 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %101, i32 0, i32 0
  store %struct.device* %100, %struct.device** %102, align 8
  %103 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %8, align 8
  store %struct.caam_hash_alg* %103, %struct.caam_hash_alg** %4, align 8
  br label %104

104:                                              ; preds = %70, %15
  %105 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %4, align 8
  ret %struct.caam_hash_alg* %105
}

declare dso_local %struct.caam_hash_alg* @kzalloc(i32, i32) #1

declare dso_local %struct.caam_hash_alg* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
