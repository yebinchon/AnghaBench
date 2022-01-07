; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_dcp_sha_update_fx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_dcp_sha_update_fx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcp = type { i32*, i32*, i32* }
%struct.ahash_request = type { i32, i32 }
%struct.dcp_sha_req_ctx = type { i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.dcp_async_ctx = type { i32, i64, i32 }

@global_sdcp = common dso_local global %struct.dcp* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32)* @dcp_sha_update_fx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcp_sha_update_fx(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcp*, align 8
  %7 = alloca %struct.dcp_sha_req_ctx*, align 8
  %8 = alloca %struct.crypto_ahash*, align 8
  %9 = alloca %struct.dcp_async_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dcp*, %struct.dcp** @global_sdcp, align 8
  store %struct.dcp* %11, %struct.dcp** %6, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %13 = call %struct.dcp_sha_req_ctx* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.dcp_sha_req_ctx* %13, %struct.dcp_sha_req_ctx** %7, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %15 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %14)
  store %struct.crypto_ahash* %15, %struct.crypto_ahash** %8, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %8, align 8
  %17 = call %struct.dcp_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %16)
  store %struct.dcp_async_ctx* %17, %struct.dcp_async_ctx** %9, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %82

26:                                               ; preds = %22, %2
  %27 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.dcp_sha_req_ctx*, %struct.dcp_sha_req_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.dcp_sha_req_ctx, %struct.dcp_sha_req_ctx* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.dcp_sha_req_ctx*, %struct.dcp_sha_req_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.dcp_sha_req_ctx, %struct.dcp_sha_req_ctx* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %26
  %43 = load %struct.dcp*, %struct.dcp** %6, align 8
  %44 = getelementptr inbounds %struct.dcp, %struct.dcp* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %9, align 8
  %47 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.dcp*, %struct.dcp** %6, align 8
  %52 = getelementptr inbounds %struct.dcp, %struct.dcp* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %59 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %58, i32 0, i32 0
  %60 = call i32 @crypto_enqueue_request(i32* %57, i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.dcp*, %struct.dcp** %6, align 8
  %62 = getelementptr inbounds %struct.dcp, %struct.dcp* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %9, align 8
  %65 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.dcp*, %struct.dcp** %6, align 8
  %70 = getelementptr inbounds %struct.dcp, %struct.dcp* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %9, align 8
  %73 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @wake_up_process(i32 %76)
  %78 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %9, align 8
  %79 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %42, %25
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.dcp_sha_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.dcp_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @crypto_enqueue_request(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
