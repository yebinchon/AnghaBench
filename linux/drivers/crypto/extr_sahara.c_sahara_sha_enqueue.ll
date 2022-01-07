; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32, i32, i32 }
%struct.ahash_request = type { i32, i32 }
%struct.sahara_sha_reqctx = type { i32, i32, i32 }

@dev_ptr = common dso_local global %struct.sahara_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32)* @sahara_sha_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_sha_enqueue(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sahara_sha_reqctx*, align 8
  %7 = alloca %struct.sahara_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %10 = call %struct.sahara_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.sahara_sha_reqctx* %10, %struct.sahara_sha_reqctx** %6, align 8
  %11 = load %struct.sahara_dev*, %struct.sahara_dev** @dev_ptr, align 8
  store %struct.sahara_dev* %11, %struct.sahara_dev** %7, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %13 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %50

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %6, align 8
  %23 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %6, align 8
  %25 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %6, align 8
  %30 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %6, align 8
  %32 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %31, i32 0, i32 2
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %20
  %34 = load %struct.sahara_dev*, %struct.sahara_dev** %7, align 8
  %35 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.sahara_dev*, %struct.sahara_dev** %7, align 8
  %38 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %37, i32 0, i32 2
  %39 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %40 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %39, i32 0, i32 0
  %41 = call i32 @crypto_enqueue_request(i32* %38, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.sahara_dev*, %struct.sahara_dev** %7, align 8
  %43 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.sahara_dev*, %struct.sahara_dev** %7, align 8
  %46 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @wake_up_process(i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %33, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.sahara_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @crypto_enqueue_request(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
