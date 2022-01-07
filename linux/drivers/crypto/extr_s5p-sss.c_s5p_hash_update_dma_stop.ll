; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_update_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_update_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { i32, i32, i32 }
%struct.s5p_hash_reqctx = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@HASH_FLAGS_DMA_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_aes_dev*)* @s5p_hash_update_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_hash_update_dma_stop(%struct.s5p_aes_dev* %0) #0 {
  %2 = alloca %struct.s5p_aes_dev*, align 8
  %3 = alloca %struct.s5p_hash_reqctx*, align 8
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %2, align 8
  %4 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %5 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.s5p_hash_reqctx* @ahash_request_ctx(i32 %6)
  store %struct.s5p_hash_reqctx* %7, %struct.s5p_hash_reqctx** %3, align 8
  %8 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %9 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %3, align 8
  %12 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %3, align 8
  %15 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = call i32 @dma_unmap_sg(i32 %10, i32 %13, i32 %16, i32 %17)
  %19 = load i32, i32* @HASH_FLAGS_DMA_ACTIVE, align 4
  %20 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %21 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  ret void
}

declare dso_local %struct.s5p_hash_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
