; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_caam_hash_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_caam_hash_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_hash_alg = type { i32, %struct.ahash_alg }
%struct.ahash_alg = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.caam_hash_template = type { i8*, i8*, i8*, i8*, i32, i32, %struct.ahash_alg }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate t_alg\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@caam_hash_cra_init = common dso_local global i32 0, align 4
@caam_hash_cra_exit = common dso_local global i32 0, align 4
@CAAM_CRA_PRIORITY = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.caam_hash_alg* (%struct.caam_hash_template*, i32)* @caam_hash_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.caam_hash_alg* @caam_hash_alloc(%struct.caam_hash_template* %0, i32 %1) #0 {
  %3 = alloca %struct.caam_hash_alg*, align 8
  %4 = alloca %struct.caam_hash_template*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.caam_hash_alg*, align 8
  %7 = alloca %struct.ahash_alg*, align 8
  %8 = alloca %struct.crypto_alg*, align 8
  store %struct.caam_hash_template* %0, %struct.caam_hash_template** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.caam_hash_alg* @kzalloc(i32 64, i32 %9)
  store %struct.caam_hash_alg* %10, %struct.caam_hash_alg** %6, align 8
  %11 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %6, align 8
  %12 = icmp ne %struct.caam_hash_alg* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.caam_hash_alg* @ERR_PTR(i32 %16)
  store %struct.caam_hash_alg* %17, %struct.caam_hash_alg** %3, align 8
  br label %100

18:                                               ; preds = %2
  %19 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %6, align 8
  %20 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %19, i32 0, i32 1
  %21 = load %struct.caam_hash_template*, %struct.caam_hash_template** %4, align 8
  %22 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %21, i32 0, i32 6
  %23 = bitcast %struct.ahash_alg* %20 to i8*
  %24 = bitcast %struct.ahash_alg* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 56, i1 false)
  %25 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %6, align 8
  %26 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %25, i32 0, i32 1
  store %struct.ahash_alg* %26, %struct.ahash_alg** %7, align 8
  %27 = load %struct.ahash_alg*, %struct.ahash_alg** %7, align 8
  %28 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.crypto_alg* %29, %struct.crypto_alg** %8, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %18
  %33 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %34 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %37 = load %struct.caam_hash_template*, %struct.caam_hash_template** %4, align 8
  %38 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @snprintf(i32 %35, i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %42 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %45 = load %struct.caam_hash_template*, %struct.caam_hash_template** %4, align 8
  %46 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @snprintf(i32 %43, i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %69

49:                                               ; preds = %18
  %50 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %51 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %54 = load %struct.caam_hash_template*, %struct.caam_hash_template** %4, align 8
  %55 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @snprintf(i32 %52, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %59 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %62 = load %struct.caam_hash_template*, %struct.caam_hash_template** %4, align 8
  %63 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @snprintf(i32 %60, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %6, align 8
  %67 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %49, %32
  %70 = load i32, i32* @THIS_MODULE, align 4
  %71 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %72 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @caam_hash_cra_init, align 4
  %74 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %75 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @caam_hash_cra_exit, align 4
  %77 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %78 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %80 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %79, i32 0, i32 0
  store i32 4, i32* %80, align 8
  %81 = load i32, i32* @CAAM_CRA_PRIORITY, align 4
  %82 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %83 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load %struct.caam_hash_template*, %struct.caam_hash_template** %4, align 8
  %85 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %88 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %90 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %92 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %93 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.caam_hash_template*, %struct.caam_hash_template** %4, align 8
  %95 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %6, align 8
  %98 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %6, align 8
  store %struct.caam_hash_alg* %99, %struct.caam_hash_alg** %3, align 8
  br label %100

100:                                              ; preds = %69, %13
  %101 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %3, align 8
  ret %struct.caam_hash_alg* %101
}

declare dso_local %struct.caam_hash_alg* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

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
