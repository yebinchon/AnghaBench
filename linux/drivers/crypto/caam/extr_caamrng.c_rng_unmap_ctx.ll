; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_rng_unmap_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_rng_unmap_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_rng_ctx = type { i32*, i32, i32, %struct.device* }
%struct.device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.caam_rng_ctx*)* @rng_unmap_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rng_unmap_ctx(%struct.caam_rng_ctx* %0) #0 {
  %2 = alloca %struct.caam_rng_ctx*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.caam_rng_ctx* %0, %struct.caam_rng_ctx** %2, align 8
  %4 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %4, i32 0, i32 3
  %6 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @desc_bytes(i32 %18)
  %20 = load i32, i32* @DMA_TO_DEVICE, align 4
  %21 = call i32 @dma_unmap_single(%struct.device* %12, i32 %15, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i32 @rng_unmap_buf(%struct.device* %23, i32* %27)
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = call i32 @rng_unmap_buf(%struct.device* %29, i32* %33)
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @desc_bytes(i32) #1

declare dso_local i32 @rng_unmap_buf(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
