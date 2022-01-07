; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cqdma_pchan = type { i32 }
%struct.mtk_cqdma_vdesc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"cqdma wait transaction timeout\0A\00", align 1
@MTK_CQDMA_RESET = common dso_local global i32 0, align 4
@MTK_CQDMA_WARM_RST_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cqdma warm reset timeout\0A\00", align 1
@MTK_CQDMA_SRC = common dso_local global i32 0, align 4
@MTK_CQDMA_ADDR_LIMIT = common dso_local global i32 0, align 4
@MTK_CQDMA_SRC2 = common dso_local global i32 0, align 4
@MTK_CQDMA_DST = common dso_local global i32 0, align 4
@MTK_CQDMA_DST2 = common dso_local global i32 0, align 4
@MTK_CQDMA_LEN1 = common dso_local global i32 0, align 4
@MTK_CQDMA_EN = common dso_local global i32 0, align 4
@MTK_CQDMA_EN_BIT = common dso_local global i32 0, align 4
@MTK_CQDMA_ADDR2_SHFIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_vdesc*)* @mtk_cqdma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_cqdma_start(%struct.mtk_cqdma_pchan* %0, %struct.mtk_cqdma_vdesc* %1) #0 {
  %3 = alloca %struct.mtk_cqdma_pchan*, align 8
  %4 = alloca %struct.mtk_cqdma_vdesc*, align 8
  store %struct.mtk_cqdma_pchan* %0, %struct.mtk_cqdma_pchan** %3, align 8
  store %struct.mtk_cqdma_vdesc* %1, %struct.mtk_cqdma_vdesc** %4, align 8
  %5 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %6 = call i64 @mtk_cqdma_poll_engine_done(%struct.mtk_cqdma_pchan* %5, i32 1)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @to_cqdma_dev(i32 %11)
  %13 = call i32 @cqdma2dev(i32 %12)
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %8, %2
  %16 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %17 = load i32, i32* @MTK_CQDMA_RESET, align 4
  %18 = load i32, i32* @MTK_CQDMA_WARM_RST_BIT, align 4
  %19 = call i32 @mtk_dma_set(%struct.mtk_cqdma_pchan* %16, i32 %17, i32 %18)
  %20 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %21 = call i64 @mtk_cqdma_poll_engine_done(%struct.mtk_cqdma_pchan* %20, i32 1)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @to_cqdma_dev(i32 %26)
  %28 = call i32 @cqdma2dev(i32 %27)
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %23, %15
  %31 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %32 = load i32, i32* @MTK_CQDMA_SRC, align 4
  %33 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MTK_CQDMA_ADDR_LIMIT, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @mtk_dma_set(%struct.mtk_cqdma_pchan* %31, i32 %32, i32 %37)
  %39 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %40 = load i32, i32* @MTK_CQDMA_SRC2, align 4
  %41 = call i32 @mtk_dma_set(%struct.mtk_cqdma_pchan* %39, i32 %40, i32 0)
  %42 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %43 = load i32, i32* @MTK_CQDMA_DST, align 4
  %44 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %4, align 8
  %45 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MTK_CQDMA_ADDR_LIMIT, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @mtk_dma_set(%struct.mtk_cqdma_pchan* %42, i32 %43, i32 %48)
  %50 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %51 = load i32, i32* @MTK_CQDMA_DST2, align 4
  %52 = call i32 @mtk_dma_set(%struct.mtk_cqdma_pchan* %50, i32 %51, i32 0)
  %53 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %54 = load i32, i32* @MTK_CQDMA_LEN1, align 4
  %55 = load %struct.mtk_cqdma_vdesc*, %struct.mtk_cqdma_vdesc** %4, align 8
  %56 = getelementptr inbounds %struct.mtk_cqdma_vdesc, %struct.mtk_cqdma_vdesc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mtk_dma_set(%struct.mtk_cqdma_pchan* %53, i32 %54, i32 %57)
  %59 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %3, align 8
  %60 = load i32, i32* @MTK_CQDMA_EN, align 4
  %61 = load i32, i32* @MTK_CQDMA_EN_BIT, align 4
  %62 = call i32 @mtk_dma_set(%struct.mtk_cqdma_pchan* %59, i32 %60, i32 %61)
  ret void
}

declare dso_local i64 @mtk_cqdma_poll_engine_done(%struct.mtk_cqdma_pchan*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cqdma2dev(i32) #1

declare dso_local i32 @to_cqdma_dev(i32) #1

declare dso_local i32 @mtk_dma_set(%struct.mtk_cqdma_pchan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
