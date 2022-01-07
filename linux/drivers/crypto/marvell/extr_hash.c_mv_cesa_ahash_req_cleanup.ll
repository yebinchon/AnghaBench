; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_req_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_req_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ahash_request = type { i64, i32 }
%struct.mv_cesa_ahash_req = type { i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*)* @mv_cesa_ahash_req_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_ahash_req_cleanup(%struct.crypto_async_request* %0) #0 {
  %2 = alloca %struct.crypto_async_request*, align 8
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.mv_cesa_ahash_req*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %2, align 8
  %5 = load %struct.crypto_async_request*, %struct.crypto_async_request** %2, align 8
  %6 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %5)
  store %struct.ahash_request* %6, %struct.ahash_request** %3, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.mv_cesa_ahash_req* %8, %struct.mv_cesa_ahash_req** %4, align 8
  %9 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %10 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %15 = call i32 @mv_cesa_ahash_last_cleanup(%struct.ahash_request* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %18 = call i32 @mv_cesa_ahash_cleanup(%struct.ahash_request* %17)
  %19 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %20 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %16
  %24 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %25 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %28 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %31 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %34 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %37 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %40 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i32 @sg_pcopy_to_buffer(i32 %26, i32 %29, i32 %32, i64 %35, i64 %42)
  br label %44

44:                                               ; preds = %23, %16
  ret void
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @mv_cesa_ahash_last_cleanup(%struct.ahash_request*) #1

declare dso_local i32 @mv_cesa_ahash_cleanup(%struct.ahash_request*) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
