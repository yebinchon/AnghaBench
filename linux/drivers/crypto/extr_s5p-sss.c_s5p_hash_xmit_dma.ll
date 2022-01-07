; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_xmit_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_xmit_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { i32, i32, i32, i32, i32 }
%struct.s5p_hash_reqctx = type { i32, i64, i64, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dma_map_sg error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HASH_FLAGS_DMA_ACTIVE = common dso_local global i32 0, align 4
@HASH_FLAGS_FINAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_aes_dev*, i64, i32)* @s5p_hash_xmit_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_hash_xmit_dma(%struct.s5p_aes_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_aes_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s5p_hash_reqctx*, align 8
  %9 = alloca i32, align 4
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %11 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.s5p_hash_reqctx* @ahash_request_ctx(i32 %12)
  store %struct.s5p_hash_reqctx* %13, %struct.s5p_hash_reqctx** %8, align 8
  %14 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %15 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %18 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %21 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DMA_TO_DEVICE, align 4
  %24 = call i32 @dma_map_sg(i32 %16, i32 %19, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %3
  %28 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %29 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %33 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %78

36:                                               ; preds = %3
  %37 = load i32, i32* @HASH_FLAGS_DMA_ACTIVE, align 4
  %38 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %39 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %38, i32 0, i32 2
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %42 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %45 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %48 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @s5p_hash_write_ctrl(%struct.s5p_aes_dev* %49, i64 %50, i32 %51)
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %55 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %60 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %36
  %66 = load i32, i32* @HASH_FLAGS_FINAL, align 4
  %67 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %68 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %67, i32 0, i32 2
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %36
  %71 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %72 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %73 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @s5p_set_dma_hashdata(%struct.s5p_aes_dev* %71, i32 %74)
  %76 = load i32, i32* @EINPROGRESS, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %70, %27
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.s5p_hash_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @s5p_hash_write_ctrl(%struct.s5p_aes_dev*, i64, i32) #1

declare dso_local i32 @s5p_set_dma_hashdata(%struct.s5p_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
