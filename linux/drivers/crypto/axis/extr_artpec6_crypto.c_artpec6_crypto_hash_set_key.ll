; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_hash_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_hash_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.artpec6_hashalg_context = type { i64, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Invalid length (%d) of HMAC key\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@hdesc = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @artpec6_crypto_hash_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_hash_set_key(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.artpec6_hashalg_context*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %12 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %11, i32 0, i32 0
  %13 = call %struct.artpec6_hashalg_context* @crypto_tfm_ctx(i32* %12)
  store %struct.artpec6_hashalg_context* %13, %struct.artpec6_hashalg_context** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load %struct.artpec6_hashalg_context*, %struct.artpec6_hashalg_context** %8, align 8
  %23 = getelementptr inbounds %struct.artpec6_hashalg_context, %struct.artpec6_hashalg_context* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memset(i32 %24, i32 0, i32 4)
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %27 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %26)
  %28 = call i64 @crypto_tfm_alg_blocksize(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %21
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hdesc, align 8
  %35 = load %struct.artpec6_hashalg_context*, %struct.artpec6_hashalg_context** %8, align 8
  %36 = getelementptr inbounds %struct.artpec6_hashalg_context, %struct.artpec6_hashalg_context* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_4__* %34, i32 %37)
  %39 = load %struct.artpec6_hashalg_context*, %struct.artpec6_hashalg_context** %8, align 8
  %40 = getelementptr inbounds %struct.artpec6_hashalg_context, %struct.artpec6_hashalg_context* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hdesc, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.artpec6_hashalg_context*, %struct.artpec6_hashalg_context** %8, align 8
  %46 = getelementptr inbounds %struct.artpec6_hashalg_context, %struct.artpec6_hashalg_context* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hdesc, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.artpec6_hashalg_context*, %struct.artpec6_hashalg_context** %8, align 8
  %51 = getelementptr inbounds %struct.artpec6_hashalg_context, %struct.artpec6_hashalg_context* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @crypto_shash_digest(%struct.TYPE_4__* %47, i32* %48, i32 %49, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %33
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %71

58:                                               ; preds = %33
  br label %70

59:                                               ; preds = %21
  %60 = load %struct.artpec6_hashalg_context*, %struct.artpec6_hashalg_context** %8, align 8
  %61 = getelementptr inbounds %struct.artpec6_hashalg_context, %struct.artpec6_hashalg_context* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @memcpy(i32 %62, i32* %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = load %struct.artpec6_hashalg_context*, %struct.artpec6_hashalg_context** %8, align 8
  %69 = getelementptr inbounds %struct.artpec6_hashalg_context, %struct.artpec6_hashalg_context* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %59, %58
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %56, %16
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.artpec6_hashalg_context* @crypto_tfm_ctx(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_4__*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
