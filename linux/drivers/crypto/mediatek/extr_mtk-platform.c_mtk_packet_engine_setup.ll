; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_packet_engine_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_packet_engine_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i64, i32 }
%struct.mtk_sys_cap = type { i8*, i8*, i8* }

@HIA_VERSION = common dso_local global i64 0, align 8
@HIA_OPTIONS = common dso_local global i64 0, align 8
@EIP97_OPTIONS = common dso_local global i64 0, align 8
@MTK_HIA_SIGNATURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EIP97_MST_CTRL = common dso_local global i64 0, align 8
@HIA_MST_CTRL = common dso_local global i64 0, align 8
@MTK_BURST_SIZE_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to reset DFE and DSE.\0A\00", align 1
@MTK_RING_MAX = common dso_local global i32 0, align 4
@MTK_PE_TK_LOC_AVL = common dso_local global i32 0, align 4
@MTK_PE_PROC_HELD = common dso_local global i32 0, align 4
@MTK_PE_TK_TIMEOUT_EN = common dso_local global i32 0, align 4
@PE_TOKEN_CTRL_STAT = common dso_local global i64 0, align 8
@MTK_AIC_G_CLR = common dso_local global i32 0, align 4
@AIC_G_ACK = common dso_local global i64 0, align 8
@MTK_PE_INPUT_DMA_ERR = common dso_local global i32 0, align 4
@MTK_PE_OUTPUT_DMA_ERR = common dso_local global i32 0, align 4
@MTK_PE_PKT_PORC_ERR = common dso_local global i32 0, align 4
@MTK_PE_PKT_TIMEOUT = common dso_local global i32 0, align 4
@MTK_PE_FATAL_ERR = common dso_local global i32 0, align 4
@MTK_PE_INPUT_DMA_ERR_EN = common dso_local global i32 0, align 4
@MTK_PE_OUTPUT_DMA_ERR_EN = common dso_local global i32 0, align 4
@MTK_PE_PKT_PORC_ERR_EN = common dso_local global i32 0, align 4
@MTK_PE_PKT_TIMEOUT_EN = common dso_local global i32 0, align 4
@MTK_PE_FATAL_ERR_EN = common dso_local global i32 0, align 4
@MTK_PE_INT_OUT_EN = common dso_local global i32 0, align 4
@PE_INTERRUPT_CTRL_STAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*)* @mtk_packet_engine_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_packet_engine_setup(%struct.mtk_cryp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_cryp*, align 8
  %4 = alloca %struct.mtk_sys_cap, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %3, align 8
  %8 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HIA_VERSION, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i8* @readl(i64 %12)
  %14 = getelementptr inbounds %struct.mtk_sys_cap, %struct.mtk_sys_cap* %4, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HIA_OPTIONS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i8* @readl(i64 %19)
  %21 = getelementptr inbounds %struct.mtk_sys_cap, %struct.mtk_sys_cap* %4, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EIP97_OPTIONS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i8* @readl(i64 %26)
  %28 = getelementptr inbounds %struct.mtk_sys_cap, %struct.mtk_sys_cap* %4, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.mtk_sys_cap, %struct.mtk_sys_cap* %4, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i64, i64* @MTK_HIA_SIGNATURE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %140

37:                                               ; preds = %1
  %38 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %39 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EIP97_MST_CTRL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 0, i64 %42)
  %44 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %45 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HIA_MST_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i8* @readl(i64 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @MTK_BURST_SIZE_MSK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = call i32 @MTK_BURST_SIZE(i32 5)
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %60 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HIA_MST_CTRL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %66 = call i32 @mtk_dfe_dse_reset(%struct.mtk_cryp* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %37
  %70 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %71 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %140

75:                                               ; preds = %37
  %76 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %77 = call i32 @mtk_dfe_dse_buf_setup(%struct.mtk_cryp* %76, %struct.mtk_sys_cap* %4)
  %78 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %79 = call i32 @mtk_desc_ring_link(%struct.mtk_cryp* %78, i32 15)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %91, %75
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @MTK_RING_MAX, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @mtk_cmd_desc_ring_setup(%struct.mtk_cryp* %85, i32 %86, %struct.mtk_sys_cap* %4)
  %88 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @mtk_res_desc_ring_setup(%struct.mtk_cryp* %88, i32 %89, %struct.mtk_sys_cap* %4)
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %80

94:                                               ; preds = %80
  %95 = load i32, i32* @MTK_PE_TK_LOC_AVL, align 4
  %96 = load i32, i32* @MTK_PE_PROC_HELD, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @MTK_PE_TK_TIMEOUT_EN, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %101 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PE_TOKEN_CTRL_STAT, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  %106 = load i32, i32* @MTK_AIC_G_CLR, align 4
  %107 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %108 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AIC_G_ACK, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %106, i64 %111)
  %113 = load i32, i32* @MTK_PE_INPUT_DMA_ERR, align 4
  %114 = load i32, i32* @MTK_PE_OUTPUT_DMA_ERR, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @MTK_PE_PKT_PORC_ERR, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @MTK_PE_PKT_TIMEOUT, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @MTK_PE_FATAL_ERR, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @MTK_PE_INPUT_DMA_ERR_EN, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @MTK_PE_OUTPUT_DMA_ERR_EN, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @MTK_PE_PKT_PORC_ERR_EN, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @MTK_PE_PKT_TIMEOUT_EN, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @MTK_PE_FATAL_ERR_EN, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @MTK_PE_INT_OUT_EN, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %135 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PE_INTERRUPT_CTRL_STAT, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %133, i64 %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %94, %69, %34
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @MTK_BURST_SIZE(i32) #1

declare dso_local i32 @mtk_dfe_dse_reset(%struct.mtk_cryp*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mtk_dfe_dse_buf_setup(%struct.mtk_cryp*, %struct.mtk_sys_cap*) #1

declare dso_local i32 @mtk_desc_ring_link(%struct.mtk_cryp*, i32) #1

declare dso_local i32 @mtk_cmd_desc_ring_setup(%struct.mtk_cryp*, i32, %struct.mtk_sys_cap*) #1

declare dso_local i32 @mtk_res_desc_ring_setup(%struct.mtk_cryp*, i32, %struct.mtk_sys_cap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
