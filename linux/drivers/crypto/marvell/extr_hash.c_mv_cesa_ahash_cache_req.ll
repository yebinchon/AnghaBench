; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_cache_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_cache_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, i32 }
%struct.mv_cesa_ahash_req = type { i64, i64, i32, i32 }

@CESA_MAX_HASH_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @mv_cesa_ahash_cache_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_ahash_cache_req(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.mv_cesa_ahash_req*, align 8
  %5 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %7 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %6)
  store %struct.mv_cesa_ahash_req* %7, %struct.mv_cesa_ahash_req** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %9 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load i64, i64* @CESA_MAX_HASH_BLOCK_SIZE, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %1
  %18 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %19 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  %23 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %24 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %56

29:                                               ; preds = %22
  %30 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %31 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %34 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %37 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %40 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %44 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @sg_pcopy_to_buffer(i32 %32, i32 %35, i64 %42, i64 %45, i32 0)
  %47 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %48 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %51 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %29, %17, %1
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %27
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
