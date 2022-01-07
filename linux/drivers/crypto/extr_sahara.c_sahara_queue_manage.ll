; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_queue_manage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_queue_manage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32, i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)*, i32 }
%struct.ahash_request = type { i32 }
%struct.ablkcipher_request = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_AHASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sahara_queue_manage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_queue_manage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sahara_dev*, align 8
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahash_request*, align 8
  %8 = alloca %struct.ablkcipher_request*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.sahara_dev*
  store %struct.sahara_dev* %10, %struct.sahara_dev** %3, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %65, %1
  %12 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %13 = call i32 @__set_current_state(i32 %12)
  %14 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %15 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %18 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %17, i32 0, i32 1
  %19 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %18)
  store %struct.crypto_async_request* %19, %struct.crypto_async_request** %5, align 8
  %20 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %21 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %20, i32 0, i32 1
  %22 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %21)
  store %struct.crypto_async_request* %22, %struct.crypto_async_request** %4, align 8
  %23 = load %struct.sahara_dev*, %struct.sahara_dev** %3, align 8
  %24 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %27 = icmp ne %struct.crypto_async_request* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %11
  %29 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %30 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %29, i32 0, i32 0
  %31 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %30, align 8
  %32 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %33 = load i32, i32* @EINPROGRESS, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 %31(%struct.crypto_async_request* %32, i32 %34)
  br label %36

36:                                               ; preds = %28, %11
  %37 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %38 = icmp ne %struct.crypto_async_request* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %41 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @crypto_tfm_alg_type(i32 %42)
  %44 = load i64, i64* @CRYPTO_ALG_TYPE_AHASH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %48 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %47)
  store %struct.ahash_request* %48, %struct.ahash_request** %7, align 8
  %49 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %50 = call i32 @sahara_sha_process(%struct.ahash_request* %49)
  store i32 %50, i32* %6, align 4
  br label %56

51:                                               ; preds = %39
  %52 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %53 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request* %52)
  store %struct.ablkcipher_request* %53, %struct.ablkcipher_request** %8, align 8
  %54 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %55 = call i32 @sahara_aes_process(%struct.ablkcipher_request* %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %58 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %57, i32 0, i32 0
  %59 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %58, align 8
  %60 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 %59(%struct.crypto_async_request* %60, i32 %61)
  br label %65

63:                                               ; preds = %36
  %64 = call i32 (...) @schedule()
  br label %65

65:                                               ; preds = %63, %56
  %66 = call i32 (...) @kthread_should_stop()
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %11, label %69

69:                                               ; preds = %65
  ret i32 0
}

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @crypto_tfm_alg_type(i32) #1

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local i32 @sahara_sha_process(%struct.ahash_request*) #1

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local i32 @sahara_aes_process(%struct.ablkcipher_request*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
