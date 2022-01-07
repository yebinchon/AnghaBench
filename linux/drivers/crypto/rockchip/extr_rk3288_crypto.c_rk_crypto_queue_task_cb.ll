; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_crypto_queue_task_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_crypto_queue_task_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i32, i32 (%struct.rk_crypto_info*)*, %struct.crypto_async_request*, i32 (%struct.crypto_async_request*, i32)*, i32, i32, i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)* }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rk_crypto_queue_task_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_crypto_queue_task_cb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rk_crypto_info*, align 8
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.rk_crypto_info*
  store %struct.rk_crypto_info* %9, %struct.rk_crypto_info** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %11 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %10, i32 0, i32 6
  store i32 0, i32* %11, align 8
  %12 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %13 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %12, i32 0, i32 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %17 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %16, i32 0, i32 5
  %18 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %17)
  store %struct.crypto_async_request* %18, %struct.crypto_async_request** %5, align 8
  %19 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %20 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %19, i32 0, i32 5
  %21 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %20)
  store %struct.crypto_async_request* %21, %struct.crypto_async_request** %4, align 8
  %22 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %23 = icmp ne %struct.crypto_async_request* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %26 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %28 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %27, i32 0, i32 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %66

31:                                               ; preds = %1
  %32 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %33 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %32, i32 0, i32 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %37 = icmp ne %struct.crypto_async_request* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %40 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %39, i32 0, i32 0
  %41 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %40, align 8
  %42 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %43 = load i32, i32* @EINPROGRESS, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 %41(%struct.crypto_async_request* %42, i32 %44)
  store %struct.crypto_async_request* null, %struct.crypto_async_request** %5, align 8
  br label %46

46:                                               ; preds = %38, %31
  %47 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %48 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %49 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %48, i32 0, i32 2
  store %struct.crypto_async_request* %47, %struct.crypto_async_request** %49, align 8
  %50 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %51 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %50, i32 0, i32 1
  %52 = load i32 (%struct.rk_crypto_info*)*, i32 (%struct.rk_crypto_info*)** %51, align 8
  %53 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %54 = call i32 %52(%struct.rk_crypto_info* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %59 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %58, i32 0, i32 3
  %60 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %59, align 8
  %61 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %62 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %61, i32 0, i32 2
  %63 = load %struct.crypto_async_request*, %struct.crypto_async_request** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 %60(%struct.crypto_async_request* %63, i32 %64)
  br label %66

66:                                               ; preds = %24, %57, %46
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
