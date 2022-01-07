; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_alloc_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_alloc_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_hash_ctx = type { i32, i8*, i64, i8*, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Mapping digest len %zu B at va=%pK for DMA failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Mapped digest %zu B at va=%pK to dma=%pad\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Mapping opad digest %zu B at va=%pK for DMA failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Mapped opad_tmp_keys %zu B at va=%pK to dma=%pad\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_hash_ctx*)* @cc_alloc_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_alloc_ctx(%struct.cc_hash_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_hash_ctx*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.cc_hash_ctx* %0, %struct.cc_hash_ctx** %3, align 8
  %5 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.device* @drvdata_to_dev(i32 %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %18 = call i8* @dma_map_single(%struct.device* %12, i8* %16, i32 8, i32 %17)
  %19 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @dma_mapping_error(%struct.device* %21, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 8, i64 %31)
  br label %72

33:                                               ; preds = %1
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %38, i32 0, i32 3
  %40 = call i32 @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 8, i64 %37, i8** %39)
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %47 = call i8* @dma_map_single(%struct.device* %41, i8* %45, i32 8, i32 %46)
  %48 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @dma_mapping_error(%struct.device* %50, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %33
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 8, i64 %60)
  br label %72

62:                                               ; preds = %33
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %67, i32 0, i32 1
  %69 = call i32 @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 8, i64 %66, i8** %68)
  %70 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  store i32 0, i32* %2, align 4
  br label %77

72:                                               ; preds = %56, %27
  %73 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %74 = call i32 @cc_free_ctx(%struct.cc_hash_ctx* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %62
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, i8**) #1

declare dso_local i32 @cc_free_ctx(%struct.cc_hash_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
