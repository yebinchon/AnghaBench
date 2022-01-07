; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ablkcipher_request = type { i64, i32, i32, i32 }
%struct.atmel_aes_reqctx = type { i32 }

@ATMEL_AES_DMA_THRESHOLD = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@atmel_aes_transfer_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_start(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca %struct.atmel_aes_reqctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  %8 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %9 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.ablkcipher_request* @ablkcipher_request_cast(i32 %10)
  store %struct.ablkcipher_request* %11, %struct.ablkcipher_request** %4, align 8
  %12 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %13 = call %struct.atmel_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %12)
  store %struct.atmel_aes_reqctx* %13, %struct.atmel_aes_reqctx** %5, align 8
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %15 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ATMEL_AES_DMA_THRESHOLD, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %21 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %19, %1
  %28 = phi i1 [ true, %1 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %31 = load %struct.atmel_aes_reqctx*, %struct.atmel_aes_reqctx** %5, align 8
  %32 = call i32 @atmel_aes_set_mode(%struct.atmel_aes_dev* %30, %struct.atmel_aes_reqctx* %31)
  %33 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %34 = call i32 @atmel_aes_hw_init(%struct.atmel_aes_dev* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @atmel_aes_complete(%struct.atmel_aes_dev* %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %76

41:                                               ; preds = %27
  %42 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %45 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @atmel_aes_write_ctrl(%struct.atmel_aes_dev* %42, i32 %43, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %52 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %53 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %56 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %59 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @atmel_aes_transfer_complete, align 4
  %62 = call i32 @atmel_aes_dma_start(%struct.atmel_aes_dev* %51, i32 %54, i32 %57, i64 %60, i32 %61)
  store i32 %62, i32* %2, align 4
  br label %76

63:                                               ; preds = %41
  %64 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %65 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %66 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %69 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %72 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @atmel_aes_transfer_complete, align 4
  %75 = call i32 @atmel_aes_cpu_start(%struct.atmel_aes_dev* %64, i32 %67, i32 %70, i64 %73, i32 %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %63, %50, %37
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(i32) #1

declare dso_local %struct.atmel_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @atmel_aes_set_mode(%struct.atmel_aes_dev*, %struct.atmel_aes_reqctx*) #1

declare dso_local i32 @atmel_aes_hw_init(%struct.atmel_aes_dev*) #1

declare dso_local i32 @atmel_aes_complete(%struct.atmel_aes_dev*, i32) #1

declare dso_local i32 @atmel_aes_write_ctrl(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @atmel_aes_dma_start(%struct.atmel_aes_dev*, i32, i32, i64, i32) #1

declare dso_local i32 @atmel_aes_cpu_start(%struct.atmel_aes_dev*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
