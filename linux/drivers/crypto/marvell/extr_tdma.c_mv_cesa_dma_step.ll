; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_req = type { %struct.TYPE_4__, %struct.mv_cesa_engine* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mv_cesa_engine = type { i64 }

@CESA_SA_CFG = common dso_local global i64 0, align 8
@CESA_SA_INT_ACC0_IDMA_DONE = common dso_local global i32 0, align 4
@CESA_TDMA_DST_BURST_128B = common dso_local global i32 0, align 4
@CESA_TDMA_SRC_BURST_128B = common dso_local global i32 0, align 4
@CESA_TDMA_NO_BYTE_SWAP = common dso_local global i32 0, align 4
@CESA_TDMA_EN = common dso_local global i32 0, align 4
@CESA_TDMA_CONTROL = common dso_local global i64 0, align 8
@CESA_SA_CFG_ACT_CH0_IDMA = common dso_local global i32 0, align 4
@CESA_SA_CFG_MULTI_PKT = common dso_local global i32 0, align 4
@CESA_SA_CFG_CH0_W_IDMA = common dso_local global i32 0, align 4
@CESA_SA_CFG_PARA_DIS = common dso_local global i32 0, align 4
@CESA_TDMA_NEXT_ADDR = common dso_local global i64 0, align 8
@CESA_SA_CMD = common dso_local global i64 0, align 8
@CESA_SA_CMD_EN_CESA_SA_ACCL0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv_cesa_dma_step(%struct.mv_cesa_req* %0) #0 {
  %2 = alloca %struct.mv_cesa_req*, align 8
  %3 = alloca %struct.mv_cesa_engine*, align 8
  store %struct.mv_cesa_req* %0, %struct.mv_cesa_req** %2, align 8
  %4 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %2, align 8
  %5 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %4, i32 0, i32 1
  %6 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  store %struct.mv_cesa_engine* %6, %struct.mv_cesa_engine** %3, align 8
  %7 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %8 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CESA_SA_CFG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel_relaxed(i32 0, i64 %11)
  %13 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %14 = load i32, i32* @CESA_SA_INT_ACC0_IDMA_DONE, align 4
  %15 = call i32 @mv_cesa_set_int_mask(%struct.mv_cesa_engine* %13, i32 %14)
  %16 = load i32, i32* @CESA_TDMA_DST_BURST_128B, align 4
  %17 = load i32, i32* @CESA_TDMA_SRC_BURST_128B, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CESA_TDMA_NO_BYTE_SWAP, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CESA_TDMA_EN, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %24 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CESA_TDMA_CONTROL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i32 %22, i64 %27)
  %29 = load i32, i32* @CESA_SA_CFG_ACT_CH0_IDMA, align 4
  %30 = load i32, i32* @CESA_SA_CFG_MULTI_PKT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CESA_SA_CFG_CH0_W_IDMA, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CESA_SA_CFG_PARA_DIS, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %37 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CESA_SA_CFG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel_relaxed(i32 %35, i64 %40)
  %42 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %2, align 8
  %43 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %49 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CESA_TDMA_NEXT_ADDR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel_relaxed(i32 %47, i64 %52)
  %54 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %55 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CESA_SA_CMD, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  %60 = load i32, i32* @CESA_SA_CMD_EN_CESA_SA_ACCL0, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load i32, i32* @CESA_SA_CMD_EN_CESA_SA_ACCL0, align 4
  %64 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %65 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CESA_SA_CMD, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @mv_cesa_set_int_mask(%struct.mv_cesa_engine*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
