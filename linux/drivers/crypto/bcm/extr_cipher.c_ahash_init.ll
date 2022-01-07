; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.iproc_ctx_s = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_init(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.iproc_ctx_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.crypto_shash*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %10)
  store %struct.crypto_ahash* %11, %struct.crypto_ahash** %4, align 8
  %12 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %13 = call %struct.iproc_ctx_s* @crypto_ahash_ctx(%struct.crypto_ahash* %12)
  store %struct.iproc_ctx_s* %13, %struct.iproc_ctx_s** %5, align 8
  %14 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %15 = call i64 @spu_no_incr_hash(%struct.iproc_ctx_s* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %1
  %18 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %19 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %18)
  %20 = call i8* @crypto_tfm_alg_name(i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.crypto_shash* @crypto_alloc_shash(i8* %21, i32 0, i32 0)
  store %struct.crypto_shash* %22, %struct.crypto_shash** %7, align 8
  %23 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %24 = call i64 @IS_ERR(%struct.crypto_shash* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %28 = call i32 @PTR_ERR(%struct.crypto_shash* %27)
  store i32 %28, i32* %8, align 4
  br label %104

29:                                               ; preds = %17
  %30 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %31 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %35 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @GFP_KERNEL, align 4
  br label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %9, align 4
  %45 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %46 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %45)
  %47 = add i64 8, %46
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.TYPE_6__* @kmalloc(i64 %47, i32 %48)
  %50 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %51 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %50, i32 0, i32 1
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %51, align 8
  %52 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %53 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %101

59:                                               ; preds = %43
  %60 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %61 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %62 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store %struct.crypto_shash* %60, %struct.crypto_shash** %64, align 8
  %65 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %66 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %59
  %70 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %71 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %72 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %75 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @crypto_shash_setkey(%struct.crypto_shash* %70, i32 %73, i64 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %96

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %59
  %83 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %84 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i32 @crypto_shash_init(%struct.TYPE_6__* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %96

90:                                               ; preds = %82
  br label %94

91:                                               ; preds = %1
  %92 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %93 = call i32 @__ahash_init(%struct.ahash_request* %92)
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %90
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %106

96:                                               ; preds = %89, %80
  %97 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %98 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = call i32 @kfree(%struct.TYPE_6__* %99)
  br label %101

101:                                              ; preds = %96, %56
  %102 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %103 = call i32 @crypto_free_shash(%struct.crypto_shash* %102)
  br label %104

104:                                              ; preds = %101, %26
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %94
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.iproc_ctx_s* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i64 @spu_no_incr_hash(%struct.iproc_ctx_s*) #1

declare dso_local i8* @crypto_tfm_alg_name(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local %struct.TYPE_6__* @kmalloc(i64, i32) #1

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_setkey(%struct.crypto_shash*, i32, i64) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_6__*) #1

declare dso_local i32 @__ahash_init(%struct.ahash_request*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
