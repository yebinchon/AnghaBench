; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_keyhash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_keyhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.talitos_ctx = type { i64 }
%struct.scatterlist = type { i32 }
%struct.ahash_request = type { i32 }
%struct.crypto_wait = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32, i32*)* @keyhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyhash(%struct.crypto_ahash* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.talitos_ctx*, align 8
  %11 = alloca [1 x %struct.scatterlist], align 4
  %12 = alloca %struct.ahash_request*, align 8
  %13 = alloca %struct.crypto_wait, align 4
  %14 = alloca i32, align 4
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %16 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %15)
  %17 = call %struct.talitos_ctx* @crypto_tfm_ctx(i32 %16)
  store %struct.talitos_ctx* %17, %struct.talitos_ctx** %10, align 8
  %18 = call i32 @crypto_init_wait(%struct.crypto_wait* %13)
  %19 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ahash_request* @ahash_request_alloc(%struct.crypto_ahash* %19, i32 %20)
  store %struct.ahash_request* %21, %struct.ahash_request** %12, align 8
  %22 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %23 = icmp ne %struct.ahash_request* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %49

27:                                               ; preds = %4
  %28 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %29 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %31 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %32 = load i32, i32* @crypto_req_done, align 4
  %33 = call i32 @ahash_request_set_callback(%struct.ahash_request* %30, i32 %31, i32 %32, %struct.crypto_wait* %13)
  %34 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %11, i64 0, i64 0
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @sg_init_one(%struct.scatterlist* %34, i32* %35, i32 %36)
  %38 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %39 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %11, i64 0, i64 0
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %38, %struct.scatterlist* %39, i32* %40, i32 %41)
  %43 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %44 = call i32 @crypto_ahash_digest(%struct.ahash_request* %43)
  %45 = call i32 @crypto_wait_req(i32 %44, %struct.crypto_wait* %13)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %47 = call i32 @ahash_request_free(%struct.ahash_request* %46)
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %27, %24
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.talitos_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_init_wait(%struct.crypto_wait*) #1

declare dso_local %struct.ahash_request* @ahash_request_alloc(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.crypto_wait*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @crypto_wait_req(i32, %struct.crypto_wait*) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i32 @ahash_request_free(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
