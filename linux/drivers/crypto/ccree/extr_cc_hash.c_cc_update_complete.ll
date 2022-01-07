; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_update_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_update_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahash_request = type { i32 }
%struct.ahash_req_ctx = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.cc_hash_ctx = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"req=%pK\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*, i32)* @cc_update_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_update_complete(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahash_request*, align 8
  %8 = alloca %struct.ahash_req_ctx*, align 8
  %9 = alloca %struct.crypto_ahash*, align 8
  %10 = alloca %struct.cc_hash_ctx*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ahash_request*
  store %struct.ahash_request* %12, %struct.ahash_request** %7, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %14 = call %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %13)
  store %struct.ahash_req_ctx* %14, %struct.ahash_req_ctx** %8, align 8
  %15 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %16 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %15)
  store %struct.crypto_ahash* %16, %struct.crypto_ahash** %9, align 8
  %17 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %18 = call %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %17)
  store %struct.cc_hash_ctx* %18, %struct.cc_hash_ctx** %10, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %21 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.ahash_request* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EINPROGRESS, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %8, align 8
  %29 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %30 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cc_unmap_hash_request(%struct.device* %27, %struct.ahash_req_ctx* %28, i32 %31, i32 0)
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %8, align 8
  %35 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %10, align 8
  %36 = call i32 @cc_unmap_req(%struct.device* %33, %struct.ahash_req_ctx* %34, %struct.cc_hash_ctx* %35)
  br label %37

37:                                               ; preds = %26, %3
  %38 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ahash_request_complete(%struct.ahash_request* %38, i32 %39)
  ret void
}

declare dso_local %struct.ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cc_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.ahash_request*) #1

declare dso_local i32 @cc_unmap_hash_request(%struct.device*, %struct.ahash_req_ctx*, i32, i32) #1

declare dso_local i32 @cc_unmap_req(%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*) #1

declare dso_local i32 @ahash_request_complete(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
