; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_rearm_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_rearm_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_engine = type { i32, %struct.crypto_async_request* }
%struct.crypto_async_request = type { i32, i32 (%struct.crypto_async_request*, i32)* }
%struct.mv_cesa_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.crypto_async_request*)* }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_cesa_engine*)* @mv_cesa_rearm_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_rearm_engine(%struct.mv_cesa_engine* %0) #0 {
  %2 = alloca %struct.mv_cesa_engine*, align 8
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca %struct.mv_cesa_ctx*, align 8
  store %struct.mv_cesa_engine* %0, %struct.mv_cesa_engine** %2, align 8
  store %struct.crypto_async_request* null, %struct.crypto_async_request** %3, align 8
  store %struct.crypto_async_request* null, %struct.crypto_async_request** %4, align 8
  %6 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %2, align 8
  %7 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %2, align 8
  %10 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %9, i32 0, i32 1
  %11 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %12 = icmp ne %struct.crypto_async_request* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %2, align 8
  %15 = call %struct.crypto_async_request* @mv_cesa_dequeue_req_locked(%struct.mv_cesa_engine* %14, %struct.crypto_async_request** %4)
  store %struct.crypto_async_request* %15, %struct.crypto_async_request** %3, align 8
  %16 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %17 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %2, align 8
  %18 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %17, i32 0, i32 1
  store %struct.crypto_async_request* %16, %struct.crypto_async_request** %18, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %2, align 8
  %21 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_bh(i32* %21)
  %23 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %24 = icmp ne %struct.crypto_async_request* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %49

26:                                               ; preds = %19
  %27 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %28 = icmp ne %struct.crypto_async_request* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %31 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %30, i32 0, i32 1
  %32 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %31, align 8
  %33 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %34 = load i32, i32* @EINPROGRESS, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 %32(%struct.crypto_async_request* %33, i32 %35)
  br label %37

37:                                               ; preds = %29, %26
  %38 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %39 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.mv_cesa_ctx* @crypto_tfm_ctx(i32 %40)
  store %struct.mv_cesa_ctx* %41, %struct.mv_cesa_ctx** %5, align 8
  %42 = load %struct.mv_cesa_ctx*, %struct.mv_cesa_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.mv_cesa_ctx, %struct.mv_cesa_ctx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.crypto_async_request*)*, i32 (%struct.crypto_async_request*)** %45, align 8
  %47 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %48 = call i32 %46(%struct.crypto_async_request* %47)
  br label %49

49:                                               ; preds = %37, %25
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.crypto_async_request* @mv_cesa_dequeue_req_locked(%struct.mv_cesa_engine*, %struct.crypto_async_request**) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.mv_cesa_ctx* @crypto_tfm_ctx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
