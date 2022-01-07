; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_hash_dev = type { i32, %struct.ahash_request* }
%struct.ahash_request = type { i64 }
%struct.img_hash_request_ctx = type { i64 }

@IMG_HASH_DMA_THRESHOLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"process data request(%d bytes) using DMA\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"process data request(%d bytes) using CPU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_hash_dev*)* @img_hash_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_hash_process_data(%struct.img_hash_dev* %0) #0 {
  %2 = alloca %struct.img_hash_dev*, align 8
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.img_hash_request_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.img_hash_dev* %0, %struct.img_hash_dev** %2, align 8
  %6 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %7 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %6, i32 0, i32 1
  %8 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  store %struct.ahash_request* %8, %struct.ahash_request** %3, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.img_hash_request_ctx* %10, %struct.img_hash_request_ctx** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %14 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IMG_HASH_DMA_THRESHOLD, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %20 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %23 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %27 = call i32 @img_hash_write_via_dma(%struct.img_hash_dev* %26)
  store i32 %27, i32* %5, align 4
  br label %38

28:                                               ; preds = %1
  %29 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %30 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %33 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %37 = call i32 @img_hash_write_via_cpu(%struct.img_hash_dev* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %28, %18
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @img_hash_write_via_dma(%struct.img_hash_dev*) #1

declare dso_local i32 @img_hash_write_via_cpu(%struct.img_hash_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
