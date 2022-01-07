; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_xmit_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_xmit_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32 }
%struct.atmel_sha_reqctx = type { i32, i32, i64, i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"dma %zu bytes error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SHA_FLAGS_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*, %struct.atmel_sha_reqctx*, i64, i32)* @atmel_sha_xmit_dma_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_xmit_dma_map(%struct.atmel_sha_dev* %0, %struct.atmel_sha_reqctx* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_sha_dev*, align 8
  %7 = alloca %struct.atmel_sha_reqctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %6, align 8
  store %struct.atmel_sha_reqctx* %1, %struct.atmel_sha_reqctx** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %11 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %14 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %17 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %20 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load i32, i32* @DMA_TO_DEVICE, align 4
  %24 = call i32 @dma_map_single(i32 %12, i32 %15, i64 %22, i32 %23)
  %25 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %26 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %28 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %31 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @dma_mapping_error(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %4
  %36 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %37 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %40 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %43 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %47, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %65

51:                                               ; preds = %4
  %52 = load i32, i32* @SHA_FLAGS_SG, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %55 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %59 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %7, align 8
  %60 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @atmel_sha_xmit_start(%struct.atmel_sha_dev* %58, i32 %61, i64 %62, i32 0, i32 0, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %51, %35
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @atmel_sha_complete(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @atmel_sha_xmit_start(%struct.atmel_sha_dev*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
