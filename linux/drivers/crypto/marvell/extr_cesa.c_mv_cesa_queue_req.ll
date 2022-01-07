; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_queue_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_queue_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.mv_cesa_req = type { %struct.mv_cesa_engine* }
%struct.mv_cesa_engine = type { i32, i32 }

@CESA_DMA_REQ = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_cesa_queue_req(%struct.crypto_async_request* %0, %struct.mv_cesa_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca %struct.mv_cesa_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv_cesa_engine*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %4, align 8
  store %struct.mv_cesa_req* %1, %struct.mv_cesa_req** %5, align 8
  %8 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %5, align 8
  %9 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %8, i32 0, i32 0
  %10 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %9, align 8
  store %struct.mv_cesa_engine* %10, %struct.mv_cesa_engine** %7, align 8
  %11 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %12 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %15 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %14, i32 0, i32 1
  %16 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %17 = call i32 @crypto_enqueue_request(i32* %15, %struct.crypto_async_request* %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %5, align 8
  %19 = call i64 @mv_cesa_req_get_type(%struct.mv_cesa_req* %18)
  %20 = load i64, i64* @CESA_DMA_REQ, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EINPROGRESS, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %22
  %33 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %34 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %5, align 8
  %35 = call i32 @mv_cesa_tdma_chain(%struct.mv_cesa_engine* %33, %struct.mv_cesa_req* %34)
  br label %36

36:                                               ; preds = %32, %27, %2
  %37 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %38 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @EINPROGRESS, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %36
  %47 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %48 = call i32 @mv_cesa_rearm_engine(%struct.mv_cesa_engine* %47)
  %49 = load i32, i32* @EINPROGRESS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %44
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i64 @mv_cesa_req_get_type(%struct.mv_cesa_req*) #1

declare dso_local i32 @mv_cesa_tdma_chain(%struct.mv_cesa_engine*, %struct.mv_cesa_req*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mv_cesa_rearm_engine(%struct.mv_cesa_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
