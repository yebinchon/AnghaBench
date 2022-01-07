; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_process_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_process_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i64, i32, i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)* }
%struct.ablkcipher_request = type { i32 }

@HIFN_QUEUE_LENGTH = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_device*)* @hifn_process_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_process_queue(%struct.hifn_device* %0) #0 {
  %2 = alloca %struct.hifn_device*, align 8
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %2, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %10 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HIFN_QUEUE_LENGTH, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %8
  %15 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %16 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %15, i32 0, i32 1
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %20 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %19, i32 0, i32 2
  %21 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %20)
  store %struct.crypto_async_request* %21, %struct.crypto_async_request** %4, align 8
  %22 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %23 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %22, i32 0, i32 2
  %24 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %23)
  store %struct.crypto_async_request* %24, %struct.crypto_async_request** %3, align 8
  %25 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %26 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %25, i32 0, i32 1
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %30 = icmp ne %struct.crypto_async_request* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %14
  br label %52

32:                                               ; preds = %14
  %33 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %34 = icmp ne %struct.crypto_async_request* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %37 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %36, i32 0, i32 0
  %38 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %37, align 8
  %39 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %40 = load i32, i32* @EINPROGRESS, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 %38(%struct.crypto_async_request* %39, i32 %41)
  br label %43

43:                                               ; preds = %35, %32
  %44 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %45 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request* %44)
  store %struct.ablkcipher_request* %45, %struct.ablkcipher_request** %5, align 8
  %46 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %47 = call i32 @hifn_handle_req(%struct.ablkcipher_request* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %52

51:                                               ; preds = %43
  br label %8

52:                                               ; preds = %50, %31, %8
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local i32 @hifn_handle_req(%struct.ablkcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
