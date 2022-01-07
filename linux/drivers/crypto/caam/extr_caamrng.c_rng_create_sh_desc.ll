; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_rng_create_sh_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_rng_create_sh_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_rng_ctx = type { i32, i32*, %struct.device* }
%struct.device = type { i32 }

@HDR_SHARE_SERIAL = common dso_local global i32 0, align 4
@OP_ALG_ALGSEL_RNG = common dso_local global i32 0, align 4
@OP_TYPE_CLASS1_ALG = common dso_local global i32 0, align 4
@RN_BUF_SIZE = common dso_local global i32 0, align 4
@FIFOST_TYPE_RNGSTORE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to map shared descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"rng shdesc@: \00", align 1
@DUMP_PREFIX_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.caam_rng_ctx*)* @rng_create_sh_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rng_create_sh_desc(%struct.caam_rng_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.caam_rng_ctx*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  store %struct.caam_rng_ctx* %0, %struct.caam_rng_ctx** %3, align 8
  %6 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @HDR_SHARE_SERIAL, align 4
  %14 = call i32 @init_sh_desc(i32* %12, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @OP_ALG_ALGSEL_RNG, align 4
  %17 = load i32, i32* @OP_TYPE_CLASS1_ALG, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @append_operation(i32* %15, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @RN_BUF_SIZE, align 4
  %22 = load i32, i32* @FIFOST_TYPE_RNGSTORE, align 4
  %23 = call i32 @append_seq_fifo_store(i32* %20, i32 %21, i32 %22)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @desc_bytes(i32* %26)
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_map_single(%struct.device* %24, i32* %25, i32 %27, i32 %28)
  %30 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @dma_mapping_error(%struct.device* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %49

43:                                               ; preds = %1
  %44 = load i32, i32* @DUMP_PREFIX_ADDRESS, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @desc_bytes(i32* %46)
  %48 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 16, i32 4, i32* %45, i32 %47, i32 1)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @init_sh_desc(i32*, i32) #1

declare dso_local i32 @append_operation(i32*, i32) #1

declare dso_local i32 @append_seq_fifo_store(i32*, i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @desc_bytes(i32*) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
