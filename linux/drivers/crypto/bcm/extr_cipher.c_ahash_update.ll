; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.iproc_ctx_s = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.iproc_ctx_s*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
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
  br i1 %16, label %17, label %86

17:                                               ; preds = %1
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %24 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @sg_nents(i64 %25)
  store i32 %26, i32* %8, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %91

30:                                               ; preds = %22
  %31 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %32 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %36 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @GFP_KERNEL, align 4
  br label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %9, align 4
  %46 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %47 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32* @kmalloc(i32 %48, i32 %49)
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %91

56:                                               ; preds = %44
  %57 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %58 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %63 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sg_copy_to_buffer(i64 %59, i32 %60, i32* %61, i32 %64)
  %66 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %67 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %56
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %91

75:                                               ; preds = %56
  %76 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %77 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %81 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @crypto_shash_update(i32 %78, i32* %79, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @kfree(i32* %84)
  br label %89

86:                                               ; preds = %1
  %87 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %88 = call i32 @__ahash_update(%struct.ahash_request* %87)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %86, %75
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %70, %53, %27
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.iproc_ctx_s* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i64 @spu_no_incr_hash(%struct.iproc_ctx_s*) #1

declare dso_local i32 @sg_nents(i64) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i64, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @crypto_shash_update(i32, i32*, i32) #1

declare dso_local i32 @__ahash_update(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
