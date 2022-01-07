; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_handle_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_handle_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_hash_dev = type { i32, i32, %struct.ahash_request*, i32, i32 }
%struct.ahash_request = type { i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)* }
%struct.img_hash_request_ctx = type { i32 }

@DRIVER_FLAGS_BUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"processing req, op: %lu, bytes: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_hash_dev*, %struct.ahash_request*)* @img_hash_handle_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_hash_handle_queue(%struct.img_hash_dev* %0, %struct.ahash_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.img_hash_dev*, align 8
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca %struct.crypto_async_request*, align 8
  %8 = alloca %struct.img_hash_request_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.img_hash_dev* %0, %struct.img_hash_dev** %4, align 8
  store %struct.ahash_request* %1, %struct.ahash_request** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %13 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %12, i32 0, i32 3
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %17 = icmp ne %struct.ahash_request* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %20 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %19, i32 0, i32 4
  %21 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %22 = call i32 @ahash_enqueue_request(i32* %20, %struct.ahash_request* %21)
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @DRIVER_FLAGS_BUSY, align 4
  %25 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %26 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %32 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %31, i32 0, i32 3
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %107

36:                                               ; preds = %23
  %37 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %38 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %37, i32 0, i32 4
  %39 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %38)
  store %struct.crypto_async_request* %39, %struct.crypto_async_request** %7, align 8
  %40 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %41 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %40, i32 0, i32 4
  %42 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %41)
  store %struct.crypto_async_request* %42, %struct.crypto_async_request** %6, align 8
  %43 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %44 = icmp ne %struct.crypto_async_request* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @DRIVER_FLAGS_BUSY, align 4
  %47 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %48 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %36
  %52 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %53 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %52, i32 0, i32 3
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %57 = icmp ne %struct.crypto_async_request* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %107

60:                                               ; preds = %51
  %61 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %62 = icmp ne %struct.crypto_async_request* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %65 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %64, i32 0, i32 0
  %66 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %65, align 8
  %67 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %68 = load i32, i32* @EINPROGRESS, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 %66(%struct.crypto_async_request* %67, i32 %69)
  br label %71

71:                                               ; preds = %63, %60
  %72 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %73 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %72)
  store %struct.ahash_request* %73, %struct.ahash_request** %5, align 8
  %74 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %75 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %76 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %75, i32 0, i32 2
  store %struct.ahash_request* %74, %struct.ahash_request** %76, align 8
  %77 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %78 = call %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %77)
  store %struct.img_hash_request_ctx* %78, %struct.img_hash_request_ctx** %8, align 8
  %79 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %80 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %86 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_info(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %90 = call i32 @img_hash_hw_init(%struct.img_hash_dev* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %71
  %94 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %95 = call i32 @img_hash_process_data(%struct.img_hash_dev* %94)
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %93, %71
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @EINPROGRESS, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @img_hash_finish_req(%struct.ahash_request* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %58, %30
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ahash_enqueue_request(i32*, %struct.ahash_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @img_hash_hw_init(%struct.img_hash_dev*) #1

declare dso_local i32 @img_hash_process_data(%struct.img_hash_dev*) #1

declare dso_local i32 @img_hash_finish_req(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
