; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, i32 }
%struct.safexcel_ahash_req = type { i64 }

@HASH_CACHE_SIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @safexcel_ahash_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_ahash_cache(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.safexcel_ahash_req*, align 8
  %5 = alloca i64, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %7 = call %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request* %6)
  store %struct.safexcel_ahash_req* %7, %struct.safexcel_ahash_req** %4, align 8
  %8 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %9 = call i64 @safexcel_queued_len(%struct.safexcel_ahash_req* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load i64, i64* @HASH_CACHE_SIZE, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %22 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @sg_nents(i32 %23)
  %25 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %26 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %31 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @sg_pcopy_to_buffer(i32 %20, i32 %24, i64 %29, i64 %32, i32 0)
  store i32 0, i32* %2, align 4
  br label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @E2BIG, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @safexcel_queued_len(%struct.safexcel_ahash_req*) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i64, i64, i32) #1

declare dso_local i32 @sg_nents(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
