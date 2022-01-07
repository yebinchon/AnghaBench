; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcp = type { i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dcp_dma_desc* }
%struct.dcp_dma_desc = type { i32 }
%struct.dcp_async_ctx = type { i32 }

@global_sdcp = common dso_local global %struct.dcp* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Channel %i timeout (DCP_STAT=0x%08x)\0A\00", align 1
@MXS_DCP_STAT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Channel %i error (CH_STAT=0x%08x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcp_async_ctx*)* @mxs_dcp_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dcp_start_dma(%struct.dcp_async_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dcp_async_ctx*, align 8
  %4 = alloca %struct.dcp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dcp_dma_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.dcp_async_ctx* %0, %struct.dcp_async_ctx** %3, align 8
  %10 = load %struct.dcp*, %struct.dcp** @global_sdcp, align 8
  store %struct.dcp* %10, %struct.dcp** %4, align 8
  %11 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.dcp*, %struct.dcp** %4, align 8
  %15 = getelementptr inbounds %struct.dcp, %struct.dcp* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %17, align 8
  %19 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dcp_dma_desc, %struct.dcp_dma_desc* %18, i64 %22
  store %struct.dcp_dma_desc* %23, %struct.dcp_dma_desc** %8, align 8
  %24 = load %struct.dcp*, %struct.dcp** %4, align 8
  %25 = getelementptr inbounds %struct.dcp, %struct.dcp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dcp_dma_desc*, %struct.dcp_dma_desc** %8, align 8
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_map_single(i32 %26, %struct.dcp_dma_desc* %27, i32 4, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.dcp*, %struct.dcp** %4, align 8
  %31 = getelementptr inbounds %struct.dcp, %struct.dcp* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @reinit_completion(i32* %35)
  %37 = load %struct.dcp*, %struct.dcp** %4, align 8
  %38 = getelementptr inbounds %struct.dcp, %struct.dcp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @MXS_DCP_CH_N_STAT_CLR(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = call i32 @writel(i32 -1, i64 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.dcp*, %struct.dcp** %4, align 8
  %46 = getelementptr inbounds %struct.dcp, %struct.dcp* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @MXS_DCP_CH_N_CMDPTR(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @writel(i32 %44, i64 %50)
  %52 = load %struct.dcp*, %struct.dcp** %4, align 8
  %53 = getelementptr inbounds %struct.dcp, %struct.dcp* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @MXS_DCP_CH_N_SEMA(i32 %55)
  %57 = add nsw i64 %54, %56
  %58 = call i32 @writel(i32 1, i64 %57)
  %59 = load %struct.dcp*, %struct.dcp** %4, align 8
  %60 = getelementptr inbounds %struct.dcp, %struct.dcp* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @msecs_to_jiffies(i32 1000)
  %66 = call i64 @wait_for_completion_timeout(i32* %64, i32 %65)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %1
  %70 = load %struct.dcp*, %struct.dcp** %4, align 8
  %71 = getelementptr inbounds %struct.dcp, %struct.dcp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.dcp*, %struct.dcp** %4, align 8
  %75 = getelementptr inbounds %struct.dcp, %struct.dcp* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MXS_DCP_STAT, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl(i64 %78)
  %80 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %79)
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %110

83:                                               ; preds = %1
  %84 = load %struct.dcp*, %struct.dcp** %4, align 8
  %85 = getelementptr inbounds %struct.dcp, %struct.dcp* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @MXS_DCP_CH_N_STAT(i32 %87)
  %89 = add nsw i64 %86, %88
  %90 = call i32 @readl(i64 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, 255
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %83
  %95 = load %struct.dcp*, %struct.dcp** %4, align 8
  %96 = getelementptr inbounds %struct.dcp, %struct.dcp* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %110

103:                                              ; preds = %83
  %104 = load %struct.dcp*, %struct.dcp** %4, align 8
  %105 = getelementptr inbounds %struct.dcp, %struct.dcp* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @DMA_TO_DEVICE, align 4
  %109 = call i32 @dma_unmap_single(i32 %106, i32 %107, i32 4, i32 %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %103, %94, %69
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @dma_map_single(i32, %struct.dcp_dma_desc*, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MXS_DCP_CH_N_STAT_CLR(i32) #1

declare dso_local i64 @MXS_DCP_CH_N_CMDPTR(i32) #1

declare dso_local i64 @MXS_DCP_CH_N_SEMA(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @MXS_DCP_CH_N_STAT(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
