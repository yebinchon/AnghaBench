; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_final_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_final_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i32, i32 }

@ATMEL_SHA_DMA_THRESHOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"final_req: err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_final_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_final_req(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca %struct.atmel_sha_dev*, align 8
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.atmel_sha_reqctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %2, align 8
  %7 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %8 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %7, i32 0, i32 1
  %9 = load %struct.ahash_request*, %struct.ahash_request** %8, align 8
  store %struct.ahash_request* %9, %struct.ahash_request** %3, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %10)
  store %struct.atmel_sha_reqctx* %11, %struct.atmel_sha_reqctx** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %13 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATMEL_SHA_DMA_THRESHOLD, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %19 = call i32 @atmel_sha_fill_padding(%struct.atmel_sha_reqctx* %18, i32 0)
  %20 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %21 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %24 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %26 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @atmel_sha_xmit_dma_map(%struct.atmel_sha_dev* %25, %struct.atmel_sha_reqctx* %26, i32 %27, i32 1)
  store i32 %28, i32* %5, align 4
  br label %43

29:                                               ; preds = %1
  %30 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %31 = call i32 @atmel_sha_fill_padding(%struct.atmel_sha_reqctx* %30, i32 0)
  %32 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %36 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %38 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %39 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @atmel_sha_xmit_cpu(%struct.atmel_sha_dev* %37, i32 %40, i32 %41, i32 1)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %29, %17
  %44 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %45 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_fill_padding(%struct.atmel_sha_reqctx*, i32) #1

declare dso_local i32 @atmel_sha_xmit_dma_map(%struct.atmel_sha_dev*, %struct.atmel_sha_reqctx*, i32, i32) #1

declare dso_local i32 @atmel_sha_xmit_cpu(%struct.atmel_sha_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
