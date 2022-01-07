; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_rng_create_job_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamrng.c_rng_create_job_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_rng_ctx = type { i32, i32, %struct.buf_data*, %struct.device* }
%struct.buf_data = type { i32, i32, i32* }
%struct.device = type { i32 }

@HDR_SHARE_DEFER = common dso_local global i32 0, align 4
@HDR_REVERSE = common dso_local global i32 0, align 4
@RN_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unable to map dst\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"rng job desc@: \00", align 1
@DUMP_PREFIX_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.caam_rng_ctx*, i32)* @rng_create_job_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rng_create_job_desc(%struct.caam_rng_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.caam_rng_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.buf_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.caam_rng_ctx* %0, %struct.caam_rng_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %10, i32 0, i32 3
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %13, i32 0, i32 2
  %15 = load %struct.buf_data*, %struct.buf_data** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %15, i64 %17
  store %struct.buf_data* %18, %struct.buf_data** %7, align 8
  %19 = load %struct.buf_data*, %struct.buf_data** %7, align 8
  %20 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @desc_len(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.caam_rng_ctx*, %struct.caam_rng_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.caam_rng_ctx, %struct.caam_rng_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @HDR_SHARE_DEFER, align 4
  %32 = load i32, i32* @HDR_REVERSE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @init_job_desc_shared(i32* %26, i32 %29, i32 %30, i32 %33)
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.buf_data*, %struct.buf_data** %7, align 8
  %37 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RN_BUF_SIZE, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_map_single(%struct.device* %35, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.buf_data*, %struct.buf_data** %7, align 8
  %43 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.buf_data*, %struct.buf_data** %7, align 8
  %46 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @dma_mapping_error(%struct.device* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %2
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %67

55:                                               ; preds = %2
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.buf_data*, %struct.buf_data** %7, align 8
  %58 = getelementptr inbounds %struct.buf_data, %struct.buf_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RN_BUF_SIZE, align 4
  %61 = call i32 @append_seq_out_ptr_intlen(i32* %56, i32 %59, i32 %60, i32 0)
  %62 = load i32, i32* @DUMP_PREFIX_ADDRESS, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @desc_bytes(i32* %64)
  %66 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 16, i32 4, i32* %63, i32 %65, i32 1)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %55, %50
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @desc_len(i32) #1

declare dso_local i32 @init_job_desc_shared(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @append_seq_out_ptr_intlen(i32*, i32, i32, i32) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @desc_bytes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
