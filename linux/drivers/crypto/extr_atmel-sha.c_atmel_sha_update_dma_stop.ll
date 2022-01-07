; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_update_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_update_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32 }
%struct.atmel_sha_reqctx = type { i32, i64, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@SHA_FLAGS_SG = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SHA_FLAGS_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_update_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_update_dma_stop(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca %struct.atmel_sha_dev*, align 8
  %3 = alloca %struct.atmel_sha_reqctx*, align 8
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %2, align 8
  %4 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %5 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(i32 %6)
  store %struct.atmel_sha_reqctx* %7, %struct.atmel_sha_reqctx** %3, align 8
  %8 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %9 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SHA_FLAGS_SG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %71

14:                                               ; preds = %1
  %15 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %16 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %18, i32 0, i32 5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* @DMA_TO_DEVICE, align 4
  %22 = call i32 @dma_unmap_sg(i32 %17, %struct.TYPE_4__* %20, i32 1, i32 %21)
  %23 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %24 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %14
  %33 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %34 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %33, i32 0, i32 5
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call %struct.TYPE_4__* @sg_next(%struct.TYPE_4__* %35)
  %37 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %38 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %37, i32 0, i32 5
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %40 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %39, i32 0, i32 5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %45 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %32
  br label %47

47:                                               ; preds = %46, %14
  %48 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %49 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SHA_FLAGS_PAD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %56 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %59 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %62 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %65 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @dma_unmap_single(i32 %57, i32 %60, i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %54, %47
  br label %87

71:                                               ; preds = %1
  %72 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %73 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %76 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %79 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %82 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load i32, i32* @DMA_TO_DEVICE, align 4
  %86 = call i32 @dma_unmap_single(i32 %74, i32 %77, i64 %84, i32 %85)
  br label %87

87:                                               ; preds = %71, %70
  ret i32 0
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @sg_next(%struct.TYPE_4__*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
