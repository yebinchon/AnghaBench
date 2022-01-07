; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_dma_check_aligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_dma_check_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { %struct.ahash_request*, %struct.atmel_sha_dma }
%struct.ahash_request = type { i32 }
%struct.atmel_sha_dma = type { i32, i64 }
%struct.scatterlist = type { i64, i64 }
%struct.atmel_sha_reqctx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*, %struct.scatterlist*, i64)* @atmel_sha_dma_check_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_dma_check_aligned(%struct.atmel_sha_dev* %0, %struct.scatterlist* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_sha_dev*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.atmel_sha_dma*, align 8
  %9 = alloca %struct.ahash_request*, align 8
  %10 = alloca %struct.atmel_sha_reqctx*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %5, align 8
  %14 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %13, i32 0, i32 1
  store %struct.atmel_sha_dma* %14, %struct.atmel_sha_dma** %8, align 8
  %15 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %5, align 8
  %16 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %15, i32 0, i32 0
  %17 = load %struct.ahash_request*, %struct.ahash_request** %16, align 8
  store %struct.ahash_request* %17, %struct.ahash_request** %9, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %19 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %18)
  store %struct.atmel_sha_reqctx* %19, %struct.atmel_sha_reqctx** %10, align 8
  %20 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %10, align 8
  %21 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %67, %3
  %24 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %25 = icmp ne %struct.scatterlist* %24, null
  br i1 %25, label %26, label %72

26:                                               ; preds = %23
  %27 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %28 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @IS_ALIGNED(i64 %29, i64 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %73

33:                                               ; preds = %26
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ule i64 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %8, align 8
  %43 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %45 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.atmel_sha_dma*, %struct.atmel_sha_dma** %8, align 8
  %48 = getelementptr inbounds %struct.atmel_sha_dma, %struct.atmel_sha_dma* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @ALIGN(i64 %49, i32 4)
  %51 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %52 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  store i32 1, i32* %4, align 4
  br label %73

53:                                               ; preds = %33
  %54 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %55 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @IS_ALIGNED(i64 %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %73

61:                                               ; preds = %53
  %62 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %63 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %61
  %68 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %69 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %68)
  store %struct.scatterlist* %69, %struct.scatterlist** %6, align 8
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %23

72:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %60, %39, %32
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
