; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_queue_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_queue_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32 }
%struct.mv_cesa_ahash_req = type { i32 }
%struct.mv_cesa_engine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @mv_cesa_ahash_queue_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_ahash_queue_req(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.mv_cesa_ahash_req*, align 8
  %5 = alloca %struct.mv_cesa_engine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.mv_cesa_ahash_req* %9, %struct.mv_cesa_ahash_req** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call i32 @mv_cesa_ahash_req_init(%struct.ahash_request* %10, i32* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %44

20:                                               ; preds = %16
  %21 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %22 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.mv_cesa_engine* @mv_cesa_select_engine(i32 %23)
  store %struct.mv_cesa_engine* %24, %struct.mv_cesa_engine** %5, align 8
  %25 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %26 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %25, i32 0, i32 0
  %27 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %28 = call i32 @mv_cesa_ahash_prepare(i32* %26, %struct.mv_cesa_engine* %27)
  %29 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %30 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %29, i32 0, i32 0
  %31 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %32 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %31, i32 0, i32 0
  %33 = call i32 @mv_cesa_queue_req(i32* %30, i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %35 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %34, i32 0, i32 0
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @mv_cesa_req_needs_cleanup(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %41 = call i32 @mv_cesa_ahash_cleanup(%struct.ahash_request* %40)
  br label %42

42:                                               ; preds = %39, %20
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %19, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @mv_cesa_ahash_req_init(%struct.ahash_request*, i32*) #1

declare dso_local %struct.mv_cesa_engine* @mv_cesa_select_engine(i32) #1

declare dso_local i32 @mv_cesa_ahash_prepare(i32*, %struct.mv_cesa_engine*) #1

declare dso_local i32 @mv_cesa_queue_req(i32*, i32*) #1

declare dso_local i64 @mv_cesa_req_needs_cleanup(i32*, i32) #1

declare dso_local i32 @mv_cesa_ahash_cleanup(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
