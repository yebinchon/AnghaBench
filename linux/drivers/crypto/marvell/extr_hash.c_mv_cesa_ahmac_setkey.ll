; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahmac_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahmac_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8*, i8*)* @mv_cesa_ahmac_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_ahmac_setkey(i8* %0, i32* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ahash_request*, align 8
  %13 = alloca %struct.crypto_ahash*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* null, i32** %15, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.crypto_ahash* @crypto_alloc_ahash(i8* %18, i32 0, i32 0)
  store %struct.crypto_ahash* %19, %struct.crypto_ahash** %13, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %13, align 8
  %21 = call i64 @IS_ERR(%struct.crypto_ahash* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load %struct.crypto_ahash*, %struct.crypto_ahash** %13, align 8
  %25 = call i32 @PTR_ERR(%struct.crypto_ahash* %24)
  store i32 %25, i32* %6, align 4
  br label %89

26:                                               ; preds = %5
  %27 = load %struct.crypto_ahash*, %struct.crypto_ahash** %13, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ahash_request* @ahash_request_alloc(%struct.crypto_ahash* %27, i32 %28)
  store %struct.ahash_request* %29, %struct.ahash_request** %12, align 8
  %30 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %31 = icmp ne %struct.ahash_request* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %17, align 4
  br label %85

35:                                               ; preds = %26
  %36 = load %struct.crypto_ahash*, %struct.crypto_ahash** %13, align 8
  %37 = call i32 @crypto_ahash_clear_flags(%struct.crypto_ahash* %36, i32 -1)
  %38 = load %struct.crypto_ahash*, %struct.crypto_ahash** %13, align 8
  %39 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %38)
  %40 = call i32 @crypto_tfm_alg_blocksize(i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32* @kcalloc(i32 2, i32 %41, i32 %42)
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %17, align 4
  br label %82

49:                                               ; preds = %35
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* %14, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %16, align 8
  %54 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @mv_cesa_ahmac_pad_init(%struct.ahash_request* %54, i32* %55, i32 %56, i32* %57, i32* %58, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %79

64:                                               ; preds = %49
  %65 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @mv_cesa_ahmac_iv_state_init(%struct.ahash_request* %65, i32* %66, i8* %67, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %79

73:                                               ; preds = %64
  %74 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %75 = load i32*, i32** %16, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @mv_cesa_ahmac_iv_state_init(%struct.ahash_request* %74, i32* %75, i8* %76, i32 %77)
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %73, %72, %63
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @kfree(i32* %80)
  br label %82

82:                                               ; preds = %79, %46
  %83 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %84 = call i32 @ahash_request_free(%struct.ahash_request* %83)
  br label %85

85:                                               ; preds = %82, %32
  %86 = load %struct.crypto_ahash*, %struct.crypto_ahash** %13, align 8
  %87 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %86)
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %23
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_ahash*) #1

declare dso_local %struct.ahash_request* @ahash_request_alloc(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_ahash_clear_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mv_cesa_ahmac_pad_init(%struct.ahash_request*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @mv_cesa_ahmac_iv_state_init(%struct.ahash_request*, i32*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ahash_request_free(%struct.ahash_request*) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
