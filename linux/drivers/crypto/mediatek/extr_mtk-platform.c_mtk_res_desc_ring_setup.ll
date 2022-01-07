; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_res_desc_ring_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_res_desc_ring_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_sys_cap = type { i32 }

@MTK_CNT_RST = common dso_local global i32 0, align 4
@MTK_DESC_RING_SZ = common dso_local global i32 0, align 4
@MTK_RDR_STAT_CLR = common dso_local global i32 0, align 4
@MTK_RDR_PROC_THRESH = common dso_local global i32 0, align 4
@MTK_RDR_PROC_MODE = common dso_local global i32 0, align 4
@MTK_DESC_SZ = common dso_local global i32 0, align 4
@MTK_DESC_OFF = common dso_local global i32 0, align 4
@MTK_DESC_OVL_IRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_cryp*, i32, %struct.mtk_sys_cap*)* @mtk_res_desc_ring_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_res_desc_ring_setup(%struct.mtk_cryp* %0, i32 %1, %struct.mtk_sys_cap* %2) #0 {
  %4 = alloca %struct.mtk_cryp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_sys_cap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mtk_sys_cap* %2, %struct.mtk_sys_cap** %6, align 8
  store i32 2, i32* %7, align 4
  %9 = load %struct.mtk_sys_cap*, %struct.mtk_sys_cap** %6, align 8
  %10 = getelementptr inbounds %struct.mtk_sys_cap, %struct.mtk_sys_cap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MTK_RES_FIFO_SIZE(i32 %11)
  %13 = shl i32 1, %12
  %14 = load i32, i32* %7, align 4
  %15 = sdiv i32 %13, %14
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @RDR_CFG(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  %24 = load i32, i32* @MTK_CNT_RST, align 4
  %25 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @RDR_PREP_COUNT(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @writel(i32 %24, i64 %30)
  %32 = load i32, i32* @MTK_CNT_RST, align 4
  %33 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @RDR_PROC_COUNT(i32 %36)
  %38 = add nsw i64 %35, %37
  %39 = call i32 @writel(i32 %32, i64 %38)
  %40 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @RDR_PREP_PNTR(i32 %43)
  %45 = add nsw i64 %42, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  %47 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %48 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @RDR_PROC_PNTR(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @writel(i32 0, i64 %52)
  %54 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %55 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @RDR_DMA_CFG(i32 %57)
  %59 = add nsw i64 %56, %58
  %60 = call i32 @writel(i32 0, i64 %59)
  %61 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %62 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @RDR_BASE_ADDR_HI(i32 %64)
  %66 = add nsw i64 %63, %65
  %67 = call i32 @writel(i32 0, i64 %66)
  %68 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %69 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %70, i64 %72
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %78 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @RDR_BASE_ADDR_LO(i32 %80)
  %82 = add nsw i64 %79, %81
  %83 = call i32 @writel(i32 %76, i64 %82)
  %84 = load i32, i32* @MTK_DESC_RING_SZ, align 4
  %85 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %86 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @RDR_RING_SIZE(i32 %88)
  %90 = add nsw i64 %87, %89
  %91 = call i32 @writel(i32 %84, i64 %90)
  %92 = load i32, i32* @MTK_RDR_STAT_CLR, align 4
  %93 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %94 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i64 @RDR_STAT(i32 %96)
  %98 = add nsw i64 %95, %97
  %99 = call i32 @writel(i32 %92, i64 %98)
  %100 = load i32, i32* @MTK_RDR_PROC_THRESH, align 4
  %101 = load i32, i32* @MTK_RDR_PROC_MODE, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %104 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @RDR_THRESH(i32 %106)
  %108 = add nsw i64 %105, %107
  %109 = call i32 @writel(i32 %102, i64 %108)
  %110 = load i32, i32* @MTK_DESC_SZ, align 4
  %111 = call i32 @MTK_DESC_SIZE(i32 %110)
  %112 = load i32, i32* @MTK_DESC_OFF, align 4
  %113 = call i32 @MTK_DESC_OFFSET(i32 %112)
  %114 = or i32 %111, %113
  %115 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %116 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i64 @RDR_DESC_SIZE(i32 %118)
  %120 = add nsw i64 %117, %119
  %121 = call i32 @writel(i32 %114, i64 %120)
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @MTK_DESC_OFF, align 4
  %124 = mul nsw i32 %122, %123
  %125 = call i32 @MTK_DESC_FETCH_SIZE(i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %7, align 4
  %128 = mul nsw i32 %126, %127
  %129 = call i32 @MTK_DESC_FETCH_THRESH(i32 %128)
  %130 = or i32 %125, %129
  %131 = load i32, i32* @MTK_DESC_OVL_IRQ_EN, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %134 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i64 @RDR_CFG(i32 %136)
  %138 = add nsw i64 %135, %137
  %139 = call i32 @writel(i32 %132, i64 %138)
  ret void
}

declare dso_local i32 @MTK_RES_FIFO_SIZE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @RDR_CFG(i32) #1

declare dso_local i64 @RDR_PREP_COUNT(i32) #1

declare dso_local i64 @RDR_PROC_COUNT(i32) #1

declare dso_local i64 @RDR_PREP_PNTR(i32) #1

declare dso_local i64 @RDR_PROC_PNTR(i32) #1

declare dso_local i64 @RDR_DMA_CFG(i32) #1

declare dso_local i64 @RDR_BASE_ADDR_HI(i32) #1

declare dso_local i64 @RDR_BASE_ADDR_LO(i32) #1

declare dso_local i64 @RDR_RING_SIZE(i32) #1

declare dso_local i64 @RDR_STAT(i32) #1

declare dso_local i64 @RDR_THRESH(i32) #1

declare dso_local i32 @MTK_DESC_SIZE(i32) #1

declare dso_local i32 @MTK_DESC_OFFSET(i32) #1

declare dso_local i64 @RDR_DESC_SIZE(i32) #1

declare dso_local i32 @MTK_DESC_FETCH_SIZE(i32) #1

declare dso_local i32 @MTK_DESC_FETCH_THRESH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
