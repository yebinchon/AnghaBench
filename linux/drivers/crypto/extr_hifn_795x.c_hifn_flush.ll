; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32, i32, %struct.ablkcipher_request**, i64 }
%struct.ablkcipher_request = type { i32 }
%struct.crypto_async_request = type { i32 }
%struct.hifn_dma = type { %struct.hifn_desc* }
%struct.hifn_desc = type { i32 }

@HIFN_D_RES_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_VALID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_device*)* @hifn_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_flush(%struct.hifn_device* %0) #0 {
  %2 = alloca %struct.hifn_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca %struct.hifn_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hifn_desc*, align 8
  store %struct.hifn_device* %0, %struct.hifn_device** %2, align 8
  %9 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %10 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hifn_dma*
  store %struct.hifn_dma* %12, %struct.hifn_dma** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %58, %1
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @HIFN_D_RES_RSIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %13
  %18 = load %struct.hifn_dma*, %struct.hifn_dma** %6, align 8
  %19 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %18, i32 0, i32 0
  %20 = load %struct.hifn_desc*, %struct.hifn_desc** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hifn_desc, %struct.hifn_desc* %20, i64 %22
  store %struct.hifn_desc* %23, %struct.hifn_desc** %8, align 8
  %24 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %25 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %24, i32 0, i32 2
  %26 = load %struct.ablkcipher_request**, %struct.ablkcipher_request*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ablkcipher_request*, %struct.ablkcipher_request** %26, i64 %28
  %30 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %29, align 8
  %31 = icmp ne %struct.ablkcipher_request* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %17
  %33 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %34 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %33, i32 0, i32 2
  %35 = load %struct.ablkcipher_request**, %struct.ablkcipher_request*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ablkcipher_request*, %struct.ablkcipher_request** %35, i64 %37
  %39 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %38, align 8
  %40 = load %struct.hifn_desc*, %struct.hifn_desc** %8, align 8
  %41 = getelementptr inbounds %struct.hifn_desc, %struct.hifn_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HIFN_D_VALID, align 4
  %44 = call i32 @__cpu_to_le32(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  br label %51

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32 [ %49, %47 ], [ 0, %50 ]
  %53 = call i32 @hifn_process_ready(%struct.ablkcipher_request* %39, i32 %52)
  %54 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @hifn_complete_sa(%struct.hifn_device* %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %17
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %13

61:                                               ; preds = %13
  %62 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %63 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %62, i32 0, i32 0
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %71, %61
  %67 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %68 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %67, i32 0, i32 1
  %69 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %68)
  store %struct.crypto_async_request* %69, %struct.crypto_async_request** %4, align 8
  %70 = icmp ne %struct.crypto_async_request* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %73 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request* %72)
  store %struct.ablkcipher_request* %73, %struct.ablkcipher_request** %5, align 8
  %74 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %75 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %74, i32 0, i32 0
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @hifn_process_ready(%struct.ablkcipher_request* %78, i32 %80)
  %82 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %83 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %82, i32 0, i32 0
  %84 = load i64, i64* %3, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  br label %66

86:                                               ; preds = %66
  %87 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %88 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %87, i32 0, i32 0
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  ret void
}

declare dso_local i32 @hifn_process_ready(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @hifn_complete_sa(%struct.hifn_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
