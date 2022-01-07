; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_gcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_gcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.aead_req_ctx = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DRV_CRYPTO_DIRECTION_DECRYPT = common dso_local global i64 0, align 8
@AES_and_HASH = common dso_local global i32 0, align 4
@AES_to_HASH_and_DOUT = common dso_local global i32 0, align 4
@BYPASS = common dso_local global i32 0, align 4
@DIN_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_gcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_gcm(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.cc_hw_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.aead_req_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %11 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %10)
  store %struct.aead_req_ctx* %11, %struct.aead_req_ctx** %8, align 8
  %12 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DRV_CRYPTO_DIRECTION_DECRYPT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @AES_and_HASH, align 4
  store i32 %19, i32* %9, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @AES_to_HASH_and_DOUT, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %29 = load i32, i32* @BYPASS, align 4
  %30 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @cc_proc_cipher_desc(%struct.aead_request* %28, i32 %29, %struct.cc_hw_desc* %30, i32* %31)
  %33 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %34 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @cc_set_ghash_desc(%struct.aead_request* %33, %struct.cc_hw_desc* %34, i32* %35)
  %37 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %38 = load i32, i32* @DIN_HASH, align 4
  %39 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @cc_set_assoc_desc(%struct.aead_request* %37, i32 %38, %struct.cc_hw_desc* %39, i32* %40)
  %42 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %43 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @cc_set_gctr_desc(%struct.aead_request* %42, %struct.cc_hw_desc* %43, i32* %44)
  %46 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %47 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @cc_proc_gcm_result(%struct.aead_request* %46, %struct.cc_hw_desc* %47, i32* %48)
  store i32 0, i32* %4, align 4
  br label %85

50:                                               ; preds = %22
  %51 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %52 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @cc_set_ghash_desc(%struct.aead_request* %51, %struct.cc_hw_desc* %52, i32* %53)
  %55 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %61 = load i32, i32* @DIN_HASH, align 4
  %62 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @cc_set_assoc_desc(%struct.aead_request* %60, i32 %61, %struct.cc_hw_desc* %62, i32* %63)
  br label %65

65:                                               ; preds = %59, %50
  %66 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %67 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @cc_set_gctr_desc(%struct.aead_request* %66, %struct.cc_hw_desc* %67, i32* %68)
  %70 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @cc_proc_cipher_desc(%struct.aead_request* %75, i32 %76, %struct.cc_hw_desc* %77, i32* %78)
  br label %80

80:                                               ; preds = %74, %65
  %81 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %82 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @cc_proc_gcm_result(%struct.aead_request* %81, %struct.cc_hw_desc* %82, i32* %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %27
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @cc_proc_cipher_desc(%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_set_ghash_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_set_assoc_desc(%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_set_gctr_desc(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

declare dso_local i32 @cc_proc_gcm_result(%struct.aead_request*, %struct.cc_hw_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
