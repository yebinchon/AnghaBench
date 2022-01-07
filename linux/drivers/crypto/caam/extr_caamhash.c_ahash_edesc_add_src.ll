; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_ahash_edesc_add_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_ahash_edesc_add_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_hash_ctx = type { i32 }
%struct.ahash_edesc = type { i32, i32, i32, %struct.sec4_sg_entry* }
%struct.sec4_sg_entry = type { i32 }
%struct.ahash_request = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to map S/G table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LDST_SGF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.caam_hash_ctx*, %struct.ahash_edesc*, %struct.ahash_request*, i32, i32, i32, i64)* @ahash_edesc_add_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_edesc_add_src(%struct.caam_hash_ctx* %0, %struct.ahash_edesc* %1, %struct.ahash_request* %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.caam_hash_ctx*, align 8
  %10 = alloca %struct.ahash_edesc*, align 8
  %11 = alloca %struct.ahash_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.sec4_sg_entry*, align 8
  %19 = alloca i32, align 4
  store %struct.caam_hash_ctx* %0, %struct.caam_hash_ctx** %9, align 8
  store %struct.ahash_edesc* %1, %struct.ahash_edesc** %10, align 8
  store %struct.ahash_request* %2, %struct.ahash_request** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %73

25:                                               ; preds = %22, %7
  %26 = load %struct.ahash_edesc*, %struct.ahash_edesc** %10, align 8
  %27 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %26, i32 0, i32 3
  %28 = load %struct.sec4_sg_entry*, %struct.sec4_sg_entry** %27, align 8
  store %struct.sec4_sg_entry* %28, %struct.sec4_sg_entry** %18, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add i32 %29, %30
  %32 = call i32 @pad_sg_nents(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %19, align 4
  %36 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %37 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %15, align 8
  %40 = load %struct.sec4_sg_entry*, %struct.sec4_sg_entry** %18, align 8
  %41 = load i32, i32* %13, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sec4_sg_entry, %struct.sec4_sg_entry* %40, i64 %42
  %44 = call i32 @sg_to_sec4_sg_last(i32 %38, i64 %39, %struct.sec4_sg_entry* %43, i32 0)
  %45 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sec4_sg_entry*, %struct.sec4_sg_entry** %18, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i32 @dma_map_single(i32 %47, %struct.sec4_sg_entry* %48, i32 %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %9, align 8
  %53 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i64 @dma_mapping_error(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %25
  %59 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %9, align 8
  %60 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %90

65:                                               ; preds = %25
  %66 = load i32, i32* %19, align 4
  %67 = load %struct.ahash_edesc*, %struct.ahash_edesc** %10, align 8
  %68 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.ahash_edesc*, %struct.ahash_edesc** %10, align 8
  %71 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* @LDST_SGF, align 8
  store i64 %72, i64* %17, align 8
  br label %78

73:                                               ; preds = %22
  %74 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %75 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sg_dma_address(i32 %76)
  store i32 %77, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %78

78:                                               ; preds = %73, %65
  %79 = load %struct.ahash_edesc*, %struct.ahash_edesc** %10, align 8
  %80 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* %15, align 8
  %86 = add i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = load i64, i64* %17, align 8
  %89 = call i32 @append_seq_in_ptr(i32 %81, i32 %82, i32 %87, i64 %88)
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %78, %58
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @pad_sg_nents(i32) #1

declare dso_local i32 @sg_to_sec4_sg_last(i32, i64, %struct.sec4_sg_entry*, i32) #1

declare dso_local i32 @dma_map_single(i32, %struct.sec4_sg_entry*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @append_seq_in_ptr(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
