; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_handle_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_handle_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { %struct.mtk_aes_rec** }
%struct.mtk_aes_rec = type { i32, %struct.mtk_aes_base_ctx*, %struct.crypto_async_request*, i32, i32 }
%struct.mtk_aes_base_ctx = type { i32 (%struct.mtk_cryp*, %struct.mtk_aes_rec*)*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_async_request = type { i32, i32 (%struct.crypto_async_request*, i32)* }

@AES_FLAGS_BUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, i64, %struct.crypto_async_request*)* @mtk_aes_handle_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aes_handle_queue(%struct.mtk_cryp* %0, i64 %1, %struct.crypto_async_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_cryp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.crypto_async_request*, align 8
  %8 = alloca %struct.mtk_aes_rec*, align 8
  %9 = alloca %struct.crypto_async_request*, align 8
  %10 = alloca %struct.crypto_async_request*, align 8
  %11 = alloca %struct.mtk_aes_base_ctx*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.crypto_async_request* %2, %struct.crypto_async_request** %7, align 8
  %14 = load %struct.mtk_cryp*, %struct.mtk_cryp** %5, align 8
  %15 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %14, i32 0, i32 0
  %16 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %16, i64 %17
  %19 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %18, align 8
  store %struct.mtk_aes_rec* %19, %struct.mtk_aes_rec** %8, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %21 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %20, i32 0, i32 3
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %25 = icmp ne %struct.crypto_async_request* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %28 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %27, i32 0, i32 4
  %29 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %30 = call i32 @crypto_enqueue_request(i32* %28, %struct.crypto_async_request* %29)
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %33 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AES_FLAGS_BUSY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %40 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %39, i32 0, i32 3
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %4, align 4
  br label %104

44:                                               ; preds = %31
  %45 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %46 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %45, i32 0, i32 4
  %47 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %46)
  store %struct.crypto_async_request* %47, %struct.crypto_async_request** %10, align 8
  %48 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %49 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %48, i32 0, i32 4
  %50 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %49)
  store %struct.crypto_async_request* %50, %struct.crypto_async_request** %9, align 8
  %51 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  %52 = icmp ne %struct.crypto_async_request* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i32, i32* @AES_FLAGS_BUSY, align 4
  %55 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %56 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %44
  %60 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %61 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %60, i32 0, i32 3
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  %65 = icmp ne %struct.crypto_async_request* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %4, align 4
  br label %104

68:                                               ; preds = %59
  %69 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %70 = icmp ne %struct.crypto_async_request* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %73 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %72, i32 0, i32 1
  %74 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %73, align 8
  %75 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %76 = load i32, i32* @EINPROGRESS, align 4
  %77 = sub nsw i32 0, %76
  %78 = call i32 %74(%struct.crypto_async_request* %75, i32 %77)
  br label %79

79:                                               ; preds = %71, %68
  %80 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  %81 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.mtk_aes_base_ctx* @crypto_tfm_ctx(i32 %82)
  store %struct.mtk_aes_base_ctx* %83, %struct.mtk_aes_base_ctx** %11, align 8
  %84 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %11, align 8
  %85 = getelementptr inbounds %struct.mtk_aes_base_ctx, %struct.mtk_aes_base_ctx* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %11, align 8
  %89 = getelementptr inbounds %struct.mtk_aes_base_ctx, %struct.mtk_aes_base_ctx* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @memcpy(i32 %87, i32 %90, i32 4)
  %92 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  %93 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %94 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %93, i32 0, i32 2
  store %struct.crypto_async_request* %92, %struct.crypto_async_request** %94, align 8
  %95 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %11, align 8
  %96 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %97 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %96, i32 0, i32 1
  store %struct.mtk_aes_base_ctx* %95, %struct.mtk_aes_base_ctx** %97, align 8
  %98 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %11, align 8
  %99 = getelementptr inbounds %struct.mtk_aes_base_ctx, %struct.mtk_aes_base_ctx* %98, i32 0, i32 0
  %100 = load i32 (%struct.mtk_cryp*, %struct.mtk_aes_rec*)*, i32 (%struct.mtk_cryp*, %struct.mtk_aes_rec*)** %99, align 8
  %101 = load %struct.mtk_cryp*, %struct.mtk_cryp** %5, align 8
  %102 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %103 = call i32 %100(%struct.mtk_cryp* %101, %struct.mtk_aes_rec* %102)
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %79, %66, %38
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local %struct.mtk_aes_base_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
