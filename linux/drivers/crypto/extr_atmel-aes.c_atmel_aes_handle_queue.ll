; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_handle_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_handle_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, i32, %struct.atmel_aes_base_ctx*, %struct.crypto_async_request*, i32, i32 }
%struct.atmel_aes_base_ctx = type { i32 (%struct.atmel_aes_dev*)* }
%struct.crypto_async_request = type { i32, i32 (%struct.crypto_async_request*, i32)* }

@AES_FLAGS_BUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*, %struct.crypto_async_request*)* @atmel_aes_handle_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_handle_queue(%struct.atmel_aes_dev* %0, %struct.crypto_async_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_aes_dev*, align 8
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca %struct.crypto_async_request*, align 8
  %8 = alloca %struct.atmel_aes_base_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %4, align 8
  store %struct.crypto_async_request* %1, %struct.crypto_async_request** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %14 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %13, i32 0, i32 4
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %18 = icmp ne %struct.crypto_async_request* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %21 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %20, i32 0, i32 5
  %22 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %23 = call i32 @crypto_enqueue_request(i32* %21, %struct.crypto_async_request* %22)
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %26 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AES_FLAGS_BUSY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %32, i32 0, i32 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %3, align 4
  br label %103

37:                                               ; preds = %24
  %38 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %39 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %38, i32 0, i32 5
  %40 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %39)
  store %struct.crypto_async_request* %40, %struct.crypto_async_request** %7, align 8
  %41 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %42 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %41, i32 0, i32 5
  %43 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %42)
  store %struct.crypto_async_request* %43, %struct.crypto_async_request** %6, align 8
  %44 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %45 = icmp ne %struct.crypto_async_request* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* @AES_FLAGS_BUSY, align 4
  %48 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %49 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %37
  %53 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %54 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %53, i32 0, i32 4
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %58 = icmp ne %struct.crypto_async_request* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %3, align 4
  br label %103

61:                                               ; preds = %52
  %62 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %63 = icmp ne %struct.crypto_async_request* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %66 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %65, i32 0, i32 1
  %67 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %66, align 8
  %68 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %69 = load i32, i32* @EINPROGRESS, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 %67(%struct.crypto_async_request* %68, i32 %70)
  br label %72

72:                                               ; preds = %64, %61
  %73 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %74 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.atmel_aes_base_ctx* @crypto_tfm_ctx(i32 %75)
  store %struct.atmel_aes_base_ctx* %76, %struct.atmel_aes_base_ctx** %8, align 8
  %77 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %78 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %79 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %78, i32 0, i32 3
  store %struct.crypto_async_request* %77, %struct.crypto_async_request** %79, align 8
  %80 = load %struct.atmel_aes_base_ctx*, %struct.atmel_aes_base_ctx** %8, align 8
  %81 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %82 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %81, i32 0, i32 2
  store %struct.atmel_aes_base_ctx* %80, %struct.atmel_aes_base_ctx** %82, align 8
  %83 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %84 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %85 = icmp ne %struct.crypto_async_request* %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %89 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.atmel_aes_base_ctx*, %struct.atmel_aes_base_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.atmel_aes_base_ctx, %struct.atmel_aes_base_ctx* %90, i32 0, i32 0
  %92 = load i32 (%struct.atmel_aes_dev*)*, i32 (%struct.atmel_aes_dev*)** %91, align 8
  %93 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %94 = call i32 %92(%struct.atmel_aes_dev* %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %72
  %98 = load i32, i32* %12, align 4
  br label %101

99:                                               ; preds = %72
  %100 = load i32, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %59, %31
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local %struct.atmel_aes_base_ctx* @crypto_tfm_ctx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
