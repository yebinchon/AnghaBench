; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahmac_iv_state_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahmac_iv_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.mv_cesa_ahash_result = type { i32, i32 }
%struct.scatterlist = type { i32 }

@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@mv_cesa_hmac_ahash_complete = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32*, i8*, i32)* @mv_cesa_ahmac_iv_state_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_ahmac_iv_state_init(%struct.ahash_request* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mv_cesa_ahash_result, align 4
  %11 = alloca %struct.scatterlist, align 4
  %12 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %14 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %15 = load i32, i32* @mv_cesa_hmac_ahash_complete, align 4
  %16 = call i32 @ahash_request_set_callback(%struct.ahash_request* %13, i32 %14, i32 %15, %struct.mv_cesa_ahash_result* %10)
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @sg_init_one(%struct.scatterlist* %11, i32* %17, i32 %18)
  %20 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %20, %struct.scatterlist* %11, i32* %21, i32 %22)
  %24 = getelementptr inbounds %struct.mv_cesa_ahash_result, %struct.mv_cesa_ahash_result* %10, i32 0, i32 1
  %25 = call i32 @init_completion(i32* %24)
  %26 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %27 = call i32 @crypto_ahash_init(%struct.ahash_request* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %62

32:                                               ; preds = %4
  %33 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %34 = call i32 @crypto_ahash_update(%struct.ahash_request* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @EINPROGRESS, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %62

44:                                               ; preds = %37, %32
  %45 = getelementptr inbounds %struct.mv_cesa_ahash_result, %struct.mv_cesa_ahash_result* %10, i32 0, i32 1
  %46 = call i32 @wait_for_completion_interruptible(i32* %45)
  %47 = getelementptr inbounds %struct.mv_cesa_ahash_result, %struct.mv_cesa_ahash_result* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.mv_cesa_ahash_result, %struct.mv_cesa_ahash_result* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  br label %62

53:                                               ; preds = %44
  %54 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @crypto_ahash_export(%struct.ahash_request* %54, i8* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %59, %50, %42, %30
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.mv_cesa_ahash_result*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_update(%struct.ahash_request*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @crypto_ahash_export(%struct.ahash_request*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
