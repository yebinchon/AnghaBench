; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_dequeue_req_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_dequeue_req_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.mv_cesa_engine = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_async_request* @mv_cesa_dequeue_req_locked(%struct.mv_cesa_engine* %0, %struct.crypto_async_request** %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca %struct.mv_cesa_engine*, align 8
  %5 = alloca %struct.crypto_async_request**, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  store %struct.mv_cesa_engine* %0, %struct.mv_cesa_engine** %4, align 8
  store %struct.crypto_async_request** %1, %struct.crypto_async_request*** %5, align 8
  %7 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %4, align 8
  %8 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %7, i32 0, i32 0
  %9 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %8)
  %10 = load %struct.crypto_async_request**, %struct.crypto_async_request*** %5, align 8
  store %struct.crypto_async_request* %9, %struct.crypto_async_request** %10, align 8
  %11 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %4, align 8
  %12 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %11, i32 0, i32 0
  %13 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %12)
  store %struct.crypto_async_request* %13, %struct.crypto_async_request** %6, align 8
  %14 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %15 = icmp ne %struct.crypto_async_request* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.crypto_async_request* null, %struct.crypto_async_request** %3, align 8
  br label %19

17:                                               ; preds = %2
  %18 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  store %struct.crypto_async_request* %18, %struct.crypto_async_request** %3, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  ret %struct.crypto_async_request* %20
}

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
