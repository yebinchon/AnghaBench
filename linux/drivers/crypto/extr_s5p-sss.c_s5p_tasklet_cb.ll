; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_tasklet_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_tasklet_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)* }
%struct.s5p_aes_reqctx = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @s5p_tasklet_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_tasklet_cb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.s5p_aes_dev*, align 8
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca %struct.s5p_aes_reqctx*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.s5p_aes_dev*
  store %struct.s5p_aes_dev* %9, %struct.s5p_aes_dev** %3, align 8
  %10 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %11 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %10, i32 0, i32 3
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %15 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %14, i32 0, i32 4
  %16 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %15)
  store %struct.crypto_async_request* %16, %struct.crypto_async_request** %5, align 8
  %17 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %18 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %17, i32 0, i32 4
  %19 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %18)
  store %struct.crypto_async_request* %19, %struct.crypto_async_request** %4, align 8
  %20 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %21 = icmp ne %struct.crypto_async_request* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %24 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %26 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %25, i32 0, i32 3
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %67

29:                                               ; preds = %1
  %30 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %31 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %30, i32 0, i32 3
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %35 = icmp ne %struct.crypto_async_request* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %38 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %37, i32 0, i32 0
  %39 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %38, align 8
  %40 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %41 = load i32, i32* @EINPROGRESS, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 %39(%struct.crypto_async_request* %40, i32 %42)
  br label %44

44:                                               ; preds = %36, %29
  %45 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %46 = call %struct.TYPE_5__* @ablkcipher_request_cast(%struct.crypto_async_request* %45)
  %47 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %48 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %47, i32 0, i32 1
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %48, align 8
  %49 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %50 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @crypto_tfm_ctx(i32 %54)
  %56 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %57 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %59 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call %struct.s5p_aes_reqctx* @ablkcipher_request_ctx(%struct.TYPE_5__* %60)
  store %struct.s5p_aes_reqctx* %61, %struct.s5p_aes_reqctx** %6, align 8
  %62 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %63 = load %struct.s5p_aes_reqctx*, %struct.s5p_aes_reqctx** %6, align 8
  %64 = getelementptr inbounds %struct.s5p_aes_reqctx, %struct.s5p_aes_reqctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @s5p_aes_crypt_start(%struct.s5p_aes_dev* %62, i32 %65)
  br label %67

67:                                               ; preds = %44, %22
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_5__* @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local i32 @crypto_tfm_ctx(i32) #1

declare dso_local %struct.s5p_aes_reqctx* @ablkcipher_request_ctx(%struct.TYPE_5__*) #1

declare dso_local i32 @s5p_aes_crypt_start(%struct.s5p_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
