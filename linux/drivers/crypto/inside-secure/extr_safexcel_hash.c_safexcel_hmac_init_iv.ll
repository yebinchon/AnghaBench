; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_hmac_init_iv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_hmac_init_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.safexcel_ahash_result = type { i32, i32 }
%struct.safexcel_ahash_req = type { i32, i32 }
%struct.scatterlist = type { i32 }

@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@safexcel_ahash_complete = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32, i32*, i8*)* @safexcel_hmac_init_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_hmac_init_iv(%struct.ahash_request* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.safexcel_ahash_result, align 4
  %11 = alloca %struct.safexcel_ahash_req*, align 8
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %15 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %16 = load i32, i32* @safexcel_ahash_complete, align 4
  %17 = call i32 @ahash_request_set_callback(%struct.ahash_request* %14, i32 %15, i32 %16, %struct.safexcel_ahash_result* %10)
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @sg_init_one(%struct.scatterlist* %12, i32* %18, i32 %19)
  %21 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %21, %struct.scatterlist* %12, i32* %22, i32 %23)
  %25 = getelementptr inbounds %struct.safexcel_ahash_result, %struct.safexcel_ahash_result* %10, i32 0, i32 1
  %26 = call i32 @init_completion(i32* %25)
  %27 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %28 = call i32 @crypto_ahash_init(%struct.ahash_request* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  br label %69

33:                                               ; preds = %4
  %34 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %35 = call %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request* %34)
  store %struct.safexcel_ahash_req* %35, %struct.safexcel_ahash_req** %11, align 8
  %36 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %11, align 8
  %37 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %11, align 8
  %39 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %41 = call i32 @crypto_ahash_update(%struct.ahash_request* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %33
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @EINPROGRESS, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %69

56:                                               ; preds = %49, %44, %33
  %57 = getelementptr inbounds %struct.safexcel_ahash_result, %struct.safexcel_ahash_result* %10, i32 0, i32 1
  %58 = call i32 @wait_for_completion_interruptible(i32* %57)
  %59 = getelementptr inbounds %struct.safexcel_ahash_result, %struct.safexcel_ahash_result* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.safexcel_ahash_result, %struct.safexcel_ahash_result* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  br label %69

65:                                               ; preds = %56
  %66 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @crypto_ahash_export(%struct.ahash_request* %66, i8* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %62, %54, %31
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, %struct.safexcel_ahash_result*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_update(%struct.ahash_request*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @crypto_ahash_export(%struct.ahash_request*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
