; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_fin_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_fin_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_hw_desc = type { i32 }
%struct.ahash_request = type { i32 }
%struct.ahash_req_ctx = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i32, i32, i32 }

@NS_BIT = common dso_local global i32 0, align 4
@S_HASH_to_DOUT = common dso_local global i32 0, align 4
@SETUP_WRITE_STATE0 = common dso_local global i32 0, align 4
@HASH_PADDING_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_hw_desc*, %struct.ahash_request*, i32)* @cc_fin_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_fin_result(%struct.cc_hw_desc* %0, %struct.ahash_request* %1, i32 %2) #0 {
  %4 = alloca %struct.cc_hw_desc*, align 8
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahash_req_ctx*, align 8
  %8 = alloca %struct.crypto_ahash*, align 8
  %9 = alloca %struct.cc_hash_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.cc_hw_desc* %0, %struct.cc_hw_desc** %4, align 8
  store %struct.ahash_request* %1, %struct.ahash_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %12 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %11)
  store %struct.ahash_req_ctx* %12, %struct.ahash_req_ctx** %7, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %14 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %13)
  store %struct.crypto_ahash* %14, %struct.crypto_ahash** %8, align 8
  %15 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %16 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %15)
  store %struct.cc_hash_ctx* %16, %struct.cc_hash_ctx** %9, align 8
  %17 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %18 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %19, i64 %21
  %23 = call i32 @hw_desc_init(%struct.cc_hw_desc* %22)
  %24 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %24, i64 %26
  %28 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %29 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_hash_cipher_mode(%struct.cc_hw_desc* %27, i32 %30, i32 %33)
  %35 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %35, i64 %37
  %39 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @NS_BIT, align 4
  %44 = call i32 @set_dout_dlli(%struct.cc_hw_desc* %38, i32 %41, i32 %42, i32 %43, i32 1)
  %45 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %48, i64 %50
  %52 = call i32 @set_queue_last_ind(i32 %47, %struct.cc_hw_desc* %51)
  %53 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %53, i64 %55
  %57 = load i32, i32* @S_HASH_to_DOUT, align 4
  %58 = call i32 @set_flow_mode(%struct.cc_hw_desc* %56, i32 %57)
  %59 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %59, i64 %61
  %63 = load i32, i32* @SETUP_WRITE_STATE0, align 4
  %64 = call i32 @set_setup_mode(%struct.cc_hw_desc* %62, i32 %63)
  %65 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %65, i64 %67
  %69 = load i32, i32* @HASH_PADDING_DISABLED, align 4
  %70 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %68, i32 %69)
  %71 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %9, align 8
  %72 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %74, i64 %76
  %78 = call i32 @cc_set_endianity(i32 %73, %struct.cc_hw_desc* %77)
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_hash_cipher_mode(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_dout_dlli(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_queue_last_ind(i32, %struct.cc_hw_desc*) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config1(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_set_endianity(i32, %struct.cc_hw_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
