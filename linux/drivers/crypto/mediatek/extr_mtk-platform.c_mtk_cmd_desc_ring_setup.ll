; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_cmd_desc_ring_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_cmd_desc_ring_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_sys_cap = type { i32 }

@MTK_DESC_SZ = common dso_local global i32 0, align 4
@MTK_CNT_RST = common dso_local global i32 0, align 4
@MTK_DESC_RING_SZ = common dso_local global i32 0, align 4
@MTK_CDR_STAT_CLR = common dso_local global i32 0, align 4
@MTK_DESC_OFF = common dso_local global i32 0, align 4
@MTK_DESC_ATP_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_cryp*, i32, %struct.mtk_sys_cap*)* @mtk_cmd_desc_ring_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_cmd_desc_ring_setup(%struct.mtk_cryp* %0, i32 %1, %struct.mtk_sys_cap* %2) #0 {
  %4 = alloca %struct.mtk_cryp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_sys_cap*, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mtk_sys_cap* %2, %struct.mtk_sys_cap** %6, align 8
  %8 = load %struct.mtk_sys_cap*, %struct.mtk_sys_cap** %6, align 8
  %9 = getelementptr inbounds %struct.mtk_sys_cap, %struct.mtk_sys_cap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MTK_CMD_FIFO_SIZE(i32 %10)
  %12 = shl i32 1, %11
  %13 = load i32, i32* @MTK_DESC_SZ, align 4
  %14 = sdiv i32 %12, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @CDR_CFG(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i32 @writel(i32 0, i64 %21)
  %23 = load i32, i32* @MTK_CNT_RST, align 4
  %24 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @CDR_PREP_COUNT(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @writel(i32 %23, i64 %29)
  %31 = load i32, i32* @MTK_CNT_RST, align 4
  %32 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @CDR_PROC_COUNT(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = call i32 @writel(i32 %31, i64 %37)
  %39 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %40 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @CDR_PREP_PNTR(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @writel(i32 0, i64 %44)
  %46 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @CDR_PROC_PNTR(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = call i32 @writel(i32 0, i64 %51)
  %53 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %54 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @CDR_DMA_CFG(i32 %56)
  %58 = add nsw i64 %55, %57
  %59 = call i32 @writel(i32 0, i64 %58)
  %60 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %61 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @CDR_BASE_ADDR_HI(i32 %63)
  %65 = add nsw i64 %62, %64
  %66 = call i32 @writel(i32 0, i64 %65)
  %67 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %68 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %77 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @CDR_BASE_ADDR_LO(i32 %79)
  %81 = add nsw i64 %78, %80
  %82 = call i32 @writel(i32 %75, i64 %81)
  %83 = load i32, i32* @MTK_DESC_RING_SZ, align 4
  %84 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %85 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @CDR_RING_SIZE(i32 %87)
  %89 = add nsw i64 %86, %88
  %90 = call i32 @writel(i32 %83, i64 %89)
  %91 = load i32, i32* @MTK_CDR_STAT_CLR, align 4
  %92 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %93 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @CDR_STAT(i32 %95)
  %97 = add nsw i64 %94, %96
  %98 = call i32 @writel(i32 %91, i64 %97)
  %99 = load i32, i32* @MTK_DESC_SZ, align 4
  %100 = call i32 @MTK_DESC_SIZE(i32 %99)
  %101 = load i32, i32* @MTK_DESC_OFF, align 4
  %102 = call i32 @MTK_DESC_OFFSET(i32 %101)
  %103 = or i32 %100, %102
  %104 = load i32, i32* @MTK_DESC_ATP_PRESENT, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %107 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i64 @CDR_DESC_SIZE(i32 %109)
  %111 = add nsw i64 %108, %110
  %112 = call i32 @writel(i32 %105, i64 %111)
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @MTK_DESC_OFF, align 4
  %115 = mul nsw i32 %113, %114
  %116 = call i32 @MTK_DESC_FETCH_SIZE(i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @MTK_DESC_SZ, align 4
  %119 = mul nsw i32 %117, %118
  %120 = call i32 @MTK_DESC_FETCH_THRESH(i32 %119)
  %121 = or i32 %116, %120
  %122 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %123 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i64 @CDR_CFG(i32 %125)
  %127 = add nsw i64 %124, %126
  %128 = call i32 @writel(i32 %121, i64 %127)
  ret void
}

declare dso_local i32 @MTK_CMD_FIFO_SIZE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @CDR_CFG(i32) #1

declare dso_local i64 @CDR_PREP_COUNT(i32) #1

declare dso_local i64 @CDR_PROC_COUNT(i32) #1

declare dso_local i64 @CDR_PREP_PNTR(i32) #1

declare dso_local i64 @CDR_PROC_PNTR(i32) #1

declare dso_local i64 @CDR_DMA_CFG(i32) #1

declare dso_local i64 @CDR_BASE_ADDR_HI(i32) #1

declare dso_local i64 @CDR_BASE_ADDR_LO(i32) #1

declare dso_local i64 @CDR_RING_SIZE(i32) #1

declare dso_local i64 @CDR_STAT(i32) #1

declare dso_local i32 @MTK_DESC_SIZE(i32) #1

declare dso_local i32 @MTK_DESC_OFFSET(i32) #1

declare dso_local i64 @CDR_DESC_SIZE(i32) #1

declare dso_local i32 @MTK_DESC_FETCH_SIZE(i32) #1

declare dso_local i32 @MTK_DESC_FETCH_THRESH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
