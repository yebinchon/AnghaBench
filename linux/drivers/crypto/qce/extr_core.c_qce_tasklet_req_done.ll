; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_tasklet_req_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_tasklet_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qce_device = type { i32, i32, %struct.crypto_async_request* }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @qce_tasklet_req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qce_tasklet_req_done(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qce_device*, align 8
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.qce_device*
  store %struct.qce_device* %7, %struct.qce_device** %3, align 8
  %8 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %9 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %13 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %12, i32 0, i32 2
  %14 = load %struct.crypto_async_request*, %struct.crypto_async_request** %13, align 8
  store %struct.crypto_async_request* %14, %struct.crypto_async_request** %4, align 8
  %15 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %16 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %15, i32 0, i32 2
  store %struct.crypto_async_request* null, %struct.crypto_async_request** %16, align 8
  %17 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %18 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %17, i32 0, i32 1
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %22 = icmp ne %struct.crypto_async_request* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %25 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %24, i32 0, i32 0
  %26 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %25, align 8
  %27 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %28 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %29 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %26(%struct.crypto_async_request* %27, i32 %30)
  br label %32

32:                                               ; preds = %23, %1
  %33 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %34 = call i32 @qce_handle_queue(%struct.qce_device* %33, i32* null)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qce_handle_queue(%struct.qce_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
