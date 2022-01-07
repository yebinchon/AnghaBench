; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_map_seq_out_ptr_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_map_seq_out_ptr_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.caam_hash_state = type { i32, i64, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unable to map ctx\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.device*, %struct.caam_hash_state*, i32)* @map_seq_out_ptr_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_seq_out_ptr_ctx(i32* %0, %struct.device* %1, %struct.caam_hash_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.caam_hash_state*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store %struct.caam_hash_state* %2, %struct.caam_hash_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.caam_hash_state*, %struct.caam_hash_state** %8, align 8
  %12 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load %struct.caam_hash_state*, %struct.caam_hash_state** %8, align 8
  %15 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %19 = call i64 @dma_map_single(%struct.device* %13, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.caam_hash_state*, %struct.caam_hash_state** %8, align 8
  %21 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = load %struct.caam_hash_state*, %struct.caam_hash_state** %8, align 8
  %24 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @dma_mapping_error(%struct.device* %22, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.caam_hash_state*, %struct.caam_hash_state** %8, align 8
  %32 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %42

35:                                               ; preds = %4
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.caam_hash_state*, %struct.caam_hash_state** %8, align 8
  %38 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @append_seq_out_ptr(i32* %36, i64 %39, i32 %40, i32 0)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @append_seq_out_ptr(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
