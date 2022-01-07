; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahmac_sha256_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahmac_sha256_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.mv_cesa_hmac_ctx = type { i8** }
%struct.sha256_state = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"mv-sha256\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @mv_cesa_ahmac_sha256_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_ahmac_sha256_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mv_cesa_hmac_ctx*, align 8
  %9 = alloca %struct.sha256_state, align 8
  %10 = alloca %struct.sha256_state, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %14 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %13)
  %15 = call %struct.mv_cesa_hmac_ctx* @crypto_tfm_ctx(i32 %14)
  store %struct.mv_cesa_hmac_ctx* %15, %struct.mv_cesa_hmac_ctx** %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @mv_cesa_ahmac_setkey(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %16, i32 %17, %struct.sha256_state* %9, %struct.sha256_state* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %73

23:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %44, %23
  %25 = load i32, i32* %12, align 4
  %26 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %9, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %9, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @be32_to_cpu(i32 %36)
  %38 = load %struct.mv_cesa_hmac_ctx*, %struct.mv_cesa_hmac_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.mv_cesa_hmac_ctx, %struct.mv_cesa_hmac_ctx* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %37, i8** %43, align 8
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %24

47:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %69, %47
  %49 = load i32, i32* %12, align 4
  %50 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %10, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @ARRAY_SIZE(i32* %51)
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %10, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @be32_to_cpu(i32 %60)
  %62 = load %struct.mv_cesa_hmac_ctx*, %struct.mv_cesa_hmac_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.mv_cesa_hmac_ctx, %struct.mv_cesa_hmac_ctx* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  store i8* %61, i8** %68, align 8
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %48

72:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %21
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.mv_cesa_hmac_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @mv_cesa_ahmac_setkey(i8*, i32*, i32, %struct.sha256_state*, %struct.sha256_state*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
