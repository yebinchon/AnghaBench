; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_hash_async_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_hash_async_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.n2_ahash_alg = type { i32, i32, i32, i32, i32 }
%struct.n2_hash_req_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @n2_hash_async_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2_hash_async_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.n2_ahash_alg*, align 8
  %5 = alloca %struct.n2_hash_req_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.n2_ahash_alg* @n2_ahash_alg(i32 %10)
  store %struct.n2_ahash_alg* %11, %struct.n2_ahash_alg** %4, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call %struct.n2_hash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.n2_hash_req_ctx* %13, %struct.n2_hash_req_ctx** %5, align 8
  %14 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %15 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %18 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %26 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %29 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @memcpy(i32* %27, i32 %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %54

33:                                               ; preds = %1
  %34 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %34, i32 0, i32 0
  %36 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %37 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %40 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32* %35, i32 %38, i32 %41)
  %43 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %44 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %45 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.n2_ahash_alg*, %struct.n2_ahash_alg** %4, align 8
  %48 = getelementptr inbounds %struct.n2_ahash_alg, %struct.n2_ahash_alg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %51, i32 0, i32 0
  %53 = call i32 @n2_do_async_digest(%struct.ahash_request* %43, i32 %46, i32 %49, i32 %50, i32* %52, i64 0, i32 0)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %33, %24
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.n2_ahash_alg* @n2_ahash_alg(i32) #1

declare dso_local %struct.n2_hash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @n2_do_async_digest(%struct.ahash_request*, i32, i32, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
