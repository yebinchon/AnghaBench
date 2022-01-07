; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.sahara_ctx*, i32, i32 }
%struct.sahara_ctx = type { i32 }
%struct.ablkcipher_request = type { i32, i32, i32, i32 }
%struct.sahara_aes_reqctx = type { i32 }

@dev_ptr = common dso_local global %struct.sahara_dev* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"dispatch request (nbytes=%d, src=%p, dst=%p)\0A\00", align 1
@FLAGS_MODE_MASK = common dso_local global i32 0, align 4
@FLAGS_CBC = common dso_local global i32 0, align 4
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SAHARA_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"AES timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @sahara_aes_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_aes_process(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.sahara_dev*, align 8
  %5 = alloca %struct.sahara_ctx*, align 8
  %6 = alloca %struct.sahara_aes_reqctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  %9 = load %struct.sahara_dev*, %struct.sahara_dev** @dev_ptr, align 8
  store %struct.sahara_dev* %9, %struct.sahara_dev** %4, align 8
  %10 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %11 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %14 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %17 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %20 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  %23 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %24 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %27 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %29 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %32 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %34 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %37 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %39 = call %struct.sahara_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %38)
  store %struct.sahara_aes_reqctx* %39, %struct.sahara_aes_reqctx** %6, align 8
  %40 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %41 = call i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %40)
  %42 = call %struct.sahara_ctx* @crypto_ablkcipher_ctx(i32 %41)
  store %struct.sahara_ctx* %42, %struct.sahara_ctx** %5, align 8
  %43 = load i32, i32* @FLAGS_MODE_MASK, align 4
  %44 = load %struct.sahara_aes_reqctx*, %struct.sahara_aes_reqctx** %6, align 8
  %45 = getelementptr inbounds %struct.sahara_aes_reqctx, %struct.sahara_aes_reqctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %49 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FLAGS_MODE_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load %struct.sahara_aes_reqctx*, %struct.sahara_aes_reqctx** %6, align 8
  %55 = getelementptr inbounds %struct.sahara_aes_reqctx, %struct.sahara_aes_reqctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %59 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %61 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FLAGS_CBC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %1
  %67 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %68 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %73 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %76 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @AES_KEYSIZE_128, align 4
  %79 = call i32 @memcpy(i32 %74, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %66, %1
  %81 = load %struct.sahara_ctx*, %struct.sahara_ctx** %5, align 8
  %82 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %83 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %82, i32 0, i32 7
  store %struct.sahara_ctx* %81, %struct.sahara_ctx** %83, align 8
  %84 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %85 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %84, i32 0, i32 6
  %86 = call i32 @reinit_completion(i32* %85)
  %87 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %88 = call i32 @sahara_hw_descriptor_create(%struct.sahara_dev* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %132

94:                                               ; preds = %80
  %95 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %96 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %95, i32 0, i32 6
  %97 = load i32, i32* @SAHARA_TIMEOUT_MS, align 4
  %98 = call i32 @msecs_to_jiffies(i32 %97)
  %99 = call i64 @wait_for_completion_timeout(i32* %96, i32 %98)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %94
  %103 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %104 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @ETIMEDOUT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %132

109:                                              ; preds = %94
  %110 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %111 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %114 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %117 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %120 = call i32 @dma_unmap_sg(i32 %112, i32 %115, i32 %118, i32 %119)
  %121 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %122 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %125 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %128 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @DMA_TO_DEVICE, align 4
  %131 = call i32 @dma_unmap_sg(i32 %123, i32 %126, i32 %129, i32 %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %109, %102, %91
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.sahara_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.sahara_ctx* @crypto_ablkcipher_ctx(i32) #1

declare dso_local i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @sahara_hw_descriptor_create(%struct.sahara_dev*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
