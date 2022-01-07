; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.ahash_req_ctx = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"===== init (%d) ====\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @cc_hash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_hash_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.ahash_req_ctx*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.cc_hash_ctx*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %8 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.ahash_req_ctx* %8, %struct.ahash_req_ctx** %3, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %10 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %9)
  store %struct.crypto_ahash* %10, %struct.crypto_ahash** %4, align 8
  %11 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %12 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %11)
  store %struct.cc_hash_ctx* %12, %struct.cc_hash_ctx** %5, align 8
  %13 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.device* @drvdata_to_dev(i32 %15)
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %3, align 8
  %24 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %5, align 8
  %25 = call i32 @cc_init_req(%struct.device* %22, %struct.ahash_req_ctx* %23, %struct.cc_hash_ctx* %24)
  ret i32 0
}

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @cc_init_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
