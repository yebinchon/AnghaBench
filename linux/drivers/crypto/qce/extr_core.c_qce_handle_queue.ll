; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_handle_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_handle_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qce_device = type { i32, i32, i32, %struct.crypto_async_request*, i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)* }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qce_device*, %struct.crypto_async_request*)* @qce_handle_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_handle_queue(%struct.qce_device* %0, %struct.crypto_async_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qce_device*, align 8
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca %struct.crypto_async_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qce_device* %0, %struct.qce_device** %4, align 8
  store %struct.crypto_async_request* %1, %struct.crypto_async_request** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %12 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %11, i32 0, i32 2
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %16 = icmp ne %struct.crypto_async_request* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %19 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %18, i32 0, i32 4
  %20 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %21 = call i32 @crypto_enqueue_request(i32* %19, %struct.crypto_async_request* %20)
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %24 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %23, i32 0, i32 3
  %25 = load %struct.crypto_async_request*, %struct.crypto_async_request** %24, align 8
  %26 = icmp ne %struct.crypto_async_request* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %29 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %28, i32 0, i32 2
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %86

33:                                               ; preds = %22
  %34 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %35 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %34, i32 0, i32 4
  %36 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %35)
  store %struct.crypto_async_request* %36, %struct.crypto_async_request** %7, align 8
  %37 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %38 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %37, i32 0, i32 4
  %39 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %38)
  store %struct.crypto_async_request* %39, %struct.crypto_async_request** %6, align 8
  %40 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %41 = icmp ne %struct.crypto_async_request* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %44 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %45 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %44, i32 0, i32 3
  store %struct.crypto_async_request* %43, %struct.crypto_async_request** %45, align 8
  br label %46

46:                                               ; preds = %42, %33
  %47 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %48 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %47, i32 0, i32 2
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %52 = icmp ne %struct.crypto_async_request* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %86

55:                                               ; preds = %46
  %56 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %57 = icmp ne %struct.crypto_async_request* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %60 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %59, i32 0, i32 2
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %63 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %62, i32 0, i32 0
  %64 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %63, align 8
  %65 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %66 = load i32, i32* @EINPROGRESS, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 %64(%struct.crypto_async_request* %65, i32 %67)
  %69 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %70 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock_bh(i32* %70)
  br label %72

72:                                               ; preds = %58, %55
  %73 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %74 = call i32 @qce_handle_request(%struct.crypto_async_request* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %80 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.qce_device*, %struct.qce_device** %4, align 8
  %82 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %81, i32 0, i32 1
  %83 = call i32 @tasklet_schedule(i32* %82)
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %53, %27
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @qce_handle_request(%struct.crypto_async_request*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
